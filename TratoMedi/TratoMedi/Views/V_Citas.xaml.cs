using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Collections.ObjectModel;
using TratoMedi.Varios;
using System.Net.Http;
using Newtonsoft.Json;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Citas : ContentPage
	{
        ObservableCollection<Cita> v_citas= new ObservableCollection<Cita>();
        Cita v_CitaNotif = new Cita();
        public V_Citas (bool _tiene, Cita _nuevaCita)
		{
			InitializeComponent ();
            for (int i = 0; i < 6; i++)
            {
                v_estados.Add(new Filtro() { v_texto = ((EstadoCita)i).ToString().Replace('_', ' '), v_visible = false });
            }
            stackOver.ItemsSource = v_estados;
            if (_tiene)
            {
                v_CitaNotif = _nuevaCita;
                ToolbarItems.Clear();
                Fn_Notif(_nuevaCita);
            }
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            if(v_CitaNotif.v_estado=="-1")
            {
                Fn_GetCitas();
            }
            Fn_Borrar(null,null);
        }
        protected override void OnDisappearing()
        {
            if(v_CitaNotif.v_estado!="-1")
            {
                v_CitaNotif = new Cita();
            }
            base.OnDisappearing();
        }
        public async void Fn_Notif(Cita _nuevacita)
        {
            await Navigation.PushAsync(new V_NCita(_nuevacita, false));
        }
        public async void Fn_SelectCita(object sender,ItemTappedEventArgs _Args)
        {
            Cita _selec = _Args.Item as Cita;
            await Navigation.PushAsync(new V_NCita(_selec,false));
        }
        public void Ordenar()
        {
            for (int i = 0; i < v_citas.Count; i++)
            {
                v_citas[i].Fn_SetValores();
            }
            IEnumerable<Cita> _temp = v_citas.OrderByDescending(x => x.v_fechaDate);
            v_citas = new ObservableCollection<Cita>(_temp);
            for (int i = 0; i < v_citas.Count; i++)
            {
                v_citas[i].Fn_CAmbioCol(i);
            }
        }
        private async void Fn_GetCitas()
        {
            HttpClient _client = new HttpClient();
            L_Error.IsVisible = true;
            L_Error.Text = "Procesando Información";
            Cita _cita = new Cita(App.v_membresia, "1");
            string _json = JsonConvert.SerializeObject(_cita);
            string _DirEnviar =NombresAux.BASE_URL+ "get_citas.php";
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            try
            {
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    v_citas = JsonConvert.DeserializeObject<ObservableCollection<Cita>>(_respuesta);
                    L_Error.IsVisible = false;
                    Ordenar();
                    App.Fn_GuardarCitas(v_citas);
                    ListaCita.ItemsSource = v_citas;
                    if(v_citas.Count<1)
                    {
                        L_Error.IsVisible = true;
                        L_Error.Text = "No tiene citas";
                    }
                }
            }
            catch (Exception _ex)
            {
                await DisplayAlert("Error", "Se mostrará la ultima información guardada", "Aceptar");
                if (App.v_citas.Count > 0)
                {
                    v_citas = App.v_citas;
                    L_Error.IsVisible = false;
                }
                else
                {
                    L_Error.IsVisible = true;
                    L_Error.Text = "No tiene citas";
                }
                Ordenar();
                ListaCita.ItemsSource = v_citas;
            }
        }
        private async void ListaCita_Refreshing(object sender, EventArgs e)
        {
            var list = (ListView)sender;
            Fn_Borrar(null, null);
            Fn_GetCitas();
            await Task.Delay(100);
            list.IsRefreshing = false;
        }
        #region FILTROOO
        /// <summary>
        /// Lista que el usuario elige cada  vez que le pica
        /// </summary>
        List<string> _filTexto = new List<string>();
        /// <summary>
        /// lista de inidices que eliges
        /// </summary>
        List<int> v_indiceTap = new List<int>();
        /// <summary>
        /// textos que se agregan a la lista visible
        /// </summary>
        ObservableCollection<Filtro> v_estados = new ObservableCollection<Filtro>();
        bool v_visible = false;
        private void Fn_ToolFil(object sender, EventArgs e)
        {
            v_visible = !v_visible;
            stackOver.IsVisible = v_visible;
            ListaCita.IsVisible = !v_visible;
            //L_Error.IsVisible = !v_visible;
            if(!v_visible)
            {
                Fn_Borrar(null,null);
            }
        }
        private async void Fn_Buscar(object sender, EventArgs e)
        {
            ObservableCollection<Cita> _tempCita = new ObservableCollection<Cita>();
            for(int i=0; i< v_citas.Count; i++)
            {
                for(int j=0;j<v_indiceTap.Count;j++)
                {
                    if(  (int.Parse(v_citas[i].v_estado) == v_indiceTap[j] ) && !_tempCita.Contains(v_citas[i]) )
                    {
                        _tempCita.Add(v_citas[i]);
                    }
                }
            }
            v_visible = false;
            stackOver.IsVisible = v_visible;
            ListaCita.IsVisible = !v_visible;
            if(_tempCita.Count<1)
            {
                await DisplayAlert("Aviso", "No se encontraron coincidencias", "Aceptar");
                ListaCita.ItemsSource = v_citas;
            }
            else
            {
                ListaCita.ItemsSource = _tempCita;
            }
        }
        private void Fn_Borrar(object sender, EventArgs e)
        {
            stackOver.ItemsSource = null;
            for (int i = 0; i < v_estados.Count; i++)//prende o apaga la imagen
            {
                v_estados[i].v_visible = false;
            }
            stackOver.ItemsSource = v_estados;
            _filTexto.Clear();
            v_indiceTap.Clear();
            v_visible =false;
            ListaCita.ItemsSource = v_citas;
            stackOver.IsVisible = v_visible;
            ListaCita.IsVisible = !v_visible;
        }
        void Fn_TapFiltro(object sender, ItemTappedEventArgs _Args)
        {
            var list = (ListView)sender;
            list.ItemsSource = null;
            var _valor = _Args.Item as Filtro;
            int _valIndice = -1;
            for (int i = 0; i < v_estados.Count; i++)//prende o apaga la imagen
            {
                if (v_estados[i].v_texto == _valor.v_texto)
                {
                    v_estados[i].v_visible = !v_estados[i].v_visible;
                    _valIndice = i;
                }
            }
            if (!_filTexto.Contains(_valor.v_texto))
            {
                _filTexto.Add(_valor.v_texto);
                v_indiceTap.Add(_valIndice);
            }
            else
            {
                _filTexto.Remove(_valor.v_texto);
                v_indiceTap.Remove(_valIndice);
            }
            list.ItemsSource = v_estados;
        }
        #endregion
    }
}
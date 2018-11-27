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
		public V_Citas ()
		{
			InitializeComponent ();

        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            Fn_GetCitas();
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
            IEnumerable<Cita> _temp = v_citas.OrderBy(x => x.v_fechaDate);
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
            L_Error.Text = "Procesando Informacion";
            Cita _cita = new Cita(App.v_membresia, "1");
            string _json = JsonConvert.SerializeObject(_cita);
            string _DirEnviar = "http://tratoespecial.com/get_citas.php";
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            try
            {
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    v_citas = JsonConvert.DeserializeObject<ObservableCollection<Cita>>(_respuesta);
                    L_Error.IsVisible = false;
                    //Console.WriteLine("cuantos " + v_citas.Count + "json citaa " + _respuesta);
                    Ordenar();
                    App.Fn_GuardarCitas(v_citas);
                    ListaCita.ItemsSource = v_citas;
                }
            }
            catch (HttpRequestException ex)
            {
                await DisplayAlert("Error", ex.Message.ToString(), "Aceptar");
                if (App.v_citas.Count > 0)
                {
                    v_citas = App.v_citas;
                    L_Error.IsVisible = false;
                }
                else
                {
                    L_Error.Text = "Error de Conexion";
                    L_Error.IsVisible = true;
                }
                Ordenar();
                ListaCita.ItemsSource = v_citas;
            }
        }

        private async void ListaCita_Refreshing(object sender, EventArgs e)
        {
            var list = (ListView)sender;
            Fn_GetCitas();
            await Task.Delay(100);
            //cancelar la actualizacion
            list.IsRefreshing = false;
        }
    }
}
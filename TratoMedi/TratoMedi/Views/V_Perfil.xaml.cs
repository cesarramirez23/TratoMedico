using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Net.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using TratoMedi.Personas;
using TratoMedi.Varios;
using System.Collections.ObjectModel;

namespace TratoMedi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class V_Perfil : ContentPage
    {
        string v_especId = "";

        ObservableCollection<C_EspeTitu> v_espec = new ObservableCollection<C_EspeTitu>();
        bool v_Selec = false;
        bool v_editar = false;
        bool v_cita = false;
        public V_Perfil ()
        {
            InitializeComponent();
          
           
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();
            Fn_CargaPerfil();
           // P_Swi.IsToggled = v_cita;
            //P_StackCita.IsVisible = false;
            await Task.Delay(100);
        }
        public void Fn_ActivarCita(object sender, ToggledEventArgs _args)
        {
            v_cita = _args.Value;
            //P_StackCita.IsVisible = v_cita;
        }
        void Fn_SoloNumero(object sender, TextChangedEventArgs _args)
        {
            //-  ,  _  .
            Entry _entry = (Entry)sender;
            if (_entry.Text.Length > 0)
            {
                char _ultimo = _entry.Text[_entry.Text.Length - 1];
                if (_ultimo == '-' || _ultimo == ',' || _ultimo == '_' || _ultimo == '.')
                {
                    if (_entry.Text.Length == 1)
                    {
                        _entry.Text = "";
                    }
                    else
                    {
                        _entry.Text = _entry.Text.Remove(_entry.Text.Length - 1); // remove last char
                    }
                }
            }
        }
        public async void Fn_Editar(object sender, EventArgs _args)
        {
            v_editar = !v_editar;
            if (v_editar)
            {
               
                P_Editar.Text = "Cancelar";
                P_Guardar.IsVisible = true;

                PickTitulo.IsEnabled = true;
                P_Nom.IsEnabled = true;
                P_Ape.IsEnabled = true;
                P_sexoPick.IsEnabled = true;
                P_Esp.IsEnabled = true;
                P_Ced.IsEnabled = true;
                P_hor.IsEnabled = true;
                P_dom.IsEnabled = true;
                P_Ciu.IsEnabled = true;
                P_Tel.IsEnabled = true;
                P_Corr.IsEnabled = true;
                P_Descrip.IsEnabled = true;
                P_Swi.IsEnabled = true;

                await Task.Delay(100);
            }
            else
            {
                P_Editar.Text = "Editar";
                P_Guardar.IsVisible = false;

                PickTitulo.IsEnabled = false;
                P_Nom.IsEnabled = false;
                P_Ape.IsEnabled = false;
                P_sexoPick.IsEnabled = false;
                P_Esp.IsEnabled = false;
                P_Ced.IsEnabled = false;
                P_hor.IsEnabled = false;
                P_dom.IsEnabled = false;
                P_Ciu.IsEnabled = false;
                P_Tel.IsEnabled = false;
                P_Corr.IsEnabled = false;
                P_Descrip.IsEnabled = false;
                P_Swi.IsEnabled = false;
                App.Fn_CargarDatos();
                v_espec = App.v_perfil.v_especs;
                PickTitulo.ItemsSource = App.v_perfil._tituArr;

                P_Nom.Text = App.v_perfil.v_Nombre;
                P_Ape.Text = App.v_perfil.v_Apellido;
                PickTitulo.SelectedIndex = int.Parse(App.v_perfil.v_titulo);
                P_sexoPick.SelectedIndex = App.v_perfil.v_idsexo;
                pickEspe.ItemsSource = v_espec;

                P_Esp.Text = App.v_perfil.v_Especialidad;
                v_especId = App.v_perfil.v_Especialidad;
                Console.Write("idEspe" + v_especId);
                int val = -1;
                string[] _arr = v_especId.Split('&');
                P_Esp.Text = "";
                for (int i = 0; i < _arr.Length; i++)//prende soloo unos
                {
                    val = int.Parse(_arr[i]);
                    if (i == 0)
                    {

                        P_Esp.Text += v_espec[val - 1].v_nombreEspec;
                        v_espec[val - 1].v_visible = true;
                    }
                    else
                    {
                        //  P_Esp.Text += "&" + v_espec[val-1].v_nombreEspec;
                        P_Esp.Text += "," + v_espec[val - 1].v_nombreEspec;
                        v_espec[val - 1].v_visible = true;
                    }
                }
                //  P_Ced.Text = App.v_perfil.v_cedula;
                P_hor.Text = App.v_perfil.v_horario;
                P_dom.Text = App.v_perfil.v_Domicilio;
                P_Ciu.Text = App.v_perfil.v_Ciudad;
                P_Tel.Text = App.v_perfil.v_Tel;
                P_Corr.Text = App.v_perfil.v_Correo;
                P_Descrip.Text = App.v_perfil.v_descripcion;
            }
        }
        public async void Fn_Guardar(object sender, EventArgs _args)
        {
            Button _buton = (Button)sender;
            _buton.IsEnabled = false;
            //se crea el json con la clase mas lel folio y membresia
            
           

            string json = @"{";
            json += "membre:'" + App.v_membresia + "',\n";
            json += "titulo:'" + App.Fn_Vacio(PickTitulo.SelectedIndex.ToString()) + "',\n";
            json += "nombre:'" + App.Fn_Vacio(P_Nom.Text) + "',\n";
            json += "ape:'" + App.Fn_Vacio(P_Ape.Text) + "',\n";
            json += "espe:'" + App.Fn_Vacio(v_especId) + "',\n";
            json += "dom:'" + App.Fn_Vacio(P_dom.Text) + "',\n";
            json += "horario:'" + App.Fn_Vacio(P_hor.Text) + "',\n";
            json += "ciudad:'" + App.Fn_Vacio(P_Ciu.Text) + "',\n";
            json += "tel:'" + App.Fn_Vacio(P_Tel.Text) + "',\n";
            json += "correo:'" + App.Fn_Vacio(P_Corr.Text) + "',\n";
            json += "cedula:'" + App.Fn_Vacio(P_Ced.Text) + "',\n";
            json += "descrip:'" + App.Fn_Vacio(P_Descrip.Text) + "',\n";
            json += "idsexo:'" + P_sexoPick.SelectedIndex + "',\n";
            if(v_cita)
            {
                json += "citas:'" + "1" + "'\n";
            }
            else
            {
                json += "citas:'" + "0" + "'\n";
            }
            json += "}";

            //await DisplayAlert("Envia", json.ToString(), "Aceptar");
            JObject jsonPer = JObject.Parse(json);
            StringContent _content = new StringContent(jsonPer.ToString(), Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            string _url = "http://tratoespecial.com/update_perfil_dr.php";
            try
            {
                HttpResponseMessage _respuestphp = await _client.PostAsync(_url, _content);
                string _result = _respuestphp.Content.ReadAsStringAsync().Result;

                if (_result == "1")
                {
                    await DisplayAlert("Actualizado", "Informacion Guardado con éxito", "Aceptar");
                    //volver a cargar la informacion
                    json = @"{";
                    json += "membre:'" + App.v_membresia + "',\n";
                    json += "}";


                    //HACIENDO EL QUERY para la info del GENERAL
                    _client = new HttpClient();
                    C_Login _login = new C_Login(App.v_membresia,"");
                    //crear el json
                    string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
                    _url = "http://tratoespecial.com/query_perfil_dr.php";
                    _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                    //mandar el json con el post
                    try
                    {
                        //mandar el json con el post
                        _respuestphp = await _client.PostAsync(_url, _content);
                        _result = await _respuestphp.Content.ReadAsStringAsync();
                        C_Medico _nuePer = JsonConvert.DeserializeObject<C_Medico>(_result);
                        _nuePer.Fn_SetEspecTitulo();
                        ////cargar la nueva pagina de perfil
                        App.Fn_GuardarDatos(_nuePer);
                        Fn_Editar(sender,_args);
                        Fn_CargaPerfil();
                    }
                    catch (HttpRequestException ex)
                    {
                        await DisplayAlert("Error en actualizar", ex.Message.ToString(),"Aceptar");
                    }
                }
                else if (_result == "0")
                {
                    await DisplayAlert("Error en actualizar", _result , "Aceptar");
                }
                else
                {
                    await DisplayAlert("NO 0 NI 1", _result , "Aceptar");

                }
            }
            catch (HttpRequestException ex)
            {
                await DisplayAlert("Error en actualizar", ex.Message.ToString(), "Aceptar");
            }
           
            _buton.IsEnabled = true;
        }
        /// <summary>
        /// carga el propio perfil
        /// </summary>
        async  void Fn_CargaPerfil()
        {
            C_Login _login = new C_Login(App.v_membresia, "");
            //crear el json
            string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
            string _DirEnviar = "http://tratoespecial.com/query_perfil_dr.php";
            Console.Write(_jsonLog);
            StringContent _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            try
            {
                //mandar el json con el post
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                C_Medico _nuePer = JsonConvert.DeserializeObject<C_Medico>(_respuesta);
                Console.Write("perfil" + _nuePer.FN_GetInfo());
                ////cargar la nueva pagina de perfil
                _nuePer.Fn_SetEspecTitulo();
                App.Fn_GuardarDatos(_nuePer);

                await Task.Delay(100);
            }
            catch (HttpRequestException ex)
            {
                await DisplayAlert("Error en actualizar, Se Cargará la ultima informacion guardada", ex.Message.ToString(), "Aceptar");
            }

            App.Fn_CargarDatos();
            v_espec = App.v_perfil.v_especs;
            PickTitulo.ItemsSource = App.v_perfil._tituArr;

            P_Nom.Text = App.v_perfil.v_Nombre;
            P_Ape.Text = App.v_perfil.v_Apellido;
            PickTitulo.SelectedIndex = int.Parse(App.v_perfil.v_titulo);
            P_sexoPick.SelectedIndex = App.v_perfil.v_idsexo;
            pickEspe.ItemsSource = v_espec;

            P_Esp.Text = App.v_perfil.v_Especialidad;
            v_especId = App.v_perfil.v_Especialidad;
            Console.Write("idEspe" + v_especId);
            int val = -1;
            string[] _arr = v_especId.Split('&');
            P_Esp.Text = "";
            for (int i = 0; i < _arr.Length; i++)//prende soloo unos
            {
                val = int.Parse(_arr[i]);
                if (i == 0)
                {

                    P_Esp.Text += v_espec[val - 1].v_nombreEspec;
                    v_espec[val - 1].v_visible = true;
                }
                else
                {
                    //  P_Esp.Text += "&" + v_espec[val-1].v_nombreEspec;
                    P_Esp.Text += "," + v_espec[val - 1].v_nombreEspec;
                    v_espec[val - 1].v_visible = true;
                }
            }

            if(App.v_perfil.v_cita=="1")
            {
                v_cita = true;
            }
            else
            {
                v_cita = false;
            }
            P_Swi.IsToggled = v_cita;
            //  P_Ced.Text = App.v_perfil.v_cedula;
            P_hor.Text = App.v_perfil.v_horario;
            P_dom.Text = App.v_perfil.v_Domicilio;
            P_Ciu.Text = App.v_perfil.v_Ciudad;
            P_Tel.Text = App.v_perfil.v_Tel;
            P_Corr.Text = App.v_perfil.v_Correo;
            P_Descrip.Text = App.v_perfil.v_descripcion;
        }
        private void Fn_Setespe(object sender, EventArgs e)
        {
            P_Esp.Text = "";
             int val = -1;
            string[] _arr = v_especId.Split('&');

            for(int i=0;i<_arr.Length; i++)//prende soloo unos
            {
                if (_arr[i] != "")
                {
                    val = int.Parse(_arr[i]);
                    if (i == 0)
                    {
                        P_Esp.Text += v_espec[val-1].v_nombreEspec;
                    }
                    else
                    {
                      //  P_Esp.Text += "&" + v_espec[val-1].v_nombreEspec;
                        P_Esp.Text += "," + v_espec[val-1].v_nombreEspec;
                    }
                }
            }
            v_Selec = !v_Selec;
            StackOver.IsVisible = v_Selec;
            pickEspe.IsVisible = v_Selec;
        }
        private void pickEspe_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            var list = (ListView)sender;
            list.ItemsSource = null;
            C_EspeTitu _tap = e.Item as C_EspeTitu;
            for (int i = 0; i < v_espec.Count; i++)
            {
                if (v_espec[i] == _tap)
                {
                    v_espec[i].v_visible = !v_espec[i].v_visible;
                }
            }
            list.ItemsSource = v_espec;
        }
        private void Fn_Cancel(object sender, EventArgs _arg)
        {
            for (int i = 0; i < v_espec.Count; i++)//apaga todo
            {
                v_espec[i].v_visible = false;
            }
            int val = -1;
            string[] _arr = v_especId.Split('&');
            for(int i=0;i<_arr.Length; i++)//prende soloo unos
            {
                if (_arr[i] != "")
                {
                    val = int.Parse(_arr[i]);
                    v_espec[val-1].v_visible = true;
                }
            }
            pickEspe.ItemsSource = v_espec;
            Fn_Setespe(sender, _arg);
        }
        private void Fn_Aceptar(object sender, EventArgs _arg)
        {
            v_especId = "";
            for(int i=0; i<v_espec.Count;i++)
            {
                if(v_espec[i].v_visible)
                {
                    if(i==0 || v_especId=="")
                    {
                        v_especId += v_espec[i].v_idespecial;
                    }
                    else
                    {
                        v_especId += "&" + v_espec[i].v_idespecial;
                    }
                }
            }
            Fn_Setespe(sender, _arg);
        }

    }
}
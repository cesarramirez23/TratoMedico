using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

using System.Net.Http;
using TratoMedi.Varios;
using Newtonsoft.Json;
using System.Collections.ObjectModel;

namespace TratoMedi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class V_MasterMenu : MasterDetailPage
    {
        public V_MasterMenu(int _logeado, string _title)
        {
            InitializeComponent();
            if (_logeado==1)
            {
                StackProm.IsVisible = false;
                StackLog.IsVisible = true;
                App.Fn_CargarDatos();
                StackPrin.IsVisible = false;
                Fn_GetCitas();
                if (App.Fn_GetCita())
                {
                    string _json = App.Current.Properties[NombresAux.v_citaNot] as string;
                    App.v_nueva = JsonConvert.DeserializeObject<Cita>(_json);
                    IsPresented = false;
                    Detail = new NavigationPage(new V_Citas(true, App.v_nueva) { Title = "Citas" });
                }
                else
                {
                    IsPresented = false;
                    Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
                }
            }
            else if(_logeado==2)
            {
                StackProm.IsVisible = true;
                StackPrin.IsVisible = false;
                StackLog.IsVisible = false;
                IsPresented = false;
                Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
            }
            else if(_logeado==0)
            {
                StackProm.IsVisible = false;
                StackPrin.IsVisible = true;
                StackLog.IsVisible = false;
                IsPresented = false;
                Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
            }
        }
        public V_MasterMenu(bool _logeado, string _title)
        {
            InitializeComponent();
            if (_logeado)
            {
                StackLog.IsVisible = true;
                App.Fn_CargarDatos();
                StackPrin.IsVisible = false;
                Fn_GetCitas();
                if(App.Fn_GetCita())
                {
                    string _json = App.Current.Properties[NombresAux.v_citaNot] as string;
                    App.v_nueva = JsonConvert.DeserializeObject<Cita>(_json);
                    IsPresented = false;
                    Detail = new NavigationPage(new V_Citas(true, App.v_nueva) { Title = "Citas" });
                }
                else
                {
                    IsPresented = false;
                    Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
                }
            }
            else
            {
                StackPrin.IsVisible = true;
                StackLog.IsVisible = false;
                IsPresented = false;
                Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
            }
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();
            if(App.v_log=="1")
            {
                Fn_GetCitas();
                await Task.Delay(100);
            }
        }
        private async void Fn_GetCitas()
        {
            HttpClient _client = new HttpClient();
            Cita _cita = new Cita(App.v_membresia, "1");
            string _json = JsonConvert.SerializeObject(_cita);
            string _DirEnviar = NombresAux.BASE_URL + "get_citas.php";
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            try
            {
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    ObservableCollection<Cita> v_citas = JsonConvert.DeserializeObject<ObservableCollection<Cita>>(_respuesta);
                    App.Fn_GuardarCitas(v_citas);
                }
            }
            catch (Exception ex)
            {
                Fn_GetCitas();
            }
        }
        public void Fn_Inicio(object sender, EventArgs _args)
        {
            IsPresented = false;
            string _titl="";
            if (App.v_log == "1")
            {
                _titl = "Bienvenido " + App.v_perfil.v_Nombre;
            }
            else if (App.v_log == "2")
            {
                _titl = "Bienvenido ";// + App.v_perfProm.v_Nombre;
            }
            else
            {
                _titl = "Bienvenido a Trato Especial";
            }
            Detail = new NavigationPage(new V_MainPage(0) { Title = _titl });
        }
        public void Fn_Info(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_MainPage(1) { Title = "Información" });
        }
        public void Fn_Contacto(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_MainPage(2) { Title ="Contacto" });
        }
        public void Fn_Perfil(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Perfil() { Title = "Perfil" });
        }
        public void Fn_Login(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Login() { Title = "Iniciar Sesión" });
        }
        public void Fn_Citas(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Citas(false,null) { Title ="Citas"});
        }
        public void Fn_Opciones(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Opciones() { Title = "Cuenta" });
        }
        public void Fn_Lector(object sender, EventArgs _args)
        {
            IsPresented = false;
            if (App.v_paciente[0]=="0")
            {
                Detail = new NavigationPage(new V_Paciente());//true,null) );
            }
            //else if(App.v_paciente=="1")
            else if (App.v_paciente[0] == "1")
            {
                Detail = new NavigationPage(new V_Consulta() );
            }
        }
        public async void Fn_CerraSesion(object sender, EventArgs _args)
        {
            string prime = App.v_membresia.Split('-')[0];
            string _membre = "";///los 4 numeros de la mebresia sin laletra
            for (int i = 0; i < prime.Length - 1; i++)
            {
                _membre += prime[i];
            }
            string letra = prime[prime.Length - 1].ToString();
            string _conse = App.v_membresia.Split('-')[1];
            TratoMedi.Personas.C_Login _login = new TratoMedi.Personas.C_Login(_membre, letra, _conse, App.Fn_GEtToken());
            string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
            string _DirEnviar = NombresAux.BASE_URL + "token_notification.php";
            StringContent _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            try
            {
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                if (_respuesta == "1")
                {
                    IsPresented = false;
                    App.Fn_CerrarSesion();
                    App.Current.MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
                }
                else
                {
                    await DisplayAlert("Error", "No se pudo cerrar sesion", "Aceptar");
                    IsPresented = false;
                }
            }
            catch
            {
                bool _elige = await DisplayAlert("Error", "No se pudo cerrar sesion Correctamente,\n ¿Cerrar sesión de forma local?", "Si", "No");
                if (_elige)
                {
                    IsPresented = false;
                    App.Fn_CerrarSesion();
                    App.Current.MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
                }
                else
                {
                    IsPresented = false;
                }
            }
        }
        private void Fn_PerfilPromotor(object sender, EventArgs e)
        {
            IsPresented = false;
            Detail = new NavigationPage(new v_PerfilProm() { Title = "Perfil" });
        }
    }
}
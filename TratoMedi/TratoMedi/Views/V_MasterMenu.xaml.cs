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
        public V_MasterMenu(bool _logeado, string _title)
        {
            InitializeComponent();
            if (_logeado)
            {
                StackLog.IsVisible = true;
                App.Fn_CargarDatos();
                Detail.Title = _title;
                StackPrin.IsVisible = false;
                Fn_GetCitas();
            }
            else
            {
                StackPrin.IsVisible = true;
                StackLog.IsVisible = false;
            }
            IsPresented = false;
            Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
        }
        private async void Fn_GetCitas()
        {
            HttpClient _client = new HttpClient();
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
                    ObservableCollection<Cita> v_citas = JsonConvert.DeserializeObject<ObservableCollection<Cita>>(_respuesta);
                    Console.WriteLine("cuantos " + v_citas.Count + "json citaa " + _respuesta);
                    App.Fn_GuardarCitas(v_citas);
                }
            }
            catch (HttpRequestException ex)
            {
                await DisplayAlert("Error buscando tus citas", ex.ToString(), "Aceptar");
            }
        }

        public void Fn_Inicio(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_MainPage(0) { Title = "Bienvenido" });
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
            Detail = new NavigationPage(new V_Citas() { Title ="Citas"});
        }
        public void Fn_Opciones(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Opciones() { Title = "Cuenta" });
        }
        public void Fn_Lector(object sender, EventArgs _args)
        {
            IsPresented = false;
            //if (App.v_paciente=="0")
            if (App.v_paciente[0]=="0")
            {
            Detail = new NavigationPage(new V_Paciente(true) );
            }
            //else if(App.v_paciente=="1")
            else if (App.v_paciente[0] == "1")
            {
            Detail = new NavigationPage(new V_Paciente(false) );
            }
        }
        public async void Fn_CerraSesion(object sender, EventArgs _args)
        {
            IsPresented = false;
            App.Fn_CerrarSesion();
            await Task.Delay(100);
            App.Current.MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

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
            }
            else
            {
                StackPrin.IsVisible = true;
                StackLog.IsVisible = false;
            }
            IsPresented = false;
            Detail = new NavigationPage(new V_MainPage(0) { Title = _title });
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
            Detail = new NavigationPage(new V_MainPage(2) { Title = "Contacto" });
        }
        public void Fn_Login(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Login() { Title = "Iniciar Sesión" });
        }
        public void Fn_Citas(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Login() { Title = "Iniciar Sesión" });
        }
        public void Fn_Opciones(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Login() { Title = "Iniciar Sesión" });
        }
        public void Fn_CerraSesion(object sender, EventArgs _args)
        {
            IsPresented = false;
            Detail = new NavigationPage(new V_Login() { Title = "Iniciar Sesión" });
        }
    }
}
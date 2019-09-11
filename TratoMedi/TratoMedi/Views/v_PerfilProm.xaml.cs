using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.Net.Http;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TratoMedi.Personas;
using Newtonsoft.Json;
using TratoMedi.Models;
namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class v_PerfilProm : ContentPage
	{
        C_PerfProm v_perfil;
		public v_PerfilProm ()
		{
			InitializeComponent ();
            v_perfil = App.v_perfProm;
            this.BindingContext = v_perfil;
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            Fn_GetPerfil();
        }
        async void Fn_GetPerfil()
        {
            HttpClient _client = new HttpClient() ;
            C_Login _log = new C_Login(App.v_membresia);
            string _json = JsonConvert.SerializeObject(_log);
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            try
            {
                string _url = NombresAux.BASE_URL + "perfil_promotor.php";
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_url, _content);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                v_perfil = JsonConvert.DeserializeObject<C_PerfProm>(_respuesta);
                v_perfil.Fn_Init();
                this.BindingContext = v_perfil;
                await Fn_CreaLista();
            }
            catch(Exception _ex)
            {
                Fn_GetPerfil();
            }
        }
        Task Fn_CreaLista()
        {
            StackPrimer.Children.Clear();
            StackSegundo.Children.Clear();
            if (v_perfil.v_vect2.X==0 && v_perfil.v_vect2.Y ==0)
            {
                Label _men = new Label()
                {
                    Text = "No Cuentas con promotores",
                    FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                    TextColor = (Color)App.Current.Resources["NavigationPrimary"]
                };
                Label _men2 = new Label()
                {
                    Text = "No Cuentas con promotores",
                    FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                    TextColor = (Color)App.Current.Resources["NavigationPrimary"]
                };
                StackPrimer.Children.Add(_men);
                StackSegundo.Children.Add(_men2);
            }
            else
            {
                if (v_perfil.v_vect2.X == 0 )
                {
                    Label _men = new Label()
                    {
                        Text = "No Cuentas con promotores",
                        FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                        TextColor = (Color)App.Current.Resources["NavigationPrimary"]
                    };
                    StackPrimer.Children.Add(_men);
                }
                else if( v_perfil.v_vect2.Y == 0)
                {

                    Label _men2 = new Label()
                    {
                        Text = "No Cuentas con promotores",
                        FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                        TextColor = (Color)App.Current.Resources["NavigationPrimary"]
                    };
                    StackSegundo.Children.Add(_men2);
                }
                for (int i = 0; i < v_perfil.v_hijo.Count; i++)
                {
                    StackLayout _stack = new StackLayout() { Margin = new Thickness(2, 0) };
                    _stack.BindingContext = v_perfil.v_hijo[i];
                    Label _id = new Label()
                    {
                        Text = "Promotor: " + v_perfil.v_hijo[i].v_id,
                        FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                        TextColor = (Color)App.Current.Resources["NavigationPrimary"]
                    };
                    Label _com = new Label()
                    {
                        Text = "Comisión: " + v_perfil.v_hijo[i].v_monto.ToString("F2") + " MXN",
                        FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                        TextColor = (Color)App.Current.Resources["LetrCol"]
                    };
                    Label _nombre = new Label()
                    {
                        Text = "Nombre Promotor: " + v_perfil.v_hijo[i].v_Nombre,
                        FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                        TextColor = (Color)App.Current.Resources["LetrCol"]
                    };
                    ContentView _cont = new ContentView() { HeightRequest = 1, BackgroundColor = Color.Black, HorizontalOptions = LayoutOptions.FillAndExpand };
                    _stack.Children.Add(_id);
                    _stack.Children.Add(_com);
                    _stack.Children.Add(_nombre);
                    _stack.Children.Add(_cont);
                    if(v_perfil.v_hijo[i].v_nivel==1)
                    {
                        StackPrimer.Children.Add(_stack);
                    }
                    else if( v_perfil.v_hijo[i].v_nivel==2)
                    {
                        StackSegundo.Children.Add(_stack);
                    }
                }
            }
            return Task.Delay(100);
        }
        private async void Fn_StackPrimer(object sender, EventArgs e)
        {
            Image _img = sender as Image;
            if(_img.Rotation!=180 || _img.Rotation!=90  )
            {
                if (StackPrimer.IsVisible)
                {
                    await _img.RotateTo(180, 250, Easing.Linear);
                }
                else
                {
                    await _img.RotateTo(90, 250, Easing.Linear);
                }
                StackPrimer.IsVisible = !StackPrimer.IsVisible;
            }
        }
        private async void Fn_StackSegundo(object sender, EventArgs e)
        {
            Image _img = sender as Image;
            if (_img.Rotation != 180 || _img.Rotation != 90)
            {
                if (StackSegundo.IsVisible)
                {
                    await _img.RotateTo(180, 100, Easing.Linear);
                }
                else
                {
                    await _img.RotateTo(90, 100, Easing.Linear);
                }
                StackSegundo.IsVisible = !StackSegundo.IsVisible;
            }
        }

        private async void Fn_Estado(object sender, EventArgs e)
        {
            Button _btn = sender as Button;
            _btn.IsEnabled = false;
            C_Login _log = new C_Login(App.v_membresia);
            string _json = JsonConvert.SerializeObject(_log);
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            try
            {
                HttpResponseMessage _respuestaphp = await _client.PostAsync(NombresAux.BASE_URL + "pdf_test.php",_content);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                if(_respuesta=="1")
                {
                    await DisplayAlert("Aviso", "Estado de cuenta enviado a tu correo", "Aceptar");
                }
                else
                {
                    await DisplayAlert("Aviso", "Error al solicitar, reintentar más tarde", "Aceptar");
                }
            }
            catch(Exception _ex)
            {
                await DisplayAlert("Aviso", "Error al solicitar, reintentar más tarde", "Aceptar");
            }
            _btn.IsEnabled = true;
        }
    }
}
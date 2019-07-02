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
            v_perfil = new C_PerfProm();
            //var keys=App.Current.Resources.Keys.ToArray();
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
            StackHijos.Children.Clear();
            if(v_perfil.v_hijo== null)
            {
                Label _men = new Label()
                {
                    Text = "No Cuentas con promotores",
                    FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Label)),
                    TextColor = (Color)App.Current.Resources["NavigationPrimary"]
                };
                StackHijos.Children.Add(_men);
            }
            else
            {
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
                    ContentView _cont = new ContentView() { HeightRequest = 1, BackgroundColor = Color.Black, HorizontalOptions = LayoutOptions.FillAndExpand };
                    _stack.Children.Add(_id);
                    _stack.Children.Add(_com);
                    _stack.Children.Add(_cont);
                    StackHijos.Children.Add(_stack);
                }
            }
            return Task.Delay(100);
        }
	}
}
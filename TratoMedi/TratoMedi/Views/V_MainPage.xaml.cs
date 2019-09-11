using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Net.Http;
using Newtonsoft.Json;
using TratoMedi.Personas;
using System.Text;
using System.Threading.Tasks;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_MainPage : ContentPage
	{
        //public List<Banner> v_mostrar = new List<Banner>();
        int v_actual = 0;
        /// <summary>
        /// 1 informaion, 2 contacto,  otro principal con banner
        /// </summary>
        public V_MainPage(int _valor)
        {
            InitializeComponent();
            switch (_valor)
            {
                case 1:
                    {
                        I_lbl.Text = "Trato Especial, es una multiplataforma de servicios, que a través de una membresía médica, le damos la oportunidad  a cualquier tipo de persona a tener acceso a servicios de salud y bienestar integral de muy buena calidad a precios accesibles, generando a los usuarios, confianza tranquilidad y un trato especial,  bajo un modelo de suscripción anual.\n" +
                " Sin importar la edad, sexo y condición física del usuario. ";
                        Stack_Info.IsVisible = true;
                    }
                    break;
                case 2:
                    {
                        StackContacto.IsVisible = true;
                    }break;
                default:
                    {
                        StackPrin.IsVisible = true;
                        //string _a = App.Fn_GEtToken();
                        //FN_Red();
                    }
                    break;
            }
        }
        protected async override void OnAppearing()
        {
            if(App.v_log=="1")
            {
                Token();
                await Task.Delay(100);
            }
        }
        public async void Token()
        {
            string prime = App.v_membresia.Split('-')[0];
            string _membre = "";///los 4 numeros de la mebresia sin laletra
            for (int i = 0; i < prime.Length - 1; i++)//-1 para no agarrar la letra
            {
                _membre += prime[i];
            }
            string _conse = App.v_membresia.Split('-')[1];
            C_Login _login = new C_Login(_membre,"D", _conse, App.Fn_GEtToken());
            //crear el json
            string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
            string _DirEnviar = NombresAux.BASE_URL + "token_notification.php";
            StringContent _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            try
            {
                //mandar el json con el post
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                if (_respuesta == "1")
                {
                    Console.Write("token 1");
                }
                else
                {
                    Console.WriteLine("token no 1");
                }

            }
            catch (Exception _ex)
            {
                Console.WriteLine("error token");
            }
        } 
        /*public async void FN_Red()
{
//HttpClient _cliente = new HttpClient();
//string url = " s";
//try
//{
//    HttpResponseMessage _respuestphp = await _cliente.PostAsync(url, null);
//    string _respu = await _respuestphp.Content.ReadAsStringAsync();
//    List<Banner> _banner = JsonConvert.DeserializeObject<List<Banner>>(_respu);
//    v_mostrar = _banner;
//    Device.StartTimer(TimeSpan.FromSeconds(10), () =>
//    {
//        v_actual++;
//        if (v_actual == v_mostrar.Count) v_actual = 0;

//        MainBanner.Source = v_mostrar[v_actual].v_img;

//        return true;
//    });
//}
//catch
//{
//    v_mostrar.Clear();
//    v_mostrar.Add(new Banner("HOME_icon.png", "https://forums.xamarin.com/discussion/82989/implementation-of-auto-slider-for-carousal-view-xamarin-forms"));
//    v_mostrar.Add(new Banner("Medicos.png", "https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.carouselpage?view=xamarin-forms"));
//    v_mostrar.Add(new Banner("Services_icon.png", "https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.multipage-1.oncurrentpagechanged?view=xamarin-forms#Xamarin_Forms_MultiPage_1_OnCurrentPageChanged"));
//    v_mostrar.Add(new Banner("Membresia_Icon.png", "https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.device.starttimer?view=xamarin-forms"));
//    v_mostrar.Add(new Banner("LOGOTRATOESPECIAL.png", "https://tratoespecial.com/"));

//    v_actual = 0;
//    MainBanner.Source = v_mostrar[v_actual].v_img;

//    Device.StartTimer(TimeSpan.FromSeconds(10), () =>
//    {
//        v_actual++;
//        if (v_actual == v_mostrar.Count) v_actual = 0;

//        MainBanner.Source = v_mostrar[v_actual].v_img;

//        return true;
//    });
//}

}
public void Fn_AbrirSitio(object sender, EventArgs _args)
{
Uri _url = new Uri(v_mostrar[v_actual].v_sitio);
Device.OpenUri(_url);
}*/
    }
}
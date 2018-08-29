using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Net.Http;
using TratoMedi.Varios;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_MainPage : ContentPage
	{
        public List<Banner> v_mostrar = new List<Banner>();
        int v_actual = 0;
        /// <summary>
        /// 1 informaion, 2 contacto,  otro principal con banner
        /// </summary>
        /// <param name="_valor"></param>
        public V_MainPage(int _valor)
        {
            InitializeComponent();
            switch(_valor)
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
                        FN_Red();
                    }
                    break;

            }
            
        }
        public async void FN_Red()
        {
            HttpClient _cliente = new HttpClient();
            string url = " s";
            try
            {
                HttpResponseMessage _respuestphp = await _cliente.PostAsync(url, null);
                string _respu = await _respuestphp.Content.ReadAsStringAsync();
                List<Banner> _banner = JsonConvert.DeserializeObject<List<Banner>>(_respu);
                v_mostrar = _banner;
                Device.StartTimer(TimeSpan.FromSeconds(10), () =>
                {
                    v_actual++;
                    if (v_actual == v_mostrar.Count) v_actual = 0;

                    MainBanner.Source = v_mostrar[v_actual].v_img;

                    return true;
                });
            }
            catch
            {
                v_mostrar.Clear();
                v_mostrar.Add(new Banner("HOME_icon.png", "https://forums.xamarin.com/discussion/82989/implementation-of-auto-slider-for-carousal-view-xamarin-forms"));
                v_mostrar.Add(new Banner("Medicos.png", "https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.carouselpage?view=xamarin-forms"));
                v_mostrar.Add(new Banner("Services_icon.png", "https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.multipage-1.oncurrentpagechanged?view=xamarin-forms#Xamarin_Forms_MultiPage_1_OnCurrentPageChanged"));
                v_mostrar.Add(new Banner("Membresia_Icon.png", "https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.device.starttimer?view=xamarin-forms"));
                v_mostrar.Add(new Banner("LOGOTRATOESPECIAL.png", "https://tratoespecial.com/"));

                v_actual = 0;
                MainBanner.Source = v_mostrar[v_actual].v_img;

                Device.StartTimer(TimeSpan.FromSeconds(10), () =>
                {
                    v_actual++;
                    if (v_actual == v_mostrar.Count) v_actual = 0;

                    MainBanner.Source = v_mostrar[v_actual].v_img;

                    return true;
                });
            }

        }
        public void Fn_AbrirSitio(object sender, EventArgs _args)
        {
            Uri _url = new Uri(v_mostrar[v_actual].v_sitio);
            Device.OpenUri(_url);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;
using TratoMedi.Personas;
using System.Net.Http;
using Newtonsoft.Json;
using TratoMedi.Varios;
using System.Collections.ObjectModel;


namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Paciente : ContentPage
	{
        ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();
        public V_Paciente (bool _scan)
		{
			InitializeComponent ();
            if(_scan)
            {
                Scanner.IsVisible = true;

                Scanner.IsScanning = true;
                aaaa.IsVisible = false;
            }
            else
            {
                Scanner.IsVisible = false;
                Scanner.IsScanning = false;
                aaaa.IsVisible = true;
                CargarGen();
                CargarMed();
            }
        }
        public void Fn_NuevoMed(object sender, EventArgs _Args)
        {

        }
        public void Fn_MostrarMed(object sender, EventArgs _Args)
        {

        }
        public void Fn_Terminar(object sender, EventArgs _args)
        {

        }
        /*private async void Scan(object sender, EventArgs _Args)
        {//crea una pagina especial del lector
            var scanPage = new ZXingScannerPage();
            //cuando escanee algo que va a hacer?
            scanPage.OnScanResult += (result) =>
            {
                //deja de escanear
                scanPage.IsScanning = false;
                // Pop the page and show the result
                Device.BeginInvokeOnMainThread(async () =>
                {
                    //await Navigation.PopAsync();
                    await DisplayAlert("Scanned Barcode", result.Text, "OK");
                   // StackPerfil.IsVisible = true;
                });
            };
            
            // Navigate to our scanner page
            await Navigation.PushAsync(scanPage);
        }*/

        private async void Fn_Scan(ZXing.Result result)
        {
            //deja de escanear
            Scanner.IsScanning = false;

            //crear el cliente
            HttpClient _client = new HttpClient();
            string _DirEnviar = "";
            StringContent _content = new StringContent(result.Text, Encoding.UTF8, "application/json");
            string _respuesta;
            HttpResponseMessage _respuestaphp;
            try
            {
                //baja la info de perfil general
                _DirEnviar=  "https://useller.com.mx/trato_especial/query_perfil.php";
                //mandar el json con el post
                _respuestaphp= await _client.PostAsync(_DirEnviar, _content);

                    _respuesta = await _respuestaphp.Content.ReadAsStringAsync();

                C_PerfilGen _nuePer = JsonConvert.DeserializeObject<C_PerfilGen>(_respuesta);
                App.Fn_GuardarDatos(_nuePer);

                _DirEnviar = "https://useller.com.mx/trato_especial/query_perfil_medico.php";
                _content = new StringContent(result.Text, Encoding.UTF8, "application/json");
                //mandar el json con el post
                _respuestaphp = await _client.PostAsync(_DirEnviar, _content);

                _respuesta = await _respuestaphp.Content.ReadAsStringAsync();

                C_PerfilMed _nuePerMEd = JsonConvert.DeserializeObject<C_PerfilMed>(_respuesta);
                
                App.Fn_GuardarDatos(_nuePerMEd);
                Device.BeginInvokeOnMainThread(async () =>
                {
                    Scanner.IsScanning = true;
                    await Navigation.PopAsync();
                    await Navigation.PushAsync(new V_Paciente(false) { Title =App.v_pergen.v_Nombre });
                });

            }
            catch (HttpRequestException ex)
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    //await Navigation.PopAsync();
                    //await DisplayAlert("Scanned Barcode", result.Text, "OK");
                    await DisplayAlert("Error", ex.Message, "ok");
                    // StackPerfil.IsVisible = true;
                    Scanner.IsScanning = true;
                    Scanner.IsVisible = true;
                });
            }
            
        }
        public void Fn_NullEntry(Label _lbl, string _textos)
        {
            if (string.IsNullOrEmpty(_textos))
            {
                _lbl.Text = "";
            }
            else
            {
                _lbl.Text = _textos;
            }
        }
        public void Fn_NullEntry(Editor _editor, string _textos)
        {
            if (string.IsNullOrEmpty(_textos))
            {
                _editor.Text = "";
            }
            else
            {
                _editor.Text = _textos;
            }
        }
        public async void CargarGen()
        {
            G_Nombre.Text= App.v_pergen.v_Nombre;

            if (string.IsNullOrEmpty(App.v_pergen.v_FecNaci))
            {
                G_fecha.Text = "N/A";
            }
            else
            {
                string[] fecha = App.v_pergen.v_FecNaci.Split('-');               
                G_fecha.Text = fecha[2] + " - " + fecha[1] + " - " + fecha[0];
            }
            
            Fn_NullEntry(G_Ocu, App.v_pergen.v_Ocup);
           // Fn_NullEntry(G_Tel, App.v_perfil.v_Tel);
            //Fn_NullEntry(G_Cel, App.v_perfil.v_Cel);
            
            await Task.Delay(100);
        }
        public async void CargarMed()
        {
            Fn_NullEntry(M_Sangre, App.v_perMed.v_sangre);
            if ((App.v_perMed.v_sexo < 0) || (App.v_perMed.v_sexo > 1))
            {
                if (App.v_perMed.v_sexo == 1)
                {
                    M_sexoPick.Text = "Femenino";
                    M_sexo.IsVisible = true;
                    M_sexolbl.IsVisible = true;
                    M_sexolbl.Text = "¿estas embarazada?,\n ¿tienes hijos? ¿cuantos?";
                    Fn_NullEntry(M_sexo, App.v_perMed.v_infoMujer);
                }
                else
                {
                    M_sexoPick.Text = "Masculino";
                    M_sexo.IsVisible = false;
                    M_sexolbl.IsVisible = false;
                    M_sexolbl.Text = "";
                    Fn_NullEntry(M_sexo, App.v_perMed.v_infoMujer);
                }
            }
            else
            {
                if (App.v_perMed.v_sexo == 1)
                {
                    M_sexoPick.Text = "Femenino";
                    M_sexo.IsVisible = true;
                    M_sexolbl.IsVisible = true;
                    M_sexolbl.Text = "¿estas embarazada?,\n ¿tienes hijos? ¿cuantos?";
                    Fn_NullEntry(M_sexo, App.v_perMed.v_infoMujer);
                }
                else
                {
                    M_sexoPick.Text = "Masculino";
                    M_sexo.IsVisible = false;
                    M_sexolbl.IsVisible = false;
                    M_sexolbl.Text = "";
                }
            }


                Fn_NullEntry(M_Alergias, App.v_perMed.v_alergias);
            //if (string.IsNullOrEmpty(App.v_perMed.v_alergias))
            //{
            //    M_Alergias.IsVisible = false;
            //}
            //else
            //{
            //    M_Alergias.IsVisible = true;
            //    Fn_NullEntry(M_Alergias, App.v_perMed.v_alergias);
            //}

            Fn_NullEntry(M_Operaciones, App.v_perMed.v_operaciones);


                Fn_NullEntry(M_Enferme, App.v_perMed.v_enfer);
            //if (string.IsNullOrEmpty(App.v_perMed.v_enfer))
            //{
            //    M_Enferme.IsVisible = false;
            //}
            //else
            //{
            //    M_Enferme.IsVisible = true;
            //    Fn_NullEntry(M_Enferme, App.v_perMed.v_enfer);
            //}

            Fn_NullEntry(M_Medicamentos, App.v_perMed.v_medica);

            await Task.Delay(100);
        }
    }

}
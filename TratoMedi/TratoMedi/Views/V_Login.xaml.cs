using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net.Http;
using TratoMedi.Personas;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Text.RegularExpressions;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Login : ContentPage
	{
		public V_Login ()
		{
			InitializeComponent ();
		}
        public void Fn_Reintento(object sender, EventArgs _args)
        {
            StackMen.IsVisible = false;
            Mensajes_over.Text = "";
            Reinten.IsVisible = false;
        }
        public async void Fn_Login(object sender, EventArgs _args)
        {
            if (Fn_Condiciones())
            {
                StackMen.IsVisible = true;
                Regex MembreRegex = new Regex(@"^([0-9]){4}([A-Z]){1}-([0-9]){4}$");
                if (MembreRegex.IsMatch(L_usu.Text))
                {
                    Mensajes_over.Text = " Comprobando informacion\n";
                    C_Login _login = new C_Login(L_usu.Text, L_pass.Text);
                    //crear el json
                    string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
                    //mostrar la pantalla con mensajes
                    //Mensajes_over.Text += _jsonLog;
                    //crear el cliente
                    HttpClient _client = new HttpClient();
                    string _DirEnviar = "http://tratoespecial.com/login_dr.php";
                    StringContent _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                    //mandar el json con el post
                    try
                    {
                        HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                        if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                        {
                            string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                            if (_respuesta == "0")
                            {
                                Mensajes_over.Text += "\n Error en los datos";
                                Reinten.IsVisible = true;
                            }
                            else if (_respuesta == "1" || _respuesta == "2")
                            {
                                _DirEnviar = "http://tratoespecial.com/query_perfil_dr.php";
                                //Console.Write(_jsonLog);
                                _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                                try
                                {
                                    //mandar el json con el post
                                    _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                                    _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                    C_Medico _nuePer = JsonConvert.DeserializeObject<C_Medico>(_respuesta);
                                    ////cargar la nueva pagina de perfil
                                    App.v_log = "1";
                                    App.v_membresia = L_usu.Text;
                                    _nuePer.Fn_SetEspecTitulo();
                                    App.Fn_GuardarDatos(_nuePer);
                                    //el token

                                    string prime = L_usu.Text.Split('-')[0];
                                    string _membre = "";///los 4 numeros de la mebresia sin laletra
                                    for (int i = 0; i < prime.Length - 1; i++)
                                    {
                                        _membre += prime[i];
                                    }
                                    string letra = prime[prime.Length - 1].ToString();
                                    string _conse = L_usu.Text.Split('-')[1];

                                    _login = new C_Login(_membre, letra, _conse, App.Fn_GEtToken());
                                    //crear el json
                                    _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
                                    _DirEnviar = "http://tratoespecial.com/token_notification.php";
                                    _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                                    Console.WriteLine(" infosss " + _jsonLog);
                                    try
                                    {
                                        //mandar el json con el post
                                        _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                                        _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                        if (_respuesta == "1")
                                        {
                                            Application.Current.MainPage = new V_MasterMenu(true, "Bienvenido " + App.v_perfil.v_Nombre);
                                        }
                                        else
                                        {
                                            Mensajes_over.Text = "Error";
                                            Reinten.IsVisible = true;
                                        }
                                    }
                                    catch (HttpRequestException exception)
                                    {
                                        await DisplayAlert("Error", exception.Message, "Aceptar");
                                        Reinten.IsVisible = true;
                                    }//el token
                                }
                                catch (HttpRequestException ex)
                                {
                                    Mensajes_over.Text = ex.Message.ToString();
                                    Reinten.IsVisible = true;
                                }

                            }
                            else
                            {
                                Mensajes_over.Text = "no 1 y 2  " + _respuesta;
                                Reinten.IsVisible = true;
                            }
                        }
                        else
                        {
                            Reinten.IsVisible = true;
                            Mensajes_over.Text = "Error de Conexion";
                        }
                    }
                    catch (HttpRequestException ex)
                    {
                        Mensajes_over.Text = ex.Message.ToString();
                        Reinten.IsVisible = true;
                    }
                }
                else
                {
                    await DisplayAlert("Error", "No contiene el formato de membresia\n 0000D-0000", "Aceptar");
                    StackMen.IsVisible = false;
                }
            }
        }
        /// <summary>
        /// si es false, hay algun dato mal y no puedes continuar
        /// </summary>
        /// <returns></returns>
        bool Fn_Condiciones()
        {
            int _conta = 0;
            if (string.IsNullOrEmpty(L_usu.Text) || string.IsNullOrWhiteSpace(L_usu.Text))
            {
                L_usu.BackgroundColor = Color.Red;
                _conta++;
            }
            else
            {
                L_usu.BackgroundColor = Color.Transparent;
            }
            if (string.IsNullOrEmpty(L_pass.Text) || string.IsNullOrWhiteSpace(L_pass.Text))
            {
                L_pass.BackgroundColor = Color.Red;
                _conta++;
            }
            else
            {
                L_pass.BackgroundColor = Color.Transparent;
            }

            if (_conta > 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        #region CAMBIO PASS


        /// <summary>
        /// mostrar panel pass
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="_args"></param>
        public void Fn_Reenviar(object sender, EventArgs _args)
        {
            StackContra.IsVisible = true;
            //  PassCorreo.Text = "";
            // PassMembre.Text = "";
        }
        /// <summary>
        /// apaga el panel de contraseña
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="_args"></param>
        public void Fn_APagaPass(object sender, EventArgs _args)
        {
            StackContra.IsVisible = false;
        }
        private async void Fn_CambioPass(object sender, EventArgs _args)
        {
            Button _buton = (Button)sender;
            _buton.IsEnabled = false;
            Regex EmailRegex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            if (string.IsNullOrEmpty(PassCorreo.Text) || string.IsNullOrWhiteSpace(PassCorreo.Text) || !EmailRegex.IsMatch(PassCorreo.Text))
            {
                await DisplayAlert("Error", "Correo vacio o no contiene formato correcto", "Reintentar");
            }
            else if (string.IsNullOrEmpty(PassMembre.Text) || string.IsNullOrWhiteSpace(PassMembre.Text))
            {
                await DisplayAlert("Error", "Error en Membresia", "Reintentar");
            }
            else
            {
                                                //4 numeros  1 letra  guion   4 numeros o mas
                Regex MembreRegex = new Regex(@"^([0-9]){4}([A-Z]){1}-([0-9]){4}$");
                if(MembreRegex.IsMatch(PassMembre.Text))
                {
                    //string prime = PassMembre.Text.Split('-')[0];
                    //string _membre = "";///los 4 numeros de la mebresia sin laletra
                    //for (int i = 0; i < prime.Length - 1; i++)
                    //{
                    //    _membre += prime[i];
                    //}
                    //string letra = prime[prime.Length - 1].ToString();
                    //string _conse = PassMembre.Text.Split('-')[1];
                    string json = @"{";
                    json += "correo:'" + App.Fn_Vacio(PassCorreo.Text) + "',\n";
                    json += "membre:'" + App.Fn_Vacio(PassMembre.Text) + "',\n";
                    //   json += "letra:'" + App.Fn_Vacio(letra) + "',\n";
                    //   json += "consecutivo:'" + App.Fn_Vacio(_conse) + "',\n";
                    json += "}";
                    JObject jsonper = JObject.Parse(json);
                    string _DirEnviar = "http://tratoespecial.com/restore_pass_dr.php";
                    StringContent _content = new StringContent(jsonper.ToString(), Encoding.UTF8, "application/json");
                    //await DisplayAlert("Envia", jsonper.ToString(), "Envia");
                    HttpClient _client = new HttpClient();
                    try
                    {
                        //mandar el json con el post
                        HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                        string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                        if (_respuesta == "0")
                        {
                            await DisplayAlert("Error", "Falló el correo", "Aceptar");
                        }
                        else if (_respuesta == "1")
                        {
                            await DisplayAlert("Exito", "Correo enviado correctamente", "Aceptar");
                            Fn_APagaPass(null, null);
                        }
                        else if (_respuesta == "32")
                        {
                            await DisplayAlert("Error", "membresia no coincide con el correo", "Aceptar");
                        }
                        else
                        {
                            await DisplayAlert("Error", _respuesta, "Aceptar");
                        }
                    }
                    catch (HttpRequestException exception)
                    {
                        await DisplayAlert("Error", exception.Message, "Aceptar");
                        Reinten.IsVisible = true;
                    }
                }
                else
                {
                    await DisplayAlert("Error", "No contiene el formato de membresia\n 0000D-0000", "Aceptar");
                }
            }
            _buton.IsEnabled = true;
        }
        #endregion
    }
}
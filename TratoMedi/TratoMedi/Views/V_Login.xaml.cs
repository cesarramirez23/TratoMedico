using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net.Http;
using TratoMedi.Personas;
using TratoMedi.Models;
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
            StackTodo.IsVisible = true;
            StackMen.IsVisible = false;
            Mensajes_over.Text = "";
            Reinten.IsVisible = false;
        }
        public async void Fn_Login(object sender, EventArgs _args)
        {
            if (Fn_Condiciones())
            {
                StackTodo.IsVisible = false;
                StackMen.IsVisible = true;
                Regex MembreRegex = new Regex(@"^([0-9]){4}([A-Z]){1}-([0-9]){4}$");
                if (MembreRegex.IsMatch(L_usu.Text))
                {
                    Mensajes_over.Text = " Comprobando informacion\n";
                    C_Login _login = new C_Login(L_usu.Text, L_pass.Text);
                    string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
                    //mostrar la pantalla con mensajes
                    //Mensajes_over.Text += _jsonLog;
                    HttpClient _client = new HttpClient();
                    string _DirEnviar = "";
                    HttpResponseMessage _respuestaphp;
                    string _respuesta;
                    StringContent _content;
                    if (L_usu.Text.Contains("P"))
                    {
                        _DirEnviar = NombresAux.BASE_URL + "login_promotor.php";
                        _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                        try
                        {
                            _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                            _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                            if (_respuesta == "0")
                            {
                                Mensajes_over.Text += "\n Error en los datos";
                                Reinten.IsVisible = true;
                            }
                            else if (_respuesta == "1" || _respuesta == "2")
                            {
                                _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                                try
                                {
                                    string _url = NombresAux.BASE_URL + "perfil_promotor.php";
                                    _respuestaphp = await _client.PostAsync(_url, _content);
                                    _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                    C_PerfProm v_perfil = JsonConvert.DeserializeObject<C_PerfProm>(_respuesta);
                                    v_perfil.Fn_Init();
                                    App.v_log = "2";
                                    App.v_membresia = L_usu.Text;
                                    App.Fn_GuardarDatos(v_perfil);
                                    Application.Current.MainPage = new V_MasterMenu(2, "Bienvenido "+ v_perfil.v_Nombre);
                                }
                                catch (Exception _ex)
                                {
                                    Mensajes_over.Text = "Error de conexion";
                                    Reinten.IsVisible = true;
                                }
                            }
                            else
                            {
                                Mensajes_over.Text = "Error de conexion";
                                Reinten.IsVisible = true;
                            }
                        }
                        catch (Exception ex)
                        {
                            Mensajes_over.Text = "Error de conexion";
                            Reinten.IsVisible = true;
                        }
                    }
                    else if(L_usu.Text.Contains("D"))
                    {
                        _DirEnviar = NombresAux.BASE_URL + "login_dr.php";
                        _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                        //mandar el json con el post
                        try
                        {
                            _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                            _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                            if (_respuesta == "0")
                            {
                                Mensajes_over.Text += "\n Error en los datos";
                                Reinten.IsVisible = true;
                            }
                            else if (_respuesta == "1" || _respuesta == "2")//login correcto, desgara perfil doctor
                            {
                                _DirEnviar = NombresAux.BASE_URL + "query_perfil_dr.php";
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
                                    //_nuePer.Fn_SetEspecTitulo();
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
                                    _DirEnviar = NombresAux.BASE_URL + "token_notification.php";
                                    _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                                    try
                                    {
                                        //mandar el json con el post
                                        _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                                        _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                        if (_respuesta == "1")
                                        {
                                            //Application.Current.MainPage = new V_MasterMenu(true, "Bienvenido " + App.v_perfil.v_Nombre);
                                            Application.Current.MainPage = new V_MasterMenu(1, "Bienvenido " + App.v_perfil.v_Nombre);
                                        }
                                        else
                                        {
                                            Mensajes_over.Text = "Error";
                                            Reinten.IsVisible = true;
                                        }
                                    }
                                    catch (Exception exception)
                                    {
                                        Mensajes_over.Text = "Error de conexion";
                                        Reinten.IsVisible = true;
                                    }//el token
                                }
                                catch (Exception ex)
                                {
                                    Mensajes_over.Text = "Error de conexion";
                                    Reinten.IsVisible = true;
                                }
                            }
                            else//no es 1  2
                            {
                                Mensajes_over.Text = "Error de conexion";
                                Reinten.IsVisible = true;
                            }
                        }
                        catch (Exception ex)
                        {
                            Mensajes_over.Text = "Error de conexion";
                            Reinten.IsVisible = true;
                        }
                    }
                    else{}
                }
                else
                {
                    await DisplayAlert("Error", "No contiene el formato de membresia\n 0000D-0000\n 0000P-0000", "Aceptar");
                    StackMen.IsVisible = false;
                    StackTodo.IsVisible = true;
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
        public async void Fn_Registro(object sender, EventArgs _args)
        {
            await Navigation.PushAsync(new V_Registro());
        }
        /// <summary>
        /// mostrar panel pass
        /// </summary>        
        public void Fn_Reenviar(object sender, EventArgs _args)
        {
            StackTodo.IsVisible = false;
            StackContra.IsVisible = true;
            //  PassCorreo.Text = "";
            // PassMembre.Text = "";
        }
        /// <summary>
        /// apaga el panel de contraseña
        /// </summary>
        public void Fn_APagaPass(object sender, EventArgs _args)
        {
            StackContra.IsVisible = false;
            StackTodo.IsVisible = true;
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
            {//4 numeros  1 letra  guion   4 numeros o mas
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
                    string _DirEnviar = NombresAux.BASE_URL + "restore_pass_dr.php";
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
                    catch (Exception exception)
                    {
                        await DisplayAlert("Error","Error, reintentarlo mas tarde", "Aceptar");
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
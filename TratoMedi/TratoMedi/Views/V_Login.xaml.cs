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
        }
        public async void Fn_Login(object sender, EventArgs _args)
        {
            if (Fn_Condiciones())
            {
                StackMen.IsVisible = true;
                Mensajes_over.Text = " Comprobando informacion\n";
                C_Login _login = new C_Login(L_usu.Text, L_pass.Text);
                //crear el json
                string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
                //mostrar la pantalla con mensajes
                Mensajes_over.Text += _jsonLog;
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
                            Console.Write(_jsonLog);
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
                                StackMen.IsVisible = false;
                                Application.Current.MainPage = new V_MasterMenu(true, "Bienvenido "+  App.v_perfil.v_Nombre );
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
    }
}
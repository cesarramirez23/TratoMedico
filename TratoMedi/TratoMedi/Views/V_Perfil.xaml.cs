using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Net.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using TratoMedi.Personas;

namespace TratoMedi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class V_Perfil : TabbedPage
    {
        bool v_editar = false;
        public V_Perfil ()
        {
        }
        public async void Fn_Editar(object sender, EventArgs _args)
        {
            v_editar = !v_editar;
            if (v_editar)
            {
               
                P_Editar.Text = "Cancelar";
                P_Guardar.IsVisible = true;

                P_Titulo.IsEnabled = true;
                P_Nom.IsEnabled = true;
                P_Ape.IsEnabled = true;
                P_sexoPick.IsEnabled = true;
                P_Esp.IsEnabled = true;
                P_Ced.IsEnabled = true;
                P_hor.IsEnabled = true;
                P_dom.IsEnabled = true;
                P_Ciu.IsEnabled = true;
                P_Tel.IsEnabled = true;
                P_Corr.IsEnabled = true;
                P_Descrip.IsEnabled = true;

                await Task.Delay(100);
            }
            else
            {
                P_Editar.Text = "Editar";
                P_Guardar.IsVisible = false;

                P_Titulo.IsEnabled = false;
                P_Nom.IsEnabled = false;
                P_Ape.IsEnabled = false;
                P_sexoPick.IsEnabled = false;
                P_Esp.IsEnabled = false;
                P_Ced.IsEnabled = false;
                P_hor.IsEnabled = false;
                P_dom.IsEnabled = false;
                P_Ciu.IsEnabled = false;
                P_Tel.IsEnabled = false;
                P_Corr.IsEnabled = false;
                P_Descrip.IsEnabled = false;

                App.Fn_CargarDatos();
            }
        }
        public async void Fn_Guardar(object sender, EventArgs _args)
        {
            Button _buton = (Button)sender;
            _buton.IsEnabled = false;
            //se crea el json con la clase mas lel folio y membresia
            string json = @"{";
            json += "idmembre:'" + App.v_membresia + "',\n";
            json += "titulo:'" + App.Fn_Vacio(P_Titulo.Text) + "',\n";
            json += "nombre:'" + App.Fn_Vacio(P_Nom.Text) + "',\n";
            json += "ape:'" + App.Fn_Vacio(P_Ape.Text) + "',\n";
            json += "espe:'" + App.Fn_Vacio(P_Esp.Text) + "',\n";
            json += "dom:'" + App.Fn_Vacio(P_dom.Text) + "',\n";
            json += "horario:'" + App.Fn_Vacio(P_hor.Text) + "',\n";
            json += "ciudad:'" + App.Fn_Vacio(P_Ciu.Text) + "',\n";
            json += "tel:'" + App.Fn_Vacio(P_Tel.Text) + "',\n";
            json += "correo:'" + App.Fn_Vacio(P_Corr.Text) + "',\n";
            json += "cedula:'" + App.Fn_Vacio(P_Ced.Text) + "',\n";
            json += "descrip:'" + App.Fn_Vacio(P_Descrip.Text) + "',\n";
            json += "idsexo:'" + P_sexoPick.SelectedIndex + "',\n";
            json += "}";

            JObject jsonPer = JObject.Parse(json);
            StringContent _content = new StringContent(jsonPer.ToString(), Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            string _url = "https://useller.com.mx/trato_especial/update_perfil.php";
            HttpResponseMessage _respuestphp = await _client.PostAsync(_url, _content);
            string _result = _respuestphp.Content.ReadAsStringAsync().Result;

            if (_result == "1")
            {
                await DisplayAlert("Actualizado", "Informacion Guardado con éxito", "Aceptar");
                Fn_Editar(sender, _args);
                //volver a cargar la informacion
                json = @"{";
                json += "membre:'" + App.v_membresia + "',\n";
                json += "}";
                

                //HACIENDO EL QUERY para la info del GENERAL
                _client = new HttpClient();
                string _DirEnviar = "https://useller.com.mx/trato_especial/query_perfil.php";
                _content = new StringContent(json.ToString(), Encoding.UTF8, "application/json");
                //mandar el json con el post
                _respuestphp = await _client.PostAsync(_DirEnviar, _content);
                string _respuesta = await _respuestphp.Content.ReadAsStringAsync();
                C_Medico _nuePer = JsonConvert.DeserializeObject<C_Medico>(_respuesta);
                App.Fn_GuardarDatos(_nuePer);
                App.Fn_CargarDatos();
            }
            else if (_result == "0")
            {
                await DisplayAlert("Error en actualizar", _result + "\n" + jsonPer.ToString(), "Aceptar");
            }
            else
            {
                await DisplayAlert("NO 0 NI 1", _result + "\n" + jsonPer.ToString(), "Aceptar");

            }
            _buton.IsEnabled = true;
        }


    }
}
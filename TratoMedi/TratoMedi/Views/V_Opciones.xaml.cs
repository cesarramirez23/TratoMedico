﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

using System.Net.Http;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Opciones : ContentPage
	{
        Regex regex = new Regex(@"^(?=.*[A-Za-z])(?=.*\w)[A-Za-z\w]{8,}$");
        public V_Opciones()
        {
            InitializeComponent();
            App.Fn_CargarDatos();

            C_Membre.Text = App.v_membresia;
            //C_fecha.Text = App.v_perfil.v_vig;
            //Minimum eight characters, at least one uppercase letter, one lowercase letter and one number:
            regex = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");
        }
        public void FN_passCambio(object sender, TextChangedEventArgs args)
        {
            if (string.IsNullOrEmpty(P_Nueva.Text) || string.IsNullOrWhiteSpace(P_Nueva.Text))
            {
                P_mensaje.IsVisible = true;
                P_mensaje.Text = "Este campo no puede estar vacio o con espacios";
                P_but.IsEnabled = false;
            }
            else
            {
                if (!regex.IsMatch(P_Nueva.Text))
                {
                    P_mensaje.IsVisible = true;
                    P_mensaje.Text = "Debe contener al menos una mayuscula,una minuscula y un numero";
                    P_but.IsEnabled = false;
                }
                else
                {
                    P_mensaje.IsVisible = false;
                    P_but.IsEnabled = true;
                }
            }
        }
        public async void Fn_CambioPass(object sender, EventArgs _args)
        {
            Button _buton = (Button)sender;
            _buton.IsEnabled = false;
            if (string.IsNullOrEmpty(P_Nueva.Text) || string.IsNullOrWhiteSpace(P_Nueva.Text))
            {
                P_actual.BackgroundColor = Color.Red;
            }
            else
            {
                if (Fn_validar(P_actual.Text, P_Nueva.Text))
                {
                    P_actual.BackgroundColor = Color.Transparent;
                    if (string.IsNullOrEmpty(P_Nueva.Text) || string.IsNullOrWhiteSpace(P_Nueva.Text))
                    {
                        P_mensaje.IsVisible = true;
                        P_mensaje.Text = "Este campo no puede estar vacio o con espacios";
                    }
                    else
                    {
                        P_mensaje.IsVisible = false;
                        string json = @"{";
                        json += "membre:'" + App.v_membresia + "',\n";
                        json += "password:'" + P_actual.Text + "',\n";
                        json += "newpassword:'" + P_Nueva.Text + "',\n";
                        json += "}";
                        JObject jsonPer = JObject.Parse(json);
                        StringContent _content = new StringContent(jsonPer.ToString(), Encoding.UTF8, "application/json");
                        HttpClient _client = new HttpClient();
                        string _url = "http://tratoespecial.com/password_change_dr.php";
                        try
                        {
                            HttpResponseMessage _respuestphp = await _client.PostAsync(_url, _content);
                            string _result = _respuestphp.Content.ReadAsStringAsync().Result;
                            if (_result == "1")
                            {
                                await DisplayAlert("Exito", "Cambio de contraseña exitoso", "Aceptar");
                                P_actual.Text = "";
                                P_Nueva.Text = "";
                                P_mensaje.Text = "";
                                P_mensaje.IsVisible = false;
                            }
                            else if (_result == "8")
                            {
                                await DisplayAlert("Error", "No se pudo actualizar, por favor intentalo mas tarde", "Aceptar");
                            }
                            else if (_result == "9")
                            {
                                await DisplayAlert("Error", "La información proporcionada como contraseña actual, no coincide con la información del usuario",
                                    "Aceptar");
                            }
                            else if (_result == "10")
                            {
                                await DisplayAlert("respuesta", "Usuario no encontrado, por favor intentalo mas tarde ", "Aceptar");
                            }
                        }
                        catch (HttpRequestException exception)
                        {
                            await DisplayAlert("Error", exception.Message, "Aceptar");
                            P_but.IsEnabled = false;
                            P_actual.Text = "";
                            P_Nueva.Text = "";
                        }
                    }
                }
                else
                {
                    P_mensaje.IsVisible = true;
                }
            }
            //if (Fn_validar(P_actual.Text, P_Nueva.Text))
            //{
            //    await DisplayAlert("bien", "bien", "bien");
            //}
            //else
            //{
            //    await DisplayAlert("Error", v_validar, "Aceptar");

            //}
        }
        public bool Fn_validar(string _actual, string _nueva)
        {
            if (_actual == _nueva)
            {
                P_mensaje.Text = "La nueva contraseña no puede ser la misma que la actual";
                return false;
            }
            else
            {

                if (!regex.IsMatch(_nueva))
                {
                    P_mensaje.Text = "Debe contener al menos una mayuscula,una minuscula y un numero, minimo 8 de longitud";
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }
        /// <summary>
        /// prende apaga el al stak para cambio de contraseña
        /// </summary>
        public void MostrarPass(object sender, EventArgs _Args)
        {
            StackPass.IsVisible = !StackPass.IsVisible;
        }
    }
}
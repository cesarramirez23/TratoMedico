﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Newtonsoft.Json;
using System.Net.Http;
using TratoMedi.Varios;
using TratoMedi.Models;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Registro : ContentPage
	{
        c_RegOpciones v_opciones = new c_RegOpciones();
        VisualElement _el;
        string[] v_TitArr;
        string[] v_EspeArr;
        string[] v_CiudArr;
        string[] v_EstArr;
		public V_Registro ()
		{
			InitializeComponent ();            
		}
        protected override void OnAppearing()
        {
            base.OnAppearing();
            Fn_GetListas();
        }
        async void Fn_GetListas()
        {
            try
            {
                HttpClient _client = new HttpClient();
                HttpResponseMessage _respuestaphp;
                _respuestaphp = await _client.PostAsync("https://tratoespecial.com/queries_titulos.php", null);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                v_opciones = JsonConvert.DeserializeObject<c_RegOpciones>(_respuesta);
                v_TitArr = new string[v_opciones.v_titulos.Count];
                for (int i = 0; i < v_opciones.v_titulos.Count; i++)
                {
                    v_TitArr[i] = v_opciones.v_titulos[i].v_nombreTitulo;
                }
                PickTitulo.ItemsSource = v_TitArr;

                v_CiudArr = new string[v_opciones.v_ciudad.Count];
                for (int i = 0; i < v_opciones.v_ciudad.Count; i++)
                {
                    v_CiudArr[i] = v_opciones .v_ciudad[i].v_ciudad;
                }
                PickCiudad.ItemsSource = v_CiudArr;

                v_EspeArr = new string[v_opciones.v_espe.Count];
                for (int i = 0; i < v_opciones.v_espe.Count; i++)
                {
                    v_EspeArr[i] = v_opciones.v_espe[i].v_nombreEspec;
                }
                PickEspe.ItemsSource = v_EspeArr;

                v_EstArr = new string[v_opciones.v_estados.Count];
                for (int i = 0; i < v_opciones.v_estados.Count; i++)
                {
                    v_EstArr[i] = v_opciones.v_estados[i].v_estado;
                }
                PickEstado.ItemsSource = v_EstArr;
            }
            catch (Exception _ex)
            {

            }
        }
        private async void Fn_SetTitulo(object sender, EventArgs e)
        {
            await DisplayActionSheet("Elige titulo", "Cancelar", null, v_CiudArr);
        }
        private async void Fn_SetEspe(object sender, EventArgs e)
        {
            await DisplayActionSheet("Elige Especialidad", "Cancelar", null, v_TitArr);
        }
        private async void Fn_SetCiudad(object sender, EventArgs e)
        {
            await DisplayActionSheet("Elige Ciudad", "Cancelar", null, v_CiudArr);
        }
        private async void Fn_Avanzar(object sender, EventArgs e)
        {
            if (Fn_Condiciones())
            {
                //especialidad   mandarle el index
                int _idTit = -1;
                int _idciud = -1;
                int _idEsp = -1;
                int _idEstado = -1;
                for (int i = 0; i < v_opciones.v_titulos.Count; i++)
                {
                    if (PickTitulo.SelectedItem.ToString() == v_opciones.v_titulos[i].v_nombreTitulo)
                        _idTit = i;
                }
                for (int i = 0; i < v_opciones.v_ciudad.Count; i++)
                {
                    if (PickCiudad.SelectedItem.ToString() == v_opciones.v_ciudad[i].v_ciudad)
                        _idciud = i;
                }
                for (int i = 0; i < v_opciones.v_espe.Count; i++)
                {
                    if (PickEspe.SelectedItem.ToString() == v_opciones.v_espe[i].v_nombreEspec)
                        _idEsp = i;
                }
                for (int i = 0; i < v_opciones.v_estados.Count; i++)
                {
                    if (PickEstado.SelectedItem.ToString() == v_opciones.v_estados[i].v_estado)
                        _idEstado = i;
                }
                string _hor = PickInicio.Time.ToString(@"hh\-mm") + "/" + PickFin.Time.ToString(@"hh\-mm");
                C_MedRegistro _reg = new C_MedRegistro(EntNombre.Text, EntApe.Text, PickSexo.SelectedIndex, _idTit.ToString(), _idEsp.ToString(),
                    EntDom.Text, _idciud.ToString(), EntCedula.Text, EntTel.Text, EntCorreo.Text, _hor, _idEstado.ToString());
                string _json = JsonConvert.SerializeObject(_reg);
                try
                {
                    HttpClient _client = new HttpClient();
                    StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
                    HttpResponseMessage _respuestaphp = await _client.PostAsync("https://tratoespecial.com/registro_dr.php", _content);
                    string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    c_Mensaje _mensaje = JsonConvert.DeserializeObject<c_Mensaje>(_respuesta);
                    if (_mensaje.v_code=="1")
                    {
                        await DisplayAlert("Exito", "Registrado correctamente", "Aceptar");
                    }
                    else
                    {
                        await DisplayAlert("Error", "Error al registrar, Reintentarlo", "Aceptar");
                    }
                //registro_dr   
                }
                catch(Exception _ex)
                {
                    await DisplayAlert("Error", "Error al registrar, Reintentarlo", "Aceptar");
                }
            }
            else
            {
                await ScrollTodo.ScrollToAsync(_el, ScrollToPosition.Start, true);
            }
        }
        bool Fn_Condiciones()
        {
            int _cont = 0;
            _el = null;
            if (string.IsNullOrEmpty(EntCorreo.Text) || string.IsNullOrWhiteSpace(EntCorreo.Text))
            {
                EntCorreo.BackgroundColor = Color.Red;
                _el = EntCorreo;
                _cont++;
            }
            else
            {
                EntCorreo.BackgroundColor = Color.Transparent;
            }
            if (string.IsNullOrEmpty(EntTel.Text) || string.IsNullOrWhiteSpace(EntTel.Text))
            {
                EntTel.BackgroundColor = Color.Red;
                _el = EntTel;
                _cont++;
            }
            else
            {
                EntTel.BackgroundColor = Color.Transparent;
            }
            if (string.IsNullOrEmpty(EntCedula.Text) || string.IsNullOrWhiteSpace(EntCedula.Text))
            {
                EntCedula.BackgroundColor = Color.Red;
                _el = EntCedula;
                _cont++;
            }
            else
            {
                EntCedula.BackgroundColor = Color.Transparent;
            }
            if (PickCiudad.SelectedIndex==-1)
            {
                PickCiudad.BackgroundColor = Color.Red;
                _el = PickCiudad;
                _cont++;
            }
            else
            {
                PickCiudad.BackgroundColor = Color.Transparent;
            }
            if (string.IsNullOrEmpty(EntDom.Text) || string.IsNullOrWhiteSpace(EntDom.Text))
            {
                EntDom.BackgroundColor = Color.Red;
                _el = EntDom;
                _cont++;
            }
            else
            {
                EntDom.BackgroundColor = Color.Transparent;
            }
            if (PickEspe.SelectedIndex == -1)
            {
                PickEspe.BackgroundColor = Color.Red;
                _el = PickEspe;
                _cont++;
            }
            else
            {
                PickEspe.BackgroundColor = Color.Transparent;
            }
            if (PickTitulo.SelectedIndex == -1)
            {
                PickTitulo.BackgroundColor = Color.Red;
                _el = PickTitulo;
                _cont++;
            }
            else
            {
                PickTitulo.BackgroundColor = Color.Transparent;
            }
            if (PickSexo.SelectedIndex == -1)
            {
                PickSexo.BackgroundColor = Color.Red;
                _el = PickSexo;
                _cont++;
            }
            else
            {
                PickSexo.BackgroundColor = Color.Transparent;
            }
            if (PickEstado.SelectedIndex == -1)
            {
                PickEstado.BackgroundColor = Color.Red;
                _el = PickEstado;
                _cont++;
            }
            else
            {
                PickEstado.BackgroundColor = Color.Transparent;
            }
            if (string.IsNullOrEmpty(EntApe.Text) || string.IsNullOrWhiteSpace(EntApe.Text))
            {
                EntApe.BackgroundColor = Color.Red;
                _el = EntApe;
                _cont++;
            }
            else
            {
                EntApe.BackgroundColor = Color.Transparent;
            }
            if (string.IsNullOrEmpty(EntNombre.Text) || string.IsNullOrWhiteSpace(EntNombre.Text))
            {
                EntNombre.BackgroundColor = Color.Red;
                _el = EntNombre;
                _cont++;
            }
            else
            {
                EntNombre.BackgroundColor = Color.Transparent;
            }
            
            if (_cont > 0)
                return false;
            else
                return true;
        }
    }
}
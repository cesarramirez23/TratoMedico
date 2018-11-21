﻿using System;
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
        Cita v_cita;
        ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();
        int v_editando = -1;

        public  V_Paciente (bool _scan, string _membresia)
		{
			InitializeComponent ();
            if(_scan )
            {
                Title = "Lector";
                Fn_CAmbioStack(false, false, false);
                
                Scanner.IsVisible = true;
                Scanner.IsScanning = true;
                OverlayScan.IsVisible = true;

               // ListaCita.IsVisible = false;
                aaaa.IsVisible = false;
            }
            else
            {
                Title = "En consulta";
                GridLEctor.IsVisible = false;
                OverlayScan.IsVisible = false;
                Scanner.IsVisible = false;
                Scanner.IsScanning = false;
                aaaa.IsVisible = true;
                CargarGen();
                CargarMed();
                string[] _Arr = _membresia.Split('/');
                if(_Arr[1]=="1")//ya eligio su cita
                {
                    ListaCita.IsVisible = false;
                    Fn_CAmbioStack(true, false, false);
                }
                else
                {
                    ListaCita.IsVisible = true;
                    Fn_CAmbioStack(false, false, false);
                    ListaCita.ItemsSource = App.Fn_GetCitas(_Arr[0]);
                }
            }
        }
        public void Fn_CancelMedi(object sender, EventArgs _Args)
        {
            Fn_Limpiar();
            Fn_CAmbioStack(true, false, false);

        }
        public  async void Fn_GuarMedi(object sender, EventArgs _args)
        {
            Button _but = (Button)sender;
            _but.IsEnabled = false;
            Medicamentos _nuevo = new Medicamentos();
            _nuevo.v_nombre =App.Fn_Vacio( N_nombre.Text);
            //tiene que ser un numero no vacio
            if (string.IsNullOrEmpty(N_Perio.Text) || string.IsNullOrWhiteSpace(N_Perio.Text))
            {
                N_Perio.Text = "0";
            }
            _nuevo.v_periodo= float .Parse(   N_Perio.Text);

            if (string.IsNullOrEmpty(N_Tiem.Text) || string.IsNullOrWhiteSpace(N_Tiem.Text))
            {
                N_Tiem.Text = "0";
            }
            _nuevo.v_tiempo= float.Parse( N_Tiem.Text);

            _nuevo.v_extra =App.Fn_Vacio( N_Extra.Text );
            // si no esta editando agregarlo, sino darle diferente valor
            if(v_editando>-1)
            {
                v_medicamentos[v_editando] = _nuevo;
                v_editando = -1;
            }
            else
            {
                v_medicamentos.Add(_nuevo);
            }
            App.Fn_GuardarDatos(v_medicamentos);
            await Fn_CargarMedica();
            Fn_Limpiar();
            await Task.Delay(100);
            _but.IsEnabled = true;
            Fn_CAmbioStack(true, false, false);
        }
        public async void Actualizar(object sender, EventArgs _args)
        {
            Todos.ItemsSource = null; 
            await Fn_CargarMedica();
            Fn_CAmbioStack(false, false, false);
            Fn_CAmbioStack(false, false, true);
            Todos.ItemsSource = v_medicamentos;
        }
        public void Fn_NuevoMed(object sender, EventArgs _Args)
        {
            v_editando=-1;
            Fn_CAmbioStack( false, true, false);
        }
        public async void Fn_MostrarMed(object sender, EventArgs _Args)
        {//|
            Todos.ItemsSource = null;
            await Fn_CargarMedica();
            await Task.Delay(100);
            Fn_CAmbioStack( false, false,true);
            Fn_CAmbioStack( false, false,false);
            await Task.Delay(10);
            Fn_CAmbioStack( false, false,true);
            Todos.ItemsSource = v_medicamentos;
        }
        /// <summary>
        /// terminar la cita y actualizar su estado 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="_args"></param>
        public async void Fn_Terminar(object sender, EventArgs _args)
        {
        // membresia completa  1810I-0558 [JsonProperty("ID_paciente")]
        //public string v_pacienteId { get; set; }
        //[JsonProperty("folio")]
        //public string v_folio { get; set; }
        //id de la cita
        //medicamentos la lista




        /* Cita _cita = new Cita("0", v_cita.v_fechaDate.Date,v_cita.v_hora, v_cita.v_idCita);
         string _json = JsonConvert.SerializeObject(_cita, Formatting.Indented);
        // await DisplayAlert("Enviar", _json, "aceptar");
         HttpClient _client = new HttpClient();
         string _DirEnviar = "http://tratoespecial.com/update_citas.php";
         StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
         try
         {  //getting exception in the following line    //HttpResponseMessage upd_now_playing = await cli.PostAsync(new Uri("http://ws.audioscrobbler.com/2.0/", UriKind.RelativeOrAbsolute), tunp);
             HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
             if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
             {
                 string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                 if (_respuesta == "1")
                 {
                     await DisplayAlert("Exito", "Cambios generados correctamente", "Aceptar");
                     await Navigation.PopAsync();
                 }
                 else
                 {
                     await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                 }
             }
         }
         catch (HttpRequestException ex)
         {
             await DisplayAlert("Error", ex.Message, "Aceptar");
         }*/
        //eliminar lo guardado local y enviar su informacion de medicamentos
        App.Fn_Terminaconsullta();

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
        void Fn_SoloNumero(object sender, TextChangedEventArgs _args)
        {
            //-  ,  _  .
            Entry _entry = (Entry)sender;
            if(_entry.Text.Length>0)
            {
                char _ultimo = _entry.Text[_entry.Text.Length - 1];
                if (_ultimo == '-' || _ultimo == ',' || _ultimo == '_' )//|| _ultimo == '.' )//os valores que se van a eliminar
                {
                    if(_entry.Text.Length==1)
                    {
                        _entry.Text = "";
                    }
                    else
                    {
                        _entry.Text = _entry.Text.Remove(_entry.Text.Length - 1); // remove last char
                    }
                }
            }
        }
        public async void Fn_Eliminar(object sender, EventArgs _args)
        {
            Button button = sender as Button;
            Medicamentos _elim = button.BindingContext as Medicamentos;
            if(_elim!= null)
            {
                v_medicamentos.Remove(_elim);
                App.Fn_GuardarDatos(v_medicamentos);
                await Fn_CargarMedica();
                Todos.ItemsSource = null;
                await Task.Delay(100);
                Todos.ItemsSource = v_medicamentos;
            }
            await Task.Delay(100);
        }
        public void Fn_Editar(object sender, EventArgs _args)
        {
            Button button = sender as Button;
            Medicamentos _medi = button.BindingContext as Medicamentos;
            if (_medi != null)
            {
                N_nombre.Text = _medi.v_nombre;
                N_Perio.Text = _medi.v_periodo.ToString();
                N_Tiem.Text = _medi.v_tiempo.ToString();
                N_Extra.Text = _medi.v_extra;
                for (int i = 0; i < v_medicamentos.Count; i++)
                {
                    if(v_medicamentos[i]== _medi)
                    {
                        v_editando = i;
                    }
                }
                Fn_CAmbioStack(false, true, false);
            }
        }
        public async void Fn_TApMedi(object sender, ItemTappedEventArgs _args)
        {
            Medicamentos _item = _args.Item as Medicamentos;
            await DisplayAlert("Medicamento", _item.Fn_Info(),"Aceptar");
        }
        private async void Fn_Scan(ZXing.Result result)
        {
            //deja de escanear
            Scanner.IsScanning = false;
            //crear el cliente
            HttpClient _client = new HttpClient();
            string _DirEnviar = "";
            Perf _info = JsonConvert.DeserializeObject<Perf>(result.Text);
            if(_info.v_fol!="0")//si no es el titular, mostrar algo de informacion del titular
            {
                Console.Write("No es el titular, descargar perfil del principal");
            }
            ///descargar la info del que escanean su codigo
            StringContent _content = new StringContent(result.Text, Encoding.UTF8, "application/json");
            string _respuesta;
            HttpResponseMessage _respuestaphp;
            try
            {

                //baja la info de perfil general
                _DirEnviar=  "http://tratoespecial.com/query_perfil.php";
                //mandar el json con el post
                _respuestaphp= await _client.PostAsync(_DirEnviar, _content);
                _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                C_PerfilGen _nuePer = JsonConvert.DeserializeObject<C_PerfilGen>(_respuesta);
                App.Fn_GuardarDatos(_nuePer);

                try
                {
                    _DirEnviar = "http://tratoespecial.com/query_perfil_medico.php";
                    _content = new StringContent(result.Text, Encoding.UTF8, "application/json");
                    //mandar el json con el post
                    _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                    _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    C_PerfilMed _nuePerMEd = JsonConvert.DeserializeObject<C_PerfilMed>(_respuesta);
                    App.Fn_GuardarDatos(_nuePerMEd);
                    Device.BeginInvokeOnMainThread(async () =>
                    {
                        App.Fn_GuardarDatos("1/"+_info.v_membre+"/0");
                        Scanner.IsScanning = false;
                        await Task.Delay(100);
                        //MessagingCenter.Send<V_Paciente, string>(this, "Fn_Paci", "1");
                        await Navigation.PopAsync();
                        await Navigation.PushAsync(new V_Paciente(false,_info.v_membre+ "/0") { Title =App.v_pergen.v_Nombre });
                     });
                }
                catch(HttpRequestException ex)
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
                    App.Fn_GuardarDatos("0");
                }


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
                App.Fn_GuardarDatos("0");
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
        void Fn_Limpiar()
        {
            N_nombre.Text = "";
            N_Perio.Text = "";
            N_Tiem.Text = "";
            N_Extra.Text = "";
        }
        /// <summary>
        /// perfil nuevo nota
        /// </summary>
        /// <param name="_perfil"></param>
        /// <param name="_nuevo"></param>
        /// <param name="_nota"></param>
        void Fn_CAmbioStack(bool _perfil, bool _nuevo, bool _nota)
        {
            StackPerfiles.IsVisible = _perfil;
            StackNuevo.IsVisible = _nuevo;
            StackNota.IsVisible = _nota;
        }
        public async Task Fn_CargarMedica()
        {
            string _medi = App.Current.Properties[NombresAux.v_medicamentos] as string;
            App.v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_medi);
            v_medicamentos = App.v_medicamentos;
            await Task.Delay(100);
        }

        public async void Fn_SelectCita(object sender, ItemTappedEventArgs _Args)
        {
            Cita _selec = _Args.Item as Cita;
            if(_selec.v_estado=="3")//solo elegir las que ya esten aceptadas
            {
                bool opcion= await DisplayAlert("Continuar", "Seguro de continuar esta cita?", "Continuar", "Elegir otra");
                if(opcion)
                {
                    ListaCita.IsVisible = false;
                    App.Fn_GuardarDatos(App.v_paciente+"/1");
                    v_cita = _selec;
                    Fn_CAmbioStack(true, false, false);
                }
            }
            else
            {
                await DisplayAlert("Error", "Esta cita no está aceptada, elige otra"+ _selec.v_estado, "Aceptar");
            }

        }
    }
}
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
using Newtonsoft.Json.Linq;
using TratoMedi.Varios;
using System.Collections.ObjectModel;


namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)] 
	public partial class V_Paciente : ContentPage
	{
        Cita v_cita;
        Perf v_Info = new Perf();
        ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();
        ObservableCollection<C_NotaMed> v_histo = new ObservableCollection<C_NotaMed>();
        int v_editando = -1;

        protected  override void OnAppearing()
        {
            base.OnAppearing();
            Scanner.IsScanning = true;
            //if (App.v_paciente[0] == "0")//abrir el lector
            //{
            //    Title = "Lector";
            //    Fn_CAmbioStack(false, false, false);

            //    Scanner.IsVisible = true;
            //    Scanner.IsScanning = true;
            //    OverlayScan.IsVisible = true;
            //    Cont1.Title = "Lector";
            //    Cont2.Title = "Historial";
            //    Cont2.IsVisible = false;
            //    // ListaCita.IsVisible = false;
            //    StackListaCita.IsVisible = false;
            //    aaaa.IsVisible = false;
            //}
            //else
            //{
            //    Title = "En consulta";
            //    Cont2.IsVisible = true;
            //    Cont1.Title = "Consulta";
            //    Cont2.Title = "Historial";
            //    GridLEctor.IsVisible = false;
            //    OverlayScan.IsVisible = false;
            //    Scanner.IsVisible = false;
            //    aaaa.IsVisible = true;
            //    CargarGen();
            //    CargarMed();
            //    if (App.v_paciente[2] == "1")//ya eligio su cita
            //    {
            //        Fn_CargaCita();
            //        //ListaCita.IsVisible = false;
            //        StackListaCita.IsVisible = false;
            //        Fn_CAmbioStack(true, false, false);
            //        await Fn_CargarMedica();
            //    }
            //    else
            //    {
            //        //ListaCita.IsVisible = true;
            //        StackListaCita.IsVisible = true;
            //        Fn_CAmbioStack(false, false, false);
            //        //las citas no descarga nada, busca en las guardadas de cada doctor
            //        ListaCita.ItemsSource = App.Fn_GetCitas(App.v_paciente[1]);
            //    }
            //}

        }
        public  V_Paciente ()//(bool _scan, Perf _info  )
		{
			InitializeComponent ();
            //if(_scan )
            //{
            //    Title = "Lector";
            //    Fn_CAmbioStack(false, false, false);
                
            //    Scanner.IsVisible = true;
            //    Scanner.IsScanning = true;
            //    OverlayScan.IsVisible = true;

            //    Cont2.IsVisible = false;
            //    // ListaCita.IsVisible = false;
            //    StackListaCita.IsVisible = false;
            //    aaaa.IsVisible = false;
            //    Cont1.Title = "Lector";
            //    Cont2.Title = "Historial";


            //}
            //else
            //{
            //    Title = "En consulta";
            //    Cont2.IsVisible = true;
            //    Cont1.Title = "Consulta";
            //    Cont2.Title = "Historial";
            //    GridLEctor.IsVisible = false;
            //    OverlayScan.IsVisible = false;
            //    Scanner.IsVisible = false;
            //    aaaa.IsVisible = true;
            //    if(_info!= null)
            //    {
            //    v_Info = _info;
            //    }


            //    CargarGen();
            //    CargarMed();
            //    if (App.v_paciente[2] == "1")//ya eligio su cita
            //    {
            //        Fn_CargaCita();
            //        //ListaCita.IsVisible = false;
            //        StackListaCita.IsVisible = false;
            //        Fn_CAmbioStack(true, false, false);
            //        Fn_CargarMedica();
            //    }
            //    else
            //    {
            //        //ListaCita.IsVisible = true;
            //        StackListaCita.IsVisible = true;
            //        Fn_CAmbioStack(false, false, false);
            //        //las citas no descarga nada, busca en las guardadas de cada doctor
            //        var _temp = App.Fn_GetCitas(App.v_paciente[1]);
            //        if (_temp.Count > 0)
            //        {
            //            ListaCita.ItemsSource = _temp;
            //        }
            //        else
            //        {
            //            ListaCita.Header = "No se Encontraron citas";
            //        }
                    
            //    }
            //}

        }
        private async void Fn_Scan(ZXing.Result result)
        {
            //deja de escanear
            //Scanner.IsScanning = false;
            //crear el cliente
            HttpClient _client = new HttpClient();
            string _DirEnviar = "";
            string _decrypt = NombresAux.DecryptString(result.Text, "PassCesar123TE");
            Perf _info = new Perf();

            try
            {
                _info = JsonConvert.DeserializeObject<Perf>(_decrypt);
                Device.BeginInvokeOnMainThread(async () =>
                {//no poner el scaneer en false
                    await Navigation. PushAsync(new V_Info( _info));
                });
            }
            catch
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await DisplayAlert("Error de lectura", "Error buscando información", "Aceptar");
                });
            }

            /*
            try
            {
                _info = JsonConvert.DeserializeObject<Perf>(_decrypt);
                if (_info.v_fol != "0")//si no es el titular, mostrar algo de informacion del titular
                {
                    Console.Write("No es el titular, descargar perfil del principal");
                }
                ///descargar la info del que escanean su codigo
                ///
                //StringContent _content = new StringContent(result.Text, Encoding.UTF8, "application/json");
                StringContent _content = new StringContent(_decrypt, Encoding.UTF8, "application/json");
                string _respuesta;
                HttpResponseMessage _respuestaphp;
                try
                {
                    //baja la info de perfil general
                    _DirEnviar = NombresAux.BASE_URL+ "query_perfil.php";
                    //mandar el json con el post
                    _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                    _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    C_PerfilGen _nuePer = JsonConvert.DeserializeObject<C_PerfilGen>(_respuesta);
                    App.Fn_GuardarDatos(_nuePer);
                    try
                    {
                        _DirEnviar = NombresAux.BASE_URL+ "query_perfil_medico.php";
                        _content = new StringContent(_decrypt, Encoding.UTF8, "application/json");
                        //mandar el json con el post
                        _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                        _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                        C_PerfilMed _nuePerMEd = JsonConvert.DeserializeObject<C_PerfilMed>(_respuesta);
                        App.Fn_GuardarDatos(_nuePerMEd);


                        ///cargar el historial de medicamentos 
                        _client = new HttpClient();
                        Cita _cita = new Cita(_info.v_membre, _info.v_fol, "0");
                        string _json = JsonConvert.SerializeObject(_cita);
                        _DirEnviar = NombresAux.BASE_URL+ "get_medicamentos.php";
                        // await DisplayAlert("ENVIA PARA medicamentos", _json, "acep");
                        _content = new StringContent(_json, Encoding.UTF8, "application/json");
                        try
                        {
                            _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                            if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                            {
                                _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                // await DisplayAlert("LLega get medicamentos", _respuesta, "acep");
                                v_histo = JsonConvert.DeserializeObject<ObservableCollection<C_NotaMed>>(_respuesta);
                                for (int i = 0; i < v_histo.Count; i++)
                                {
                                    v_histo[i].Fn_SetEspe();
                                }
                                App.Fn_GuardarDatos(v_histo);
                                //ListaHisto.ItemsSource = v_histo;
                                Device.BeginInvokeOnMainThread(async () =>
                                {
                                    App.Fn_GuardarDatos(new string[] { "1", _info.v_membre, "0" });
                                    Scanner.IsScanning = false;
                                    await Task.Delay(100);

                                    //Scanner.IsScanning = false;
                                    await Navigation.PushAsync(new V_Info(_nuePer, _nuePerMEd, _info, v_histo));

                                    //MessagingCenter.Send<V_Paciente, string>(this, "Fn_Paci", "1");
                                    await Navigation.PopAsync();
                                    await Navigation.PushAsync(new V_Paciente(false, _info) { Title = App.v_pergen.v_Nombre });
                                });
                            }
                        }
                        catch 
                        {
                            if (App.v_notasMed.Count > 0)
                            {
                                v_histo = App.v_notasMed;
                                ListaHisto.ItemsSource = v_histo;
                            }
                            Device.BeginInvokeOnMainThread(async () =>
                            {
                                //await Navigation.PopAsync();
                                //await DisplayAlert("Scanned Barcode", result.Text, "OK");
                                await DisplayAlert("Error", "Error en tarjeta virtual", "Aceptar");
                                // StackPerfil.IsVisible = true;
                                Scanner.IsScanning = true;
                                Scanner.IsVisible = true;
                            });
                            App.Fn_GuardarDatos(new string[] { "0", "", "0" });
                        }
                    }
                    catch
                    {
                        Device.BeginInvokeOnMainThread(async () =>
                        {
                            //await Navigation.PopAsync();
                            //await DisplayAlert("Scanned Barcode", result.Text, "OK");
                            await DisplayAlert("Error", "Error en tarjeta virtual", "Aceptar");
                            // StackPerfil.IsVisible = true; 
                            Scanner.IsVisible = true;
                            Scanner.IsScanning = true;
                            OverlayScan.IsVisible = true;
                        });
                        App.Fn_GuardarDatos(new string[] { "0", "", "0" });
                    }
                }
                catch 
                {
                    Device.BeginInvokeOnMainThread(async () =>
                    {
                        //await Navigation.PopAsync();
                        //await DisplayAlert("Scanned Barcode", result.Text, "OK");
                        await DisplayAlert("Error", "Error en tarjeta virtual", "Aceptar");
                        // StackPerfil.IsVisible = true;
                        Scanner = new ZXingScannerView();
                        Scanner.IsVisible = true;
                        Scanner.IsScanning = true;
                        OverlayScan.IsVisible = true;
                    });
                    App.Fn_GuardarDatos(new string[] { "0", "", "0" });
                }//primer intento de buscar info
            }
            catch
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    //await Navigation.PopAsync();
                    //await DisplayAlert("Scanned Barcode", result.Text, "OK");
                    await DisplayAlert("Error", "Error al leer la tarjeta virtual ", "Aceptar");
                    // StackPerfil.IsVisible = true;
                    Scanner.IsScanning = true;
                    Scanner.IsVisible = true;
                });
            }
            */
        }

        /*
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
            _nuevo.v_dosis = App.Fn_Vacio(N_Dosis.Text);
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
        {
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
            C_NotaMed _nota = new C_NotaMed(v_cita.v_pacienteId, v_cita.v_folio, v_cita.v_idCita, v_medicamentos.Count.ToString(), v_medicamentos);

            string _jsonNota= JsonConvert.SerializeObject(_nota, Formatting.Indented);
           // await DisplayAlert("Envia", _jsonNota, "aa");

            bool _sel=await DisplayAlert("Terminar Consulta?", "Seguro de terminar ahora?", "Sí", "No");
            if(_sel)
            {
                HttpClient _client = new HttpClient();
                string _DirEnviar = NombresAux.BASE_URL+ "set_medicamentos.php";
                StringContent _content = new StringContent(_jsonNota, Encoding.UTF8, "application/json");
                try
                {
                    HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                    if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                        if (_respuesta == "1")
                        {
                            await DisplayAlert("Exito", "Medicamentos Agregador correctamente", "Continuar");//aca termina el actulizado del estado de la cita
                            ///actualizar  el estado de la cita
                            Cita _cita = new Cita("0", v_cita.v_fechaDate.Date, v_cita.v_hora, v_cita.v_idCita,"1");
                            string _json = JsonConvert.SerializeObject(_cita, Formatting.Indented);
                             _client = new HttpClient();
                             _DirEnviar = NombresAux.BASE_URL+ "update_citas.php";
                             _content = new StringContent(_json, Encoding.UTF8, "application/json");
                            try
                            {
                                _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                                if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                                {
                                     _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                    if (_respuesta == "1")
                                    {
                                        await DisplayAlert("CONSULTA TERMINADA ", "Consulta terminada correctamente", "Continuar");//aca termina el actulizado del estado de la cita
                                        App.Fn_Terminaconsullta();
                                    }
                                    else
                                    {
                                        await DisplayAlert("Error", "No se pudo Terminar tu cita, intentalo mas tarde", "Aceptar");
                                    }
                                }
                            }
                            catch (HttpRequestException ex)
                            {
                                await DisplayAlert("Error", ex.Message, "Aceptar");
                            }
                        }
                        else
                        {
                            await DisplayAlert("Error", "Medicamentos mal, intentalo mas tarde", "Aceptar");
                        }
                    }
                }
                catch (HttpRequestException ex)
                {
                    await DisplayAlert("Error", ex.Message, "Aceptar");
                }
            }
        }
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
            N_Dosis.Text = "";
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

            string _nota = App.Current.Properties[NombresAux.v_NotasMed] as string;
            App.v_notasMed = JsonConvert.DeserializeObject<ObservableCollection<C_NotaMed>>(_nota);
            v_histo = App.v_notasMed;

            ListaHisto.ItemsSource = v_histo;
            await Task.Delay(100);
        }
        public async void Fn_CargaCita()
        {
            string json = App.Current.Properties[NombresAux.v_citaInd] as string;
            App.v_citaInd = JsonConvert.DeserializeObject<Cita>(json);
            v_cita = App.v_citaInd;
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
                    //ListaCita.IsVisible = false;
                    StackListaCita.IsVisible = false;
                    v_cita = _selec;
                    App.Fn_GuardarDatos(new string[] {"1", _selec.v_pacienteId, "1" },v_cita);
                    await Fn_CargarMedica();
                    Fn_CAmbioStack(true, false, false);
                   // Title = v_cita.v_idCita;
                }
            }
            else
            {
                await DisplayAlert("Error", "Esta cita no está aceptada, elige otra"+ _selec.v_estado, "Aceptar");
            }

        }
        public async void Fn_SelectNota(object sender, ItemTappedEventArgs _args)
        {
            C_NotaMed _selec = _args.Item as C_NotaMed;
            await Navigation.PushAsync(new V_Medicamentos(_selec));
            ListaHisto.SelectedItem = null;

        }
        public async void Fn_Volver(object sender, EventArgs _args)
        {
            App.Fn_GuardarDatos(new string[3] { "0", "", "0" });
            Navigation.RemovePage(this);
            await DisplayAlert("Aviso", "vuelve a presionar desde el menu lateral", "aceptar");
           // await Navigation.PushAsync(new V_Paciente(true, null));
        }
        public async void Fn_NoCita(object sender, EventArgs _args)
        {
            Cita _citaTemp = new Cita(App.v_membresia,v_Info.v_membre, v_Info.v_fol, "3", DateTime.Now.Date,
                DateTime.Now.TimeOfDay, App.Fn_GEtToken());
            string _json = JsonConvert.SerializeObject(_citaTemp, Formatting.Indented);
            //await DisplayAlert("Enviar", _json, "aceptar");
            HttpClient _client = new HttpClient();
            string _DirEnviar = NombresAux.BASE_URL+ "set_citas.php";
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            try
            {  //getting exception in the following line    //HttpResponseMessage upd_now_playing = await cli.PostAsync(new Uri("http://ws.audioscrobbler.com/2.0/", UriKind.RelativeOrAbsolute), tunp);
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    if (_respuesta != "0")
                    {
                        v_cita = _citaTemp;
                        v_cita.v_idCita = _respuesta;
                        StackListaCita.IsVisible = false;
                        App.Fn_GuardarDatos(new string[] { "1", v_cita.v_pacienteId, "1" }, v_cita);
                        await Fn_CargarMedica();
                        //await DisplayAlert("Exito", "Cita generada correctamente, espera la respuesta de tu doctor", "Aceptar");
                        Fn_CAmbioStack(true, false, false);
                        //Title = v_cita.v_idCita;
                        //await Navigation.PopAsync();
                    }
                    else
                    {
                        await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                    }
                }
            }
            catch 
            {
                await DisplayAlert("" +
                    "Error","No se puede crear nueva cita en este momento, intentalo más tarde", "Aceptar");
            }
        }
         */
    }
}
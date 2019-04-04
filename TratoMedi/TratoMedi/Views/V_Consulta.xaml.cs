using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TratoMedi.Varios;
using System.Net.Http;
using Newtonsoft.Json;
using System.Collections.ObjectModel;
namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Consulta : TabbedPage
	{

        Cita v_cita;
        ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();
        ObservableCollection<C_NotaMed> v_histo = new ObservableCollection<C_NotaMed>();
        int v_editando = -1;

        public V_Consulta (Cita _cita)
		{
			InitializeComponent ();
            grid.RowDefinitions.Clear();
            grid.ColumnDefinitions.Clear();
            if (Device.RuntimePlatform == Device.Android)
            {
                grid.RowDefinitions.Add(new RowDefinition { Height = 80 });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });

                Grid.SetColumn(Btn_Ter, 0);   //terminar cita

                Grid.SetColumn(Btn_Nue, 1);  //nuevo medicamento

                Grid.SetColumn(Btn_Med, 2); //medicamentos actuales
            }
            else if (Device.RuntimePlatform == Device.iOS)
            {
                grid.RowDefinitions.Add(new RowDefinition { Height = 50 });
                grid.RowDefinitions.Add(new RowDefinition { Height = 50 });
                grid.RowDefinitions.Add(new RowDefinition { Height = 50 });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });

                Grid.SetRow(Btn_Ter, 0); Grid.SetRowSpan(Btn_Ter, 1); Grid.SetColumnSpan(Btn_Ter, 1); //terminar cita

                Grid.SetRow(Btn_Nue, 1); Grid.SetRowSpan(Btn_Nue, 1); Grid.SetColumnSpan(Btn_Nue, 1);   //nuevo medicamento

                Grid.SetRow(Btn_Med, 2); Grid.SetRowSpan(Btn_Med, 1); Grid.SetColumnSpan(Btn_Med, 1);   //medicamentos actuales
            }

            Title = "En consulta";
            v_cita = _cita;


            CargarGen();
            CargarMed();
            Console.Write("elige cita " + App.v_paciente[2]);
                Fn_CargaCita();
                Fn_CAmbioStack(true, false, false);
                Fn_CargarMedica();
            //if (App.v_paciente[2] == "1")//ya eligio su cita
            //{
            //}
        }
        public V_Consulta()
        {
            InitializeComponent();
            Console.Write("inicio");
            grid.RowDefinitions.Clear();
            grid.ColumnDefinitions.Clear();
            if (Device.RuntimePlatform == Device.Android)
            {
                grid.RowDefinitions.Add(new RowDefinition { Height = 80 });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });

                Grid.SetColumn(Btn_Ter, 0);   //terminar cita

                Grid.SetColumn(Btn_Nue, 1);  //nuevo medicamento

                Grid.SetColumn(Btn_Med, 2); //medicamentos actuales
            }
            else if (Device.RuntimePlatform == Device.iOS)
            {
                grid.RowDefinitions.Add(new RowDefinition { Height = 80 });
                grid.RowDefinitions.Add(new RowDefinition { Height = 80 });
                grid.RowDefinitions.Add(new RowDefinition { Height = 80 });
                grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });

                Grid.SetRow(Btn_Ter, 0); Grid.SetRowSpan(Btn_Ter, 1);  //terminar cita

                Grid.SetRow(Btn_Nue, 1); Grid.SetRowSpan(Btn_Nue, 1);  //nuevo medicamento

                Grid.SetRow(Btn_Med, 2); Grid.SetRowSpan(Btn_Med, 1);  //medicamentos actuales
            }

            Title = "En consulta";
            
            CargarGen();
            CargarMed();
            Console.Write("elige cita " + App.v_paciente);
                Fn_CargaCita();
                Fn_CAmbioStack(true, false, false);
                Fn_CargarMedica();
            //if (App.v_paciente[2] == "1")//ya eligio su cita
            //{
            //}
        }
        public async void Fn_Terminar(object sender, EventArgs _args)
        {
            Fn_CargaCita();
            C_NotaMed _nota = new C_NotaMed(v_cita.v_pacienteId, v_cita.v_folio, v_cita.v_idCita, v_medicamentos.Count.ToString(), v_medicamentos);

            string _jsonNota = JsonConvert.SerializeObject(_nota, Formatting.Indented);
            // await DisplayAlert("Envia", _jsonNota, "aa");

            bool _sel = await DisplayAlert("Terminar Consulta?", "Seguro de terminar ahora?", "Sí", "No");
            if (_sel)
            {
                HttpClient _client = new HttpClient();
                string _DirEnviar = "http://tratoespecial.com/set_medicamentos.php";
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
                            Cita _cita = new Cita("0", v_cita.v_fechaDate.Date, v_cita.v_hora, v_cita.v_idCita, "1");
                            string _json = JsonConvert.SerializeObject(_cita, Formatting.Indented);
                            _client = new HttpClient();
                            _DirEnviar = "http://tratoespecial.com/update_citas.php";
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
        public void Fn_NuevoMed(object sender, EventArgs _Args)
        {
            v_editando = -1;
            Fn_CAmbioStack(false, true, false);
        }
        public async void Fn_MostrarMed(object sender, EventArgs _Args)
        {
            Todos.ItemsSource = null;
             Fn_CargarMedica();
            await Task.Delay(100);
            Fn_CAmbioStack(false, false, true);
            Fn_CAmbioStack(false, false, false);
            await Task.Delay(10);
            Fn_CAmbioStack(false, false, true);
            Todos.ItemsSource = v_medicamentos;
        }
        public void  Fn_CargarMedica()
        {
            string _medi = App.Current.Properties[NombresAux.v_medicamentos] as string;
            App.v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_medi);
            v_medicamentos = App.v_medicamentos;

            string _nota = App.Current.Properties[NombresAux.v_NotasMed] as string;
            App.v_notasMed = JsonConvert.DeserializeObject<ObservableCollection<C_NotaMed>>(_nota);
            v_histo = App.v_notasMed;

            ListaHisto.ItemsSource = v_histo;
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
            if(_nuevo)
            {
                Nue_Error.IsVisible = false;
            }
        }
        void Fn_SoloNumero(object sender, TextChangedEventArgs _args)
        {
            //-  ,  _  .
            Entry _entry = (Entry)sender;
            if (_entry.Text.Length > 0)
            {
                char _ultimo = _entry.Text[_entry.Text.Length - 1];
                if (_ultimo == '-' || _ultimo == ',' || _ultimo == '_')//|| _ultimo == '.' )//os valores que se van a eliminar
                {
                    if (_entry.Text.Length == 1)
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
        public void Fn_CancelMedi(object sender, EventArgs _Args)
        {
            Fn_Limpiar();
            Fn_CAmbioStack(true, false, false);

        }
        public async void CargarGen()
        {
            Console.Write("nombre");
            G_Nombre.Text = App.v_pergen.v_Nombre;
            Console.Write("nac");
            if (string.IsNullOrEmpty(App.v_pergen.v_FecNaci))
            {
                G_fecha.Text = "N/A";
            }
            else
            {
                Console.Write("fecha "+ App.v_pergen.v_FecNaci);
                string[] fecha = App.v_pergen.v_FecNaci.Split('-');
                G_fecha.Text = fecha[2] + " - " + fecha[1] + " - " + fecha[0];
            }
            Console.Write("ocu ");
            Fn_NullEntry(G_Ocu, App.v_pergen.v_Ocup);
            // Fn_NullEntry(G_Tel, App.v_perfil.v_Tel);
            //Fn_NullEntry(G_Cel, App.v_perfil.v_Cel);
            await Task.Delay(100);
        }
        public async void CargarMed()
        {
            Console.Write("sangre");
            Personas.C_PerfilMed _temp = App.v_perMed;
            Fn_NullEntry(M_Sangre, App.v_perMed.v_sangre);
                Console.Write("sexo");
            if ((App.v_perMed.v_sexo < 0) || (App.v_perMed.v_sexo > 1))
            {
                Console.Write("sexo if");
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
                Console.Write("sexo else");
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
            Console.Write("alergias");
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
            Console.Write("operaciones");
            Fn_NullEntry(M_Operaciones, App.v_perMed.v_operaciones);
            Console.Write("enfermedades");
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
            Console.Write("mediocamen");
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
        public async void Fn_CargaCita()
        {
            string json = App.Current.Properties[NombresAux.v_citaInd] as string;
            App.v_citaInd = JsonConvert.DeserializeObject<Cita>(json);
            v_cita = App.v_citaInd;
            await Task.Delay(100);
        }
        public async void Fn_SelectNota(object sender, ItemTappedEventArgs _args)
        {
            C_NotaMed _selec = _args.Item as C_NotaMed;
            await Navigation.PushAsync(new V_Medicamentos(_selec));
            ListaHisto.SelectedItem = null;

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
                    if (v_medicamentos[i] == _medi)
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
            await DisplayAlert("Medicamento", _item.Fn_Info(), "Aceptar");
        }
        public async void Fn_Eliminar(object sender, EventArgs _args)
        {
            Button button = sender as Button;
            Medicamentos _elim = button.BindingContext as Medicamentos;
            if (_elim != null)
            {
                v_medicamentos.Remove(_elim);
                App.Fn_GuardarDatos(v_medicamentos);
                 Fn_CargarMedica();
                Todos.ItemsSource = null;
                await Task.Delay(100);
                Todos.ItemsSource = v_medicamentos;
            }
            await Task.Delay(100);
        }
        public async void Fn_GuarMedi(object sender, EventArgs _args)
        {
            Button _but = (Button)sender;
            _but.IsEnabled = false;
            if(!Fn_MedNull())
            {
                Medicamentos _nuevo = new Medicamentos();
                _nuevo.v_nombre = App.Fn_Vacio(N_nombre.Text);
                //tiene que ser un numero no vacio
                if (string.IsNullOrEmpty(N_Perio.Text) || string.IsNullOrWhiteSpace(N_Perio.Text))
                {
                    N_Perio.Text = "0";
                }
                _nuevo.v_periodo = float.Parse(N_Perio.Text);

                if (string.IsNullOrEmpty(N_Tiem.Text) || string.IsNullOrWhiteSpace(N_Tiem.Text))
                {
                    N_Tiem.Text = "0";
                }
                _nuevo.v_tiempo = float.Parse(N_Tiem.Text);
                _nuevo.v_dosis = App.Fn_Vacio(N_Dosis.Text);
                _nuevo.v_extra = App.Fn_Vacio(N_Extra.Text);
                // si no esta editando agregarlo, sino darle diferente valor
                if (v_editando > -1)
                {
                    v_medicamentos[v_editando] = _nuevo;
                    v_editando = -1;
                }
                else
                {
                    v_medicamentos.Add(_nuevo);
                }
                App.Fn_GuardarDatos(v_medicamentos);
                 Fn_CargarMedica();
                Fn_Limpiar();
                await Task.Delay(100);
                _but.IsEnabled = true;
                Fn_CAmbioStack(true, false, false);
            }
            _but.IsEnabled = true;
        }
        bool Fn_MedNull()
        {
            if (    (string.IsNullOrEmpty(N_nombre.Text) || string.IsNullOrWhiteSpace(N_nombre.Text)) &&
                    (string.IsNullOrEmpty(N_Perio.Text) || string.IsNullOrWhiteSpace(N_Perio.Text)) &&
                    (string.IsNullOrEmpty(N_Tiem.Text) || string.IsNullOrWhiteSpace(N_Tiem.Text)) &&
                    (string.IsNullOrEmpty(N_Dosis.Text) || string.IsNullOrWhiteSpace(N_Dosis.Text))     )
            {
                Nue_Error.IsVisible = true;
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
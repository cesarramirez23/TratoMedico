using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TratoMedi.Personas;
using TratoMedi.Varios;
using System.Net.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Info : ContentPage
	{
        C_PerfilGen v_general;
        C_PerfilMed v_medico; Perf v_perf;
        ObservableCollection<C_NotaMed> v_historial= new ObservableCollection<C_NotaMed>();
        Cita v_cita;
        public V_Info(Perf _info)
        {
            InitializeComponent();
            v_perf = _info;
            Fn_GetInfo();
        }
        public async void Fn_GetInfo()
        {
            HttpClient _client = new HttpClient();
            string _json = JsonConvert.SerializeObject(v_perf, Formatting.Indented);
            try
            {
                StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
                string _respuesta;
                HttpResponseMessage _respuestaphp;
                try
                {
                    //baja la info de perfil general
                    string _DirEnviar = "http://tratoespecial.com/query_perfil.php";
                    //mandar el json con el post
                    _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                    _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    v_general = JsonConvert.DeserializeObject<C_PerfilGen>(_respuesta);
                    Console.Write("perfilgeneral " + v_general.Fn_GetDatos());
                    App.Fn_GuardarDatos(v_general);
                    try
                    {
                        _DirEnviar = "http://tratoespecial.com/query_perfil_medico.php";
                        _content = new StringContent(_json, Encoding.UTF8, "application/json");
                        //mandar el json con el post
                        _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                        _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                        v_medico = JsonConvert.DeserializeObject<C_PerfilMed>(_respuesta);
                        Console.Write("perfilmedico " + v_medico.Fn_Info());
                        App.Fn_GuardarDatos(v_medico);


                        ///cargar el historial de medicamentos 
                        _client = new HttpClient();
                        Cita _cita = new Cita(v_perf.v_membre,v_perf.v_fol, "0");
                         _json = JsonConvert.SerializeObject(_cita);
                        _DirEnviar = "http://tratoespecial.com/get_medicamentos.php";
                        // await DisplayAlert("ENVIA PARA medicamentos", _json, "acep");
                        _content = new StringContent(_json, Encoding.UTF8, "application/json");
                        try
                        {
                            _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                            if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                            {
                                _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                // await DisplayAlert("LLega get medicamentos", _respuesta, "acep");
                                v_historial = JsonConvert.DeserializeObject<ObservableCollection<C_NotaMed>>(_respuesta);
                                Console.Write("historial " + v_historial.Count);
                                for (int i = 0; i < v_historial.Count; i++)
                                {
                                    v_historial[i].Fn_SetEspe();
                                }
                                App.Fn_GuardarDatos(v_historial);
                                //ListaHisto.ItemsSource = v_histo;

                                v_Nom.Text = v_general.v_Nombre;
                                v_Mem.Text = v_perf.v_membre;
                                v_fol.Text = "  Folio: " + v_perf.v_fol;
                                v_Vig.Text = v_general.v_vig;


                               ObservableCollection<Cita> _temp=  App.Fn_GetCitas(v_perf.v_membre);
                                if(_temp.Count==0)
                                {
                                    L_cita.IsVisible = true;
                                    ListaCita.IsVisible = false;
                                }
                                else
                                {

                                    ListaCita.ItemsSource = _temp;
                                }
                                //Navigation.pa = new NavigationPage(new V_Consulta());
                                //App.Fn_GuardarDatos(new string[] { "1", v_perf.v_membre, "0" });
                                //Scanner.IsScanning = false;
                                // await Navigation.PushAsync(new V_Info(_nuePer, _nuePerMEd, _info, v_histo));

                                //MessagingCenter.Send<V_Paciente, string>(this, "Fn_Paci", "1");
                                // await Navigation.PopAsync();
                                //await Navigation.PushAsync(new V_Paciente(false, _info) { Title = App.v_pergen.v_Nombre });

                            }
                        }
                        catch
                        {
                            if (App.v_notasMed.Count > 0)
                            {
                                v_historial = App.v_notasMed;
                            }
                            App.Fn_GuardarDatos(new string[] { "0", "", "0" });
                        }
                    }
                    catch
                    {

                        App.Fn_GuardarDatos(new string[] { "0", "", "0" });
                    }
                }
                catch
                {

                    App.Fn_GuardarDatos(new string[] { "0", "", "0" });
                }//primer intento de buscar info
            }
            catch
            {

            }
        }
        public void Fn_Continuar(object sender, EventArgs _args)
        {
            S_Info.IsVisible = false;
            S_Cita.IsVisible = true;
        }
        public async void Fn_NoCita(object sender, EventArgs _args)
        {
            Button _buton = (Button)sender;
            _buton.IsEnabled = false;

            Cita _citaTemp = new Cita(App.v_membresia, v_perf.v_membre, v_perf.v_fol, "3", DateTime.Now.Date,
                DateTime.Now.TimeOfDay, App.Fn_GEtToken());
            string _json = JsonConvert.SerializeObject(_citaTemp, Formatting.Indented);
            Console.Write("Info cita " + _json);
            //await DisplayAlert("Enviar", _json, "aceptar");
            HttpClient _client = new HttpClient();
            string _DirEnviar = "http://tratoespecial.com/set_citas.php";
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
                        //StackListaCita.IsVisible = false;
                        Console.Write("navigation ");


                        App.Fn_GuardarDatos(v_general);
                        App.Fn_GuardarDatos(v_medico);
                        App.Fn_GuardarDatos(v_historial);///el historial de consultas
                        //App.Fn_GuardarDatos(new string[] { "1", v_perf.v_membre, "1" });// escaneado, membvresia y si ya esta en consulta(1 true)
                        App.Fn_GuardarDatos(new string[] { "1", v_cita.v_pacienteId, "1" }, v_cita);
                        await Navigation.PushAsync(new V_Consulta(v_cita));
                       // App.Fn_GuardarDatos(new string[] { "1", v_cita.v_pacienteId, "1" }, v_cita);
                        //await Fn_CargarMedica();///carga el historial de citas y medicamentos del paciente
                        //Fn_CAmbioStack(true, false, false);//apagara stack de medicamentos, nota y principal ya en consulta
                        //Title = v_cita.v_idCita;
                        //await Navigation.PopAsync();
                    }
                    else
                    {
                        await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                        _buton.IsEnabled = true;
                    }
                }
            }
            catch
            {
                await DisplayAlert( "Error", "No se puede crear nueva cita en este momento, intentalo más tarde", "Aceptar");
                _buton.IsEnabled = true;
            }
        }
        public async void Fn_SelectCita(object sender, ItemTappedEventArgs _Args)
        {
            Cita _selec = _Args.Item as Cita;
            if (_selec.v_estado == "3")//solo elegir las que ya esten aceptadas
            {
                bool opcion = await DisplayAlert("Continuar", "Seguro de continuar esta cita?", "Continuar", "Elegir otra");
                if (opcion)
                {
                    //ListaCita.IsVisible = false;
                    //StackListaCita.IsVisible = false;
                    v_cita = _selec;
                    // App.Fn_GuardarDatos(new string[] { "1", _selec.v_pacienteId, "1" }, v_cita);
                    App.Fn_GuardarDatos(v_general);
                    App.Fn_GuardarDatos(v_medico);
                    App.Fn_GuardarDatos(v_historial);///el historial de consultas
                   // App.Fn_GuardarDatos(new string[] { "1", v_perf.v_membre, "1" });// escaneado, membvresia y si ya esta en consulta(1 true)
                    App.Fn_GuardarDatos(new string[] { "1", v_cita.v_pacienteId, "1" }, v_cita);
                    await Navigation.PushAsync(new V_Consulta(v_cita));
                    //await Fn_CargarMedica();///carga el historial de citas y medicamentos del paciente
                    //Fn_CAmbioStack(true, false, false);
                    // Title = v_cita.v_idCita;
                }
            }
            else
            {
                await DisplayAlert("Error", "Esta cita no está aceptada, elige otra" + _selec.v_estado, "Aceptar");
            }
        }
    }
}
using System;
using Xamarin.Forms;
using TratoMedi.Views;
using Xamarin.Forms.Xaml;
using System.Threading.Tasks;
using TratoMedi.Personas;
using TratoMedi.Varios;
using Newtonsoft.Json;
using System.Linq;
using System.Collections.ObjectModel;
using System.Collections.Generic;
//para agregar loos eventos al calendario
//using Plugin.Calendars;
//using Plugin.Calendars.Abstractions;
//para agregar loos eventos al calendario

//casa compila con com.alsain.TratoMed     com.alsain.TratoMedicos
[assembly: XamlCompilation (XamlCompilationOptions.Compile)]
namespace TratoMedi
{
    public partial class App : Application
    {
        #region COSAS PROPIAS DEL DOCTOR 
        /// <summary>
        /// membresia completa 1808D-0008 del doctor
        /// </summary>
        public static string v_membresia = "";
        public static string v_log = "";
        public static C_Medico v_perfil;
        public static ObservableCollection<Cita> v_citas;
        //public static string v_IdCalendar ="";
        #endregion
       

        #region PARA LA CONSULTA
        public static Cita v_citaInd;
        public static C_PerfilGen v_pergen;
        public static C_PerfilMed v_perMed;
        public static ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();
        /// <summary>
        /// (1-0 escaneado?)/membresia completa/(0-1 en consulta)
        /// </summary>
        public static string[] v_paciente = { "","",""};
        public static ObservableCollection<C_NotaMed> v_notasMed = new ObservableCollection<C_NotaMed>();
        #endregion

        #region Estados de la app
        public App()
        {
            InitializeComponent();
        }
        protected override void OnStart()
        {
            // Handle when your app starts
            //Properties.Clear();
            if (Properties.ContainsKey(NombresAux.v_log))
            {
                //lee el valor guardado
                v_log = Current.Properties[NombresAux.v_log] as string;
                if (v_log == "0")
                {//no esta logeado
                    v_log = "0";
                    v_membresia = "";

                    Properties[NombresAux.v_membre] = v_membresia;
                    string _json = JsonConvert.SerializeObject(v_perfil);
                    Properties[NombresAux.v_perfilPropio] = _json;

                    Fn_CargarDatos();

                    //string _medi = Properties[NombresAux.v_medicamentos] as string;
                    //v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_medi);


                    MainPage = new NavigationPage(new V_Registro());// new V_MasterMenu(false, "Bienvenido a Trato Especial");
                }//si esta logeado
                else if (v_log == "1")
                {
                    v_membresia = Properties[NombresAux.v_membre] as string;
                    
                    string _json = Properties[NombresAux.v_perfilPropio] as string;
                    v_perfil = JsonConvert.DeserializeObject<C_Medico>(_json);


                    string _arrPaci = Properties[NombresAux.v_paciente] as string;
                    v_paciente = JsonConvert.DeserializeObject<string[]>(_arrPaci);

                    string _medi = Properties[NombresAux.v_medicamentos] as string;
                    Console.Write("medi " + _medi);
                    v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_medi);

                    string _Notas = Properties[NombresAux.v_NotasMed] as string;
                    v_notasMed = JsonConvert.DeserializeObject<ObservableCollection<C_NotaMed>>(_Notas);

                    Fn_CargarDatos();

                    MainPage = new NavigationPage(new V_Registro());//new V_MasterMenu(true, "Bienvenido " +v_perfil.v_Nombre);
                }
                else
                {
                    MainPage = new NavigationPage(new V_Registro());// new V_MasterMenu(false, v_log);
                }
            }
            else//la primera vez que se abre la app
            {
                v_log = "0";
                v_membresia = "";
                v_perfil = new C_Medico();
                v_medicamentos = new ObservableCollection<Medicamentos>();
                Fn_CrearKey();
                App.Current.MainPage = new NavigationPage(new V_Registro());// new V_MasterMenu(false, "Bienvenido a Trato Especial");
            }
        }
        protected override void OnSleep()
        {
            // Handle when your app sleeps
        }
        protected override void OnResume()
        {
            // Handle when your app resumes
        }
        #endregion

        #region Cargar Datos
        async void Fn_CrearKey()
        {
            if (!Properties.ContainsKey(NombresAux.v_medicamentos))
            {
                v_medicamentos = new ObservableCollection<Medicamentos>();
                string _json = JsonConvert.SerializeObject(v_medicamentos);
                Current.Properties.Add(NombresAux.v_medicamentos, "");
                Current.Properties[NombresAux.v_medicamentos] = _json;
            }
            if (!Properties.ContainsKey(NombresAux.v_NotasMed))
            {
                v_notasMed = new ObservableCollection<C_NotaMed>();
                string _json = JsonConvert.SerializeObject(v_notasMed);
                Current.Properties.Add(NombresAux.v_NotasMed, "");
                Current.Properties[NombresAux.v_NotasMed] = _json;
            }
            if (!Properties.ContainsKey(NombresAux.v_log))
            {
                Properties.Add(NombresAux.v_log, v_log);
            }
            if (!Properties.ContainsKey(NombresAux.v_paciente))
            {
                v_paciente = new string[3] { "0", "", "0" };
                string _json = JsonConvert.SerializeObject(v_paciente);
                Properties.Add(NombresAux.v_paciente, _json);
            }
            if (!Properties.ContainsKey(NombresAux.v_membre))
            {
                Properties.Add(NombresAux.v_membre, v_membresia);
            }
            if (!Properties.ContainsKey(NombresAux.v_perfilPropio))
            {
                v_perfil = new C_Medico();
                string _json = JsonConvert.SerializeObject(v_perfil);
                Properties.Add(NombresAux.v_perfilPropio, _json);
            }
            if (!Properties.ContainsKey(NombresAux.v_perfilMed))
            {
                v_perMed = new C_PerfilMed();
                string _json = JsonConvert.SerializeObject(v_perMed);
                Properties.Add(NombresAux.v_perfilMed, _json);
            }
            if (!Properties.ContainsKey(NombresAux.v_perfilGen))
            {
                v_pergen = new C_PerfilGen();
                string _json = JsonConvert.SerializeObject(v_pergen);
                Properties.Add(NombresAux.v_perfilGen, _json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_citaInd))
            {
                v_citaInd = new Cita();
                string _json = JsonConvert.SerializeObject(v_citaInd);
                Current.Properties.Add(NombresAux.v_citaInd, _json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_citas))
            {
                v_citas = new ObservableCollection<Cita> ();
                string _json = JsonConvert.SerializeObject(v_citas);
                Current.Properties.Add(NombresAux.v_citas, _json);
            }
            //CIta para la notif
            if (!Properties.ContainsKey(NombresAux.v_citaNot))
            {
                v_nueva = new Cita();
                string _json = JsonConvert.SerializeObject(v_nueva);
                Properties.Add(NombresAux.v_citaNot, _json);
            }
            //if(!Properties.ContainsKey(NombresAux.v_IdCalendar))
            //{
            //    v_IdCalendar = "";
            //    var TodosCalen = await CrossCalendars.Current.GetCalendarsAsync();
            //    Calendar _nuevoCal = new Calendar()
            //    {
            //        AccountName = "Trato Especial",
            //        Name = "Trato Especial",
            //        Color = "2896D1"
            //    };
            //    if (!TodosCalen.Contains(_nuevoCal))
            //    {
            //        await CrossCalendars.Current.AddOrUpdateCalendarAsync(_nuevoCal);
            //        v_IdCalendar = _nuevoCal.ExternalID;
            //        Current.Properties.Add(NombresAux.v_IdCalendar, v_IdCalendar);
            //    }
            //}
            await Current.SavePropertiesAsync();

            await Task.Delay(100);
        }
        public static async void Fn_CargarDatos()
        {
            if (!Current.Properties.ContainsKey(NombresAux.v_membre))
            {
                v_membresia = "";
                Current.Properties.Add(NombresAux.v_membre, v_membresia);
            }
            else
            {
                v_membresia = Current.Properties[NombresAux.v_membre] as string;
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_perfilPropio))
            {
                v_perfil = new C_Medico();
                string _json = JsonConvert.SerializeObject(v_perfil);
                Current.Properties.Add(NombresAux.v_perfilPropio, _json);
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_perfilPropio] as string;
                v_perfil = JsonConvert.DeserializeObject<C_Medico>(_json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_perfilMed))
            {
                v_perMed = new C_PerfilMed();
                string _json = JsonConvert.SerializeObject(v_perMed);
                Current.Properties.Add(NombresAux.v_perfilMed, _json);
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_perfilMed] as string;
                v_perMed = JsonConvert.DeserializeObject<C_PerfilMed>(_json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_perfilGen))
            {
                v_pergen = new C_PerfilGen();
                string _json = JsonConvert.SerializeObject(v_pergen);
                Current.Properties.Add(NombresAux.v_perfilGen, _json);
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_perfilGen] as string;
                v_pergen = JsonConvert.DeserializeObject<C_PerfilGen>(_json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_medicamentos))
            {
                v_medicamentos = new ObservableCollection<Medicamentos>();
                string _json = JsonConvert.SerializeObject(v_medicamentos);
                Current.Properties.Add(NombresAux.v_medicamentos, "");
                Current.Properties[NombresAux.v_medicamentos] = _json;
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_medicamentos] as string;
                v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_citas))
            {
                v_citas = new ObservableCollection<Cita>();
                string _json = JsonConvert.SerializeObject(v_citas);
                Current.Properties.Add(NombresAux.v_citas, "");
                Current.Properties[NombresAux.v_citas] = _json;
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_citas] as string;
                v_citas = JsonConvert.DeserializeObject<ObservableCollection<Cita>>(_json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_NotasMed))
            {
                v_notasMed = new ObservableCollection<C_NotaMed>();
                string _json = JsonConvert.SerializeObject(v_notasMed);
                Current.Properties.Add(NombresAux.v_NotasMed, "");
                Current.Properties[NombresAux.v_NotasMed] = _json;
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_NotasMed] as string;
                v_notasMed = JsonConvert.DeserializeObject<ObservableCollection<C_NotaMed>>(_json);
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_paciente))
            {
                v_paciente = new string[3] { "0","","0"};
                string _json = JsonConvert.SerializeObject(v_paciente);
                Current.Properties.Add(NombresAux.v_paciente, _json);
            }
            else
            {
                string _json= Current.Properties[NombresAux.v_paciente] as string;
                v_paciente = JsonConvert.DeserializeObject<string[]>(_json);
                    
            }
            if (!Current.Properties.ContainsKey(NombresAux.v_citaInd))
            {
                v_citaInd = new Cita();
                string _json = JsonConvert.SerializeObject(v_citaInd);
                Current.Properties.Add(NombresAux.v_citaInd, _json);
            }
            else
            {
                string _json = Current.Properties[NombresAux.v_citaInd] as string;
                v_citaInd = JsonConvert.DeserializeObject<Cita>(_json);

            }
            //ID DEL CALENDARIO
            //if (!Current.Properties.ContainsKey(NombresAux.v_IdCalendar))
            //{
            //    v_IdCalendar = "";
            //    var TodosCalen = await CrossCalendars.Current.GetCalendarsAsync();
            //    Calendar _nuevoCal = new Calendar()
            //    {
            //        AccountName = "Trato Especial",
            //        Name = "Trato Especial",
            //        Color = "2896D1"
            //    };
            //    if (!TodosCalen.Contains(_nuevoCal))
            //    {
            //        await CrossCalendars.Current.AddOrUpdateCalendarAsync(_nuevoCal);
            //        v_IdCalendar = _nuevoCal.ExternalID;
            //        Current.Properties.Add(NombresAux.v_IdCalendar, v_IdCalendar);
            //    }
            //}
            //else
            //{
            //    v_IdCalendar = Current.Properties[NombresAux.v_IdCalendar] as string;
            //}
            await Task.Delay(100);
        }
        #endregion
       
        #region Guardar Datos
        /// <summary>
        /// guardaa 1 si esta en consulta
        /// </summary>
        /// <param name="_paci"></param>
        public static async void Fn_GuardarDatos(string[] _paci)
        {
            v_paciente = _paci;
            string _json = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _json;

            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;
            await Current.SavePropertiesAsync();
            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos(string[] _paci,Cita _cita)
        {
            v_paciente = _paci;
            string _json = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _json;

            v_citaInd = _cita;
            _json = JsonConvert.SerializeObject(v_citaInd);
            Current.Properties[NombresAux.v_citaInd] = _json;

            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;
            await Current.SavePropertiesAsync();
            await Task.Delay(100);
        }
        /// <summary>
        /// guarda el propioo perfil
        /// </summary>
        /// <param name="_perfil"></param>
        public static async void Fn_GuardarDatos(C_Medico _perfil)
        {
            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;

            v_perfil = _perfil;
            string _json = JsonConvert.SerializeObject(_perfil);
            Current.Properties[NombresAux.v_perfilPropio] = _json;

            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        /// <summary>
        /// guardaa perfil medico del paciente
        /// </summary>
        /// <param name="_med"></param>
        public static async void Fn_GuardarDatos(C_PerfilMed _med)
        {
            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;

            v_perMed = _med;
            string _jsonPerMed = JsonConvert.SerializeObject(v_perMed, Formatting.Indented);
            Current.Properties[NombresAux.v_perfilMed] = _jsonPerMed;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        /// <summary>
        /// guarda todas las citas
        /// </summary>
        /// <param name="_citas"></param>
        public static async void Fn_GuardarCitas(ObservableCollection<Cita> _citas)
        {
            v_citas = _citas;
            string _json = JsonConvert.SerializeObject(v_citas, Formatting.Indented);
            Current.Properties[NombresAux.v_citas] = _json;
            await Current.SavePropertiesAsync();
        }
        /// <summary>
        /// guarda perfil genereal del paciente
        /// </summary>
        /// <param name="_gen"></param>
        public static async void Fn_GuardarDatos(C_PerfilGen _gen)
        {
            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;
            string _json = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _json;

            v_pergen = _gen;
            string _jsonGen = JsonConvert.SerializeObject(v_pergen, Formatting.Indented);
            Current.Properties[NombresAux.v_perfilGen] = _jsonGen;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        /// <summary>
        /// guarda los medicamentos en laa consulta actual
        /// </summary>
        /// <param name="_medi"></param>
        public static async  void Fn_GuardarDatos(ObservableCollection<Medicamentos> _medi)
        {
            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;
            string _json = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _json;

            v_medicamentos = _medi;
            string _jsonGen = JsonConvert.SerializeObject(v_medicamentos, Formatting.Indented);
            Current.Properties[NombresAux.v_medicamentos] = _jsonGen;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos(ObservableCollection<C_NotaMed> _notaMed)
        {
            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;
            string _json = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _json;

            v_notasMed = _notaMed;
            string _jsonGen = JsonConvert.SerializeObject(v_notasMed, Formatting.Indented);
            Current.Properties[NombresAux.v_NotasMed] = _jsonGen;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        #endregion

        public async static void Fn_Terminaconsullta()
        {
            v_paciente = new string[3] { "0","","0"};
            string _paci = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _paci;
            v_perMed = new C_PerfilMed();
            string _json = JsonConvert.SerializeObject(v_perMed);
            Current.Properties[NombresAux.v_perfilMed]= _json;

            v_citaInd = new Cita();
            _json = JsonConvert.SerializeObject(v_citaInd);
            Current.Properties[NombresAux.v_citaInd]= _json;

            v_citas = new ObservableCollection<Cita>();
            _json = JsonConvert.SerializeObject(v_citas);
            Current.Properties[NombresAux.v_citas] = _json;



            v_pergen = new C_PerfilGen();
            _json = JsonConvert.SerializeObject(v_pergen);
            Current.Properties[NombresAux.v_perfilGen]=_json;

            v_medicamentos = new ObservableCollection<Medicamentos>();
            _json = JsonConvert.SerializeObject(v_medicamentos);
            Current.Properties[NombresAux.v_medicamentos] = _json;

            v_notasMed = new ObservableCollection<C_NotaMed>();
            _json = JsonConvert.SerializeObject(v_notasMed);
            Current.Properties[NombresAux.v_NotasMed] = _json;

            await  Current.SavePropertiesAsync();

            Fn_CargarDatos();

            if (v_log == "0")
            {//no esta logeado
               Current.MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
            }//si esta logeado
            else if (v_log == "1")
            {
               
                Current.MainPage = new V_MasterMenu(true, "Bienvenido " + v_perfil.v_Nombre);
            }
            else
            {
                Current.MainPage =new V_MasterMenu(false, v_log);
            }

        }
        public static async void Fn_CerrarSesion()
        {
            v_membresia = "";
            v_log = "0";
            v_citaInd = new Cita();
            v_medicamentos = new ObservableCollection<Medicamentos>();
            v_notasMed = new ObservableCollection<C_NotaMed>();

            Current.Properties[NombresAux.v_log] = v_log;
            Current.Properties[NombresAux.v_membre] = v_membresia;
            v_paciente = new string[3] { "0", "", "0" };
            string _paci = JsonConvert.SerializeObject(v_paciente);
            Current.Properties[NombresAux.v_paciente] = _paci;
            v_perfil = new C_Medico();
            string _json = JsonConvert.SerializeObject(v_perfil, Formatting.Indented);
            Current.Properties[NombresAux.v_perfilPropio] = _json;
            _json = JsonConvert.SerializeObject(v_pergen, Formatting.Indented);
            Current.Properties[NombresAux.v_perfilGen] = _json;
            _json = JsonConvert.SerializeObject(v_perMed, Formatting.Indented);
            Current.Properties[NombresAux.v_perfilMed] = _json;

            _json = JsonConvert.SerializeObject(v_citaInd, Formatting.Indented);
            Current.Properties[NombresAux.v_citaInd] = _json;

            _json = JsonConvert.SerializeObject(v_medicamentos, Formatting.Indented);
            Current.Properties[NombresAux.v_medicamentos] = _json;

            _json = JsonConvert.SerializeObject(v_notasMed, Formatting.Indented);
            Current.Properties[NombresAux.v_NotasMed] = _json;

            v_citas = new ObservableCollection<Cita>();
            _json = JsonConvert.SerializeObject(v_citas);
            Current.Properties[NombresAux.v_citas] = _json;


            await Current.SavePropertiesAsync();
            await Task.Delay(100);
        }
        public static string Fn_Vacio(string _valor)
        {
            if (string.IsNullOrEmpty(_valor) || string.IsNullOrWhiteSpace(_valor))
            {
                return "";
            }
            else
            {
                return _valor;
            }
        }
        public static ObservableCollection<Cita> Fn_GetCitas(string _idpaciente)
        {
            ObservableCollection<Cita> _ret = new ObservableCollection<Cita>();
            for(int i=0; i<v_citas.Count; i++)
            {
                    Console.Write("id paciente" + v_citas[i].v_pacienteId+ "estado "+ v_citas[i].v_estado);
                if (v_citas[i].v_pacienteId == _idpaciente && v_citas[i].v_estado == "3")
                {
                    _ret.Add(v_citas[i]);
                }
            }
            for(int  i = 0; i < _ret.Count; i++)
            {
                _ret[i].Fn_SetValores();
            }
            IEnumerable<Cita> _temp = _ret.OrderBy(x => x.v_fechaDate);
            _ret = new ObservableCollection<Cita>(_temp);

            for (int i = 0; i < _ret.Count; i++)
            {
                _ret[i].Fn_CAmbioCol(i);
            }
            return _ret;
        }


        #region Para las Notificaciones
        /// <summary>
        /// la cita desde la notif
        /// </summary>
        public static Cita v_nueva;
        /// <summary>
        /// cuando lo pones desde la notif
        /// </summary>
        public static async void Fn_SetCita(Cita _nueva)
        {
            v_nueva = _nueva;
            string _json = JsonConvert.SerializeObject(v_nueva);
            if(Current.Properties.ContainsKey(NombresAux.v_citaNot))
            {
            Current.Properties[NombresAux.v_citaNot] = _json;
            }
            else
            {
                Current.Properties.Add(NombresAux.v_citaNot, "");
                Current.Properties[NombresAux.v_citaNot] = _json;
            }
            await Current.SavePropertiesAsync();
            await Task.Delay(100);
        }
        /// <summary>
        /// get cita de la notif
        /// </summary>
        /// <returns></returns>
        public static bool Fn_GetCita()
        {
            if(Current.Properties.ContainsKey(NombresAux.v_citaNot))
            {
                string _json = Current.Properties[NombresAux.v_citaNot] as string;
                v_nueva=JsonConvert.DeserializeObject<Cita>(_json);
                if(v_nueva.v_estado!="-1")//tiene valores
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        public async static void Fn_Borra()
        {
            v_nueva = new Cita();
            string _json = JsonConvert.SerializeObject(v_nueva);
            Current.Properties[NombresAux.v_citaNot] = _json;
            await Current.SavePropertiesAsync();
        }
        public static async void Fn_SetToken(string _token)
        {
            if (Current.Properties.ContainsKey(NombresAux.v_token))
            {
                Current.Properties[NombresAux.v_token] = _token;
            }
            else
            {
                Current.Properties.Add(NombresAux.v_token, "");
                Current.Properties[NombresAux.v_token] = _token;
            }
            await Current.SavePropertiesAsync();
        }
        public static string Fn_GEtToken()
        {
            if (Current.Properties.ContainsKey(NombresAux.v_token))
            {
                return Current.Properties[NombresAux.v_token].ToString();
            }
            else
            {
                return "a";
            }
        }
        #endregion

    }
}

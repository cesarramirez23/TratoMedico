using System;
using Xamarin.Forms;
using TratoMedi.Views;
using Xamarin.Forms.Xaml;
using System.Threading.Tasks;
using TratoMedi.Personas;
using TratoMedi.Varios;
using Newtonsoft.Json;
using System.Collections.ObjectModel;

//casa compila con com.alsain.TratoMed     com.alsain.TratoMedicos
[assembly: XamlCompilation (XamlCompilationOptions.Compile)]
namespace TratoMedi
{
    public partial class App : Application
    {
        public static string v_membresia = "";
        public static string v_log = "";
        public static C_Medico v_perfil;
        public static C_PerfilGen v_pergen;
        public static C_PerfilMed v_perMed;
        public static ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();
        public static string v_paciente = "0";

        public App()
        {
            InitializeComponent();
        }

        protected override void OnStart()
        {
            // Handle when your app starts
            //Properties.Clear();
            if (Properties.ContainsKey("log"))
            {
                //lee el valor guardado
                v_log = Current.Properties["log"] as string;
                if (v_log == "0")
                {//no esta logeado
                    v_log = "0";
                    v_membresia = "";

                    Properties["membre"] = v_membresia;
                    string _json = JsonConvert.SerializeObject(v_perfil);
                    Properties["perfil"] = _json;

                    Fn_CargarDatos();

                    string _medi = Properties["medi"] as string;
                    v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_medi);


                    MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
                }//si esta logeado
                else if (v_log == "1")
                {
                    v_membresia = Properties["membre"] as string;
                    
                    string _json = Properties["perfil"] as string;
                    v_perfil = JsonConvert.DeserializeObject<C_Medico>(_json);

                    v_paciente = Properties["paci"] as string;
                    string _medi = Properties["medi"] as string;
                    v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_medi);
                    Fn_CargarDatos();

                    MainPage = new V_MasterMenu(true, "Bienvenido Nombre del medico");
                }
                else
                {
                    MainPage = new V_MasterMenu(false, v_log);
                }
            }
            else
            {
                v_log = "0";
                v_membresia = "";
                v_perfil = new C_Medico();
                v_medicamentos = new ObservableCollection<Medicamentos>();
                Fn_CrearKey();

                App.Current.MainPage = new V_MasterMenu(false, "no properties");
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
        async void Fn_CrearKey()
        {
            if (!Properties.ContainsKey("medi"))
            {
                v_medicamentos = new ObservableCollection<Medicamentos>();
                string _json = JsonConvert.SerializeObject(v_medicamentos);
                Current.Properties.Add("medi", "");
                Current.Properties["medi"] = _json;
            }
            if (!Properties.ContainsKey("log"))
            {
                Properties.Add("log", v_log);
            }
            if (!Properties.ContainsKey("paci"))
            {
                Properties.Add("paci", v_paciente);
            }
            if (!Properties.ContainsKey("membre"))
            {
                Properties.Add("membre", v_membresia);
            }
            if (!Properties.ContainsKey("perfil"))
            {
                v_perfil = new C_Medico();
                string _json = JsonConvert.SerializeObject(v_perfil);
                Properties.Add("perfil", _json);
            }
            if (!Properties.ContainsKey("perfMed"))
            {
                v_perMed = new C_PerfilMed();
                string _json = JsonConvert.SerializeObject(v_perMed);
                Properties.Add("perfMed", _json);
            }
            if (!Properties.ContainsKey("perfGen"))
            {
                v_pergen = new C_PerfilGen();
                string _json = JsonConvert.SerializeObject(v_pergen);
                Properties.Add("perfGen", _json);
            }
            await Current.SavePropertiesAsync();

            await Task.Delay(100);
        }
        public static async void Fn_CargarDatos()
        {
            if (!Current.Properties.ContainsKey("membre"))
            {
                v_membresia = "";
                Current.Properties.Add("membre", v_membresia);
            }
            else
            {
                v_membresia = Current.Properties["membre"] as string;
            }
            if (!Current.Properties.ContainsKey("perfil"))
            {
                v_perfil = new C_Medico();
                string _json = JsonConvert.SerializeObject(v_perfil);
                Current.Properties.Add("perfil", _json);
            }
            else
            {
                string _json = Current.Properties["perfil"] as string;
                v_perfil = JsonConvert.DeserializeObject<C_Medico>(_json);
            }
            if (!Current.Properties.ContainsKey("perfMed"))
            {
                v_perMed = new C_PerfilMed();
                string _json = JsonConvert.SerializeObject(v_perMed);
                Current.Properties.Add("perfMed", _json);
            }
            else
            {
                string _json = Current.Properties["perfMed"] as string;
                v_perMed = JsonConvert.DeserializeObject<C_PerfilMed>(_json);
            }
            if (!Current.Properties.ContainsKey("perfGen"))
            {
                v_pergen = new C_PerfilGen();
                string _json = JsonConvert.SerializeObject(v_pergen);
                Current.Properties.Add("perfGen", _json);
            }
            else
            {
                string _json = Current.Properties["perfGen"] as string;
                v_pergen = JsonConvert.DeserializeObject<C_PerfilGen>(_json);
            }
            if (!Current.Properties.ContainsKey("medi"))
            {
                v_medicamentos = new ObservableCollection<Medicamentos>();
                string _json = JsonConvert.SerializeObject(v_medicamentos);
                Current.Properties.Add("medi", "");
                Current.Properties["medi"] = _json;
            }
            else
            {
                string _json = Current.Properties["medi"] as string;
                v_medicamentos = JsonConvert.DeserializeObject<ObservableCollection<Medicamentos>>(_json);
            }
            if (!Current.Properties.ContainsKey("paci"))
            {
                v_paciente = "0";
                Current.Properties.Add("paci", v_paciente);
            }
            else
            {
                v_paciente = Current.Properties["paci"] as string;
            }

            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos(string _paci)
        {
            v_paciente = _paci;
            Current.Properties["paci"] = v_paciente;
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;
            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos(C_Medico _perfil)
        {
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;

            v_perfil = _perfil;
            string _json = JsonConvert.SerializeObject(_perfil);
            Current.Properties["perfil"] = _json;

            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos(C_PerfilMed _med)
        {
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;

            v_perMed = _med;
            string _jsonPerMed = JsonConvert.SerializeObject(v_perMed, Formatting.Indented);
            Current.Properties["perfMed"] = _jsonPerMed;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }

        public static async void Fn_GuardarDatos(C_PerfilGen _gen)
        {
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;
            Current.Properties["paci"] = v_paciente;

            v_pergen = _gen;
            string _jsonGen = JsonConvert.SerializeObject(v_pergen, Formatting.Indented);
            Current.Properties["perfGen"] = _jsonGen;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        public static async  void Fn_GuardarDatos(ObservableCollection<Medicamentos> _medi)
        {
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;
            Current.Properties["paci"] = v_paciente;

            v_medicamentos = _medi;
            string _jsonGen = JsonConvert.SerializeObject(v_medicamentos, Formatting.Indented);
            Current.Properties["medi"] = _jsonGen;


            await Current.SavePropertiesAsync();
            Fn_CargarDatos();
            await Task.Delay(100);
        }
        public async static void Fn_Terminaconsullta()
        {
            Current.Properties["paci"] = "0";
            v_perMed = new C_PerfilMed();
            string _json = JsonConvert.SerializeObject(v_perMed);
            Current.Properties["perfMed"]= _json;


            v_pergen = new C_PerfilGen();
            _json = JsonConvert.SerializeObject(v_pergen);
            Current.Properties["perfGen"]=_json;

            v_medicamentos = new ObservableCollection<Medicamentos>();
            _json = JsonConvert.SerializeObject(v_medicamentos);
            Current.Properties["medi"] = _json;

            await  Current.SavePropertiesAsync();

            Fn_CargarDatos();

            if (v_log == "0")
            {//no esta logeado
               Current.MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
            }//si esta logeado
            else if (v_log == "1")
            {

                Current.MainPage = new V_MasterMenu(true, "Bienvenido Nombre del medico");
            }
            else
            {
                Current.MainPage =new V_MasterMenu(false, v_log);
            }

        }
        public static async void Fn_CerrarSesion()
        {
            v_membresia = "";
            Current.Properties["log"] = "0";
            Current.Properties["membre"] = v_membresia;
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
    }
}

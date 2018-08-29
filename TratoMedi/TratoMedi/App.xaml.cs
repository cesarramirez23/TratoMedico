﻿using System;
using Xamarin.Forms;
using TratoMedi.Views;
using Xamarin.Forms.Xaml;
using System.Threading.Tasks;
using TratoMedi.Personas;
using Newtonsoft.Json;

[assembly: XamlCompilation (XamlCompilationOptions.Compile)]
namespace TratoMedi
{
	public partial class App : Application
	{
        public static string v_membresia = "";
        public static string v_log="";
        public static C_Medico v_perfil;
        public App ()
		{
			InitializeComponent();
		}

		protected override void OnStart ()
		{
            // Handle when your app starts
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
                    MainPage = new V_MasterMenu(false, "Bienvenido a Trato Especial");
                }//si esta logeado
                else if (v_log == "1")
                {
                    v_membresia = Properties["membre"] as string;
                    string _json = Properties["perfil"] as string;
                    v_perfil = JsonConvert.DeserializeObject<C_Medico>(_json);

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
                Fn_CrearKey();
                App.Current.MainPage = new V_MasterMenu(false, "no properties");
            }
        }

		protected override void OnSleep ()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume ()
		{
			// Handle when your app resumes
		}
        async void Fn_CrearKey()
        {
            if (!Properties.ContainsKey("log"))
            {
                Properties.Add("log", v_log);
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
                string _json=Current.Properties["perfil"] as string;
                v_perfil = JsonConvert.DeserializeObject<C_Medico>(_json);
            }


            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos()
        {
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;
            await Task.Delay(100);
        }
        public static async void Fn_GuardarDatos(C_Medico _perfil)
        {
            Current.Properties["log"] = v_log;
            Current.Properties["membre"] = v_membresia;
            string _json = JsonConvert.SerializeObject(_perfil);
            Current.Properties["perfil"] = _json;
            await Task.Delay(100);
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

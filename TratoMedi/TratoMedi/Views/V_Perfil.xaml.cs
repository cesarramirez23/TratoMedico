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
using TratoMedi.Varios;
using System.Collections.ObjectModel;
using TratoMedi.Models;
namespace TratoMedi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class V_Perfil : ContentPage
    {
        string v_especId = "";
        string v_NuevaEsp = string.Empty;
        #region ESPECIALIDADES, CIUDADES, TODO ESO DESCRAGADO
        c_RegOpciones v_opciones = new c_RegOpciones();
        string[] v_TitArr;
        string[] v_CiudArr;
        string[] v_EstadoArr;
        #endregion
        ObservableCollection<C_EspeTitu> v_espec = new ObservableCollection<C_EspeTitu>();
        ObservableCollection<C_EspeTitu> v_ciudades = new ObservableCollection<C_EspeTitu>();
        bool v_Selec = false;
        bool v_editar = false;
        bool v_cita = false;
        C_Medico v_perfil;
        public V_Perfil ()
        {
            InitializeComponent();
            v_perfil = new C_Medico();
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();//await Fn_GetIdsTitulo();
            Fn_CargaPerfil(); // P_Swi.IsToggled = v_cita; //P_StackCita.IsVisible = false;
            await Task.Delay(100);
        }
        public void Fn_ActivarCita(object sender, ToggledEventArgs _args)
        {
            v_cita = _args.Value;  //P_StackCita.IsVisible = v_cita;
        }
        void Fn_SoloNumero(object sender, TextChangedEventArgs _args)
        {//-  ,  _  .
            Entry _entry = (Entry)sender;
            if (_entry.Text.Length > 0)
            {
                char _ultimo = _entry.Text[_entry.Text.Length - 1];
                if (_ultimo == '-' || _ultimo == ',' || _ultimo == '_' || _ultimo == '.')
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
        public async void Fn_Editar(object sender, EventArgs _args)
        {
            v_editar = !v_editar;
            if (v_editar)
            {
                P_Editar.Text = "Cancelar";
                P_Guardar.IsVisible = true;
                PickTitulo.IsEnabled = true;//P_Nom.IsEnabled = true;// P_Ape.IsEnabled = true;
                P_sexoPick.IsEnabled = true;
                P_Esp.IsEnabled = true;
                P_Ced.IsEnabled = true;
                Pick1.IsEnabled = true;
                Pick2.IsEnabled = true;
                P_dom.IsEnabled = true;
                PickCiudad.IsEnabled = true;
                P_Tel.IsEnabled = true;
                P_Corr.IsEnabled = true;
                P_Descrip.IsEnabled = true;
                P_Swi.IsEnabled = true;
                PickEstado.IsEnabled = true;
                await Task.Delay(100);
            }
            else
            {
                P_Editar.Text = "Editar";
                P_Guardar.IsVisible = false;
                PickTitulo.IsEnabled = false;
                P_Nom.IsEnabled = false;
                P_Ape.IsEnabled = false;
                P_sexoPick.IsEnabled = false;
                P_Esp.IsEnabled = false;
                P_Ced.IsEnabled = false;
                Pick1.IsEnabled = false;
                Pick2.IsEnabled = false;
                P_dom.IsEnabled = false;
                PickCiudad.IsEnabled = false;
                P_Tel.IsEnabled = false;
                P_Corr.IsEnabled = false;
                P_Descrip.IsEnabled = false;
                P_Swi.IsEnabled = false;
                PickEstado.IsEnabled = false;
                App.Fn_CargarDatos();
                P_Nom.Text = App.v_perfil.v_Nombre;
                P_Ape.Text = App.v_perfil.v_Apellido;
                PickTitulo.SelectedIndex = int.Parse(App.v_perfil.v_titulo);
                P_sexoPick.SelectedIndex = App.v_perfil.v_idsexo;
                pickEspe.ItemsSource = v_espec;
                P_Esp.Text = App.v_perfil.v_Especialidad;
                v_especId = App.v_perfil.v_Especialidad;
                int[] _idesp = Fn_GetIdEsp(v_especId, v_opciones.v_espe);
                P_Esp.Text = "";
                for (int i = 0; i < _idesp.Length; i++)//prende soloo unos
                {
                    if (i == 0)
                    {
                        P_Esp.Text += v_espec[_idesp[i]].v_nombreEspec;
                        v_espec[_idesp[i]].v_visible = true;
                    }
                    else
                    {   //  P_Esp.Text += "&" + v_espec[val-1].v_nombreEspec;
                        P_Esp.Text += "," + v_espec[_idesp[i]].v_nombreEspec;
                        v_espec[_idesp[i]].v_visible = true;
                    }
                }    //  P_Ced.Text = App.v_perfil.v_cedula;
                if (string.IsNullOrEmpty(App.v_perfil.v_horario))
                {
                    App.v_perfil.v_horario = "10-50/12-10";
                }
                string[] _split = App.v_perfil.v_horario.Split('/');
                TimeSpan _span = new TimeSpan(int.Parse(_split[0].Split('-')[0]), int.Parse(_split[0].Split('-')[1]), 0);
                Pick1.Time = _span;
                _span = new TimeSpan(int.Parse(_split[1].Split('-')[0]), int.Parse(_split[1].Split('-')[1]), 0);
                Pick2.Time = _span;
                texHor.Text = "";
                P_dom.Text = App.v_perfil.v_Domicilio;
                P_Tel.Text = App.v_perfil.v_Tel;
                P_Corr.Text = App.v_perfil.v_Correo;
                P_Descrip.Text = App.v_perfil.v_descripcion;
            }
        }
        public async void Fn_Guardar(object sender, EventArgs _args)
        {
            Button _buton = (Button)sender;
            _buton.IsEnabled = false;
            string _Str = Fn_Condiciones();
            if (!string.IsNullOrEmpty(_Str))
            {
                await DisplayAlert("Error", _Str, "Aceptar");
            }
            else
            {
                if (string.IsNullOrEmpty(P_Esp.Text) || string.IsNullOrWhiteSpace(P_Esp.Text))
                {
                    await DisplayAlert("Error", "Es necesario elegir al menos una especialidad", "Aceptar");
                }
                else
                {
                    v_perfil.Fn_SetEspec(P_Esp.Text);
                    v_perfil.v_membre = App.v_membresia;
                    v_perfil.v_Nombre = App.Fn_Vacio(P_Nom.Text);
                    v_perfil.v_Apellido = App.Fn_Vacio(P_Ape.Text);
                    v_perfil.v_Domicilio = App.Fn_Vacio(P_dom.Text);
                    v_perfil.v_horario = (Pick1.Time.ToString(@"hh\-mm") + "/" + Pick2.Time.ToString(@"hh\-mm")).ToString();
                    v_perfil.v_Tel = App.Fn_Vacio(P_Tel.Text);
                    v_perfil.v_Correo = App.Fn_Vacio(P_Corr.Text);
                    v_perfil.v_cedula = App.Fn_Vacio(P_Ced.Text);
                    v_perfil.v_descripcion = App.Fn_Vacio(P_Descrip.Text);
                    v_perfil.v_idsexo = P_sexoPick.SelectedIndex;
                    if (v_cita)
                    {
                        v_perfil.v_cita = "1";
                    }
                    else
                    {
                        v_perfil.v_cita = "0";
                    }
                    string _json = JsonConvert.SerializeObject(v_perfil);
                    StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
                    HttpClient _client = new HttpClient();
                    string _url = NombresAux.BASE_URL + "update_perfil_dr.php";
                    try
                    {
                        HttpResponseMessage _respuestphp = await _client.PostAsync(_url, _content);
                        string _result = _respuestphp.Content.ReadAsStringAsync().Result;
                        if (_result == "1")
                        {
                            await Fn_GetIdsTitulo();
                            await DisplayAlert("Actualizado", "Informacion Guardado con éxito", "Aceptar");
                            _client = new HttpClient();
                            C_Login _login = new C_Login(App.v_membresia, "");
                            string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
                            _url = NombresAux.BASE_URL + "query_perfil_dr.php";
                            _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
                            try
                            {
                                _respuestphp = await _client.PostAsync(_url, _content);
                                _result = await _respuestphp.Content.ReadAsStringAsync();
                                C_Medico _nuePer = JsonConvert.DeserializeObject<C_Medico>(_result);
                                _nuePer.Fn_Init();
                                App.Fn_GuardarDatos(_nuePer);
                                Fn_Editar(sender, _args);
                                Fn_CargaPerfil();
                            }
                            catch (Exception ex)
                            {
                                await DisplayAlert("Error en actualizar", "Error en actualizar informacion", "Aceptar");
                            }
                        }
                        else if (_result == "0")
                        {
                            await DisplayAlert("Error en actualizar", "Error en actualizar informacion", "Aceptar");
                        }
                    }
                    catch (Exception _ex)
                    {
                        await DisplayAlert("ERROR", "Error en actualizar", "Aceptar");
                    }
                }
            }
            _buton.IsEnabled = true;
        }
        async  void Fn_CargaPerfil()
        {
            C_Login _login = new C_Login(App.v_membresia, "");
            string _jsonLog = JsonConvert.SerializeObject(_login, Formatting.Indented);
            string _DirEnviar = NombresAux.BASE_URL + "query_perfil_dr.php";
            StringContent _content = new StringContent(_jsonLog, Encoding.UTF8, "application/json");
            HttpClient _client = new HttpClient();
            try
            {
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                C_Medico _nuePer = JsonConvert.DeserializeObject<C_Medico>(_respuesta);
                _nuePer.Fn_Init();
                App.Fn_GuardarDatos(_nuePer);
                await Task.Delay(100);
                await Fn_GetIdsTitulo();
            }
            catch (Exception _ex)
            {
                Fn_CargaPerfil();
            }
        }
        async Task  Fn_GetIdsTitulo()
        {
            try
            {
                HttpClient _client = new HttpClient();
                HttpResponseMessage _respuestaphp;
                _respuestaphp = await _client.PostAsync(NombresAux.BASE_URL + "queries_titulos.php", null);
                string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                v_opciones = JsonConvert.DeserializeObject<c_RegOpciones>(_respuesta);
                v_opciones.v_ciudad.Add(new C_EspeTitu() { v_ciudad = "Otra" });
                v_opciones.v_titulos.Add(new C_EspeTitu() { v_nombreTitulo = "Otro" });
                v_opciones.v_estados.Add(new C_EspeTitu() { v_estado = "Otro" });
                IEnumerable<C_EspeTitu> _temp = v_opciones.v_espe.OrderBy(x => x.v_nombreEspec);
                v_opciones.v_espe = new ObservableCollection<C_EspeTitu>(_temp);
                #region CREA LOS ARREGLOS PARA EL PICKERd
                v_TitArr = new string[v_opciones.v_titulos.Count];
                for (int i = 0; i < v_opciones.v_titulos.Count; i++)
                {
                    v_TitArr[i] = v_opciones.v_titulos[i].v_nombreTitulo;
                }
                PickTitulo.ItemsSource = v_TitArr;
                v_CiudArr = new string[v_opciones.v_ciudad.Count];
                for (int i = 0; i < v_opciones.v_ciudad.Count; i++)
                {
                    v_CiudArr[i] = v_opciones.v_ciudad[i].v_ciudad;
                }
                PickCiudad.ItemsSource = v_CiudArr;
                v_EstadoArr = new string[v_opciones.v_estados.Count];
                for (int i = 0; i < v_opciones.v_estados.Count; i++)
                {
                    v_EstadoArr[i] = v_opciones.v_estados[i].v_estado;
                }
                PickEstado.ItemsSource = v_EstadoArr;
                #endregion
                App.Fn_CargarDatos();
                v_espec = v_opciones.v_espe;
                P_Nom.Text = App.v_perfil.v_Nombre;
                P_Ape.Text = App.v_perfil.v_Apellido;
                P_sexoPick.SelectedIndex = App.v_perfil.v_idsexo;
                pickEspe.ItemsSource = v_espec;
                v_perfil.v_EspecTex = App.v_perfil.v_EspecTex;
                v_perfil.Fn_Init();//agrega los &
                App.v_perfil.Fn_Init();//agrega los &
                v_especId = App.v_perfil.v_Especialidad;
                int[] _idesp = Fn_GetIdEsp(v_especId, v_opciones.v_espe) ;
                int _idc = Fn_GetIdCiu(App.v_perfil.v_ciudad, v_opciones.v_ciudad) ;
                int _idt = Fn_GetIdTitulo(App.v_perfil.v_titulo, v_opciones.v_titulos) ;
                int _idEst = Fn_GetIdEst(App.v_perfil.v_estado, v_opciones.v_estados) ;
                PickEstado.SelectedIndex =_idEst;
                PickTitulo.SelectedIndex =_idt;
                PickCiudad.SelectedIndex = _idc;
                P_Esp.Text = "";
                for (int i = 0; i < _idesp.Length; i++)//prende soloo unos
                {
                    if (i == 0)
                    {
                        P_Esp.Text += v_espec[_idesp[i]].v_nombreEspec;
                        v_espec[_idesp[i]].v_visible = true;
                    }
                    else
                    {
                        P_Esp.Text += "," + v_espec[_idesp[i]].v_nombreEspec;
                        v_espec[_idesp[i]].v_visible = true;
                    }
                }
                if (App.v_perfil.v_cita == "1")
                {
                    v_cita = true;
                }
                else
                {
                    v_cita = false;
                }
                P_Swi.IsToggled = v_cita;
                P_Ced.Text = App.v_perfil.v_cedula;
                P_dom.Text = App.v_perfil.v_Domicilio;
                P_Tel.Text = App.v_perfil.v_Tel;
                P_Corr.Text = App.v_perfil.v_Correo;
                P_Descrip.Text = App.v_perfil.v_descripcion;
                #region EL HORARIO Y CONVERSION PORQUE HICE CAMBIOS 
                if (string.IsNullOrEmpty(App.v_perfil.v_horario))
                {
                    App.v_perfil.v_horario = "00-00/00-00";
                }
                string[] _split = App.v_perfil.v_horario.Split('/');//el original es con   -   cambiar a :
                TimeSpan _span = new TimeSpan(int.Parse(_split[0].Split('-')[0]), int.Parse(_split[0].Split('-')[1]), 0);
                Pick1.Time = _span;
                _span = new TimeSpan(int.Parse(_split[1].Split('-')[0]), int.Parse(_split[1].Split('-')[1]), 0);
                Pick2.Time = _span;
                #endregion
            }
            catch (Exception _ex)
            {
                 await Fn_GetIdsTitulo();
            }
        }
        private void Fn_Setespe(object sender, EventArgs e)
        {
            int[] _idesp = Fn_GetIdEsp(v_especId, v_opciones.v_espe);
            P_Esp.Text = "";
            for (int i = 0; i < _idesp.Length; i++)//prende soloo unos
            {
                if (i == 0)
                {
                    P_Esp.Text += v_espec[_idesp[i]].v_nombreEspec;
                    v_espec[_idesp[i]].v_visible = true;
                }
                else
                {
                    P_Esp.Text += "," + v_espec[_idesp[i]].v_nombreEspec;
                    v_espec[_idesp[i]].v_visible = true;
                }
            }
            if (string.IsNullOrEmpty( P_Esp.Text))
            {
                P_Esp.Text += v_NuevaEsp;
            }
            else
            {
                P_Esp.Text += "," + v_NuevaEsp;
            }
            v_Selec = !v_Selec;
            StackOver.IsVisible = v_Selec;
            StackTodo.IsVisible = !v_Selec;
            pickEspe.IsVisible = v_Selec;
        }
        private void pickEspe_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            var list = (ListView)sender;
            list.ItemsSource = null;
            C_EspeTitu _tap = e.Item as C_EspeTitu;
            for (int i = 0; i < v_espec.Count; i++)
            {
                if (v_espec[i] == _tap)
                {
                    v_espec[i].v_visible = !v_espec[i].v_visible;
                }
            }
            list.ItemsSource = v_espec;
        }
        private void Fn_Cancel(object sender, EventArgs _arg)
        {
            pickEspe.ItemsSource = null;
            for (int i = 0; i < v_espec.Count; i++)//apaga todo
            {
                v_espec[i].v_visible = false;
            }
            IEnumerable<C_EspeTitu> _temp = v_opciones.v_espe.OrderBy(x => x.v_nombreEspec);
            v_espec =new ObservableCollection<C_EspeTitu> (_temp);
            int[] _idesp = Fn_GetIdEsp(v_especId, v_opciones.v_espe);
            P_Esp.Text = "";
            for (int i = 0; i < _idesp.Length; i++)//prende soloo unos
            {
                if (i == 0)
                {

                    P_Esp.Text += v_espec[_idesp[i]].v_nombreEspec;
                    v_espec[_idesp[i]].v_visible = true;
                }
                else
                {
                    //  P_Esp.Text += "&" + v_espec[val-1].v_nombreEspec;
                    P_Esp.Text += "," + v_espec[_idesp[i]].v_nombreEspec;
                    v_espec[_idesp[i]].v_visible = true;
                }
            }
            pickEspe.ItemsSource = v_espec;
            Fn_Setespe(sender, _arg);
        }
        private void Fn_Aceptar(object sender, EventArgs _arg)
        {
            v_especId = "";
            string _str = "";
            for(int i=0; i<v_espec.Count;i++)
            {
                if(v_espec[i].v_visible)
                {
                    if(i==0 || v_especId=="")
                    {
                        v_especId += v_espec[i].v_idespecial;
                    }
                    else
                    {
                        v_especId += "&" + v_espec[i].v_idespecial;
                    }
                    _str += v_espec[i].v_idespecial+"&";
                }
            }
            v_NuevaEsp = "";
            if(!string.IsNullOrEmpty(P_NueEsp.Text) && !string.IsNullOrWhiteSpace(P_NueEsp.Text))
            {
                v_NuevaEsp = P_NueEsp.Text;
            }
            Fn_Setespe(sender, _arg);
        }
        string Fn_Condiciones()
        {
            string _ret = string.Empty;
            if (PickTitulo.SelectedIndex == PickTitulo.Items.Count - 1)//eligio otra
            {
                if(string.IsNullOrEmpty( P_Tit.Text))
                {
                    _ret+= "Elegiste otro titulo pero no se escribio";
                }
                else
                {
                    v_perfil.v_titulo = P_Tit.Text;
                }
            }
            else
            {
                v_perfil.v_titulo = PickTitulo.SelectedItem.ToString();
            }
            if (PickCiudad.SelectedIndex == PickCiudad.Items.Count - 1)//eligio otra
            {
                if (string.IsNullOrEmpty(P_Ciu.Text))
                {
                    _ret += "\nElegiste otra ciudad pero no se escribio";
                }
                else
                {
                    v_perfil.v_ciudad = P_Ciu.Text;
                }
            }
            else
            {
                v_perfil.v_ciudad = PickCiudad.Items[PickCiudad.SelectedIndex ].ToString();
            }
            if (PickEstado.SelectedIndex == PickEstado.Items.Count - 1)//eligio otra
            {
                if (string.IsNullOrEmpty(P_Estado.Text))
                {
                    _ret += "\nElegiste otro estado pero no se escribio";
                }
                else
                {
                    v_perfil.v_estado = P_Estado.Text;
                }
            }
            else
            {
                v_perfil.v_estado = PickEstado.SelectedItem.ToString();
            }
            return _ret;
        }
        private void Fn_Unfocused(object sender, FocusEventArgs e)
        {
            texHor.Text = "De " + Pick1.Time.ToString(@"hh\-mm") + " : " + Pick2.Time.ToString(@"hh\-mm");
        }
        private void PickCiudad_SelectedIndexChanged(object sender, EventArgs e)
        {
            Picker _pick =sender as Picker;
            if(_pick.SelectedIndex>0)
            {
                if (_pick.SelectedIndex == _pick.Items.Count-1)//eligio otra
                {
                    P_Ciu.IsVisible = true;
                }
                else
                {
                    P_Ciu.IsVisible = false;
                }
                P_Ciu.Text = "";
            }
        }
        private void PickTitulo_SelectedIndexChanged(object sender, EventArgs e)
        {
            Picker _pick = sender as Picker;
            if(_pick.SelectedIndex>0)
            {
                if (_pick.SelectedIndex == _pick.Items.Count-1)//eligio otra
                {
                    P_Tit.IsVisible = true;
                }
                else
                {
                    P_Tit.IsVisible = false;
                }
                P_Tit.Text = "";
            }
        }
        private void PickEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            Picker _pick = sender as Picker;
            if (_pick.SelectedIndex > 0)
            {
                if (_pick.SelectedIndex == _pick.Items.Count - 1)//eligio otra
                {
                    P_Estado.IsVisible = true;
                }
                else
                {
                    P_Estado.IsVisible = false;
                }
                P_Estado.Text = "";
            }
        }
        int[] Fn_GetIdEsp(string _ids,ObservableCollection<C_EspeTitu> _lista )
        {
            string []_str= _ids.Split('&');
            int _ret = 0;
            for(int i=0; i<_str.Length; i++)
            {
                if(!string.IsNullOrEmpty(_str[i]) || !string.IsNullOrWhiteSpace(_str[i]))
                {
                    _ret++;
                }
            }
            int[] _arr = new int[_ret];
            for(int _id = 0; _id<_ret; _id++)
            {
                for(int i=0; i <_lista.Count; i++)
                {
                    if(_lista[i].v_idespecial == _str[_id])
                    {
                        _arr[_id] = i;
                        break;
                    }
                }
            }
            return _arr;
        }
        int Fn_GetIdCiu(string _idciu, ObservableCollection<C_EspeTitu> _lista)
        {
            int _ret = -1;
            for (int i = 0; i < _lista.Count; i++)
            {
                if (_lista[i].v_idUbicacion == _idciu)
                {
                    _ret=i;
                }
            }
            return _ret;
        }
        int Fn_GetIdEst(string _id, ObservableCollection<C_EspeTitu> _lista)
        {
            int _ret = -1;
            for (int i = 0; i < _lista.Count; i++)
            {
                if (_lista[i].v_idEstado ==_id)
                {
                    _ret = i;
                }
            }
            return _ret;
        }
        int Fn_GetIdTitulo(string _ids, ObservableCollection<C_EspeTitu> _lista)
        {
            int _ret = -1;
            for (int i = 0; i < _lista.Count; i++)
            {
                if (_lista[i].v_idtitulo == _ids)
                {
                    _ret = i;
                }
            }
            return _ret;
        }
    }
}
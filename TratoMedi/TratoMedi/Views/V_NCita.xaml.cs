using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TratoMedi.Varios;
using System.Net.Http;
using Newtonsoft.Json;
//para agregar loos eventos al calendario
using Plugin.Calendars;
using Plugin.Calendars.Abstractions;
using Newtonsoft.Json.Linq;
using Plugin.Permissions;
using Plugin.Permissions.Abstractions;
//para agregar loos eventos al calendario
namespace TratoMedi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class V_NCita : ContentPage
    {
        Cita v_cita;
        bool v_nueva;
        string _esta;

        public V_NCita(Cita _cita, bool _nueva)
        {
            InitializeComponent();
            v_nueva = _nueva;
            v_cita = _cita;
            // v_cita.Fn_SetValores();
            v_fecha.MinimumDate = DateTime.MinValue;
            v_fecha.Date = v_cita.v_fechaDate;
            v_fecha.MaximumDate =DateTime.Now.AddMonths(1);
            v_fecha.IsEnabled = false;
            v_hora.IsEnabled = false;
            v_hora.Time = v_cita.v_hora;
            _esta = v_cita.v_estado;
            int _a = int.Parse(v_cita.v_estado);
            v_estado.Text = ((EstadoCita)_a).ToString().Replace('_', ' ');
            v_nombre.Text = v_cita.v_nombrePaciente;
            Fn_Botones(v_cita.v_estado);
            App.Fn_Borra();
        }
        public async void Fn_Actu(object sender, EventArgs _args)
        {
            if (v_nueva)
            {  //nueva 1 v_estado.SelectedIndex.ToString()
                Cita _cita = new Cita(v_cita.v_pacienteId, App.v_membresia, v_cita.v_folio, "1", v_fecha.Date,
                 v_hora.Time, App.Fn_GEtToken());
                string _json = JsonConvert.SerializeObject(_cita, Formatting.Indented);
                HttpClient _client = new HttpClient();
                string _DirEnviar = NombresAux.BASE_URL + "set_citas.php";
                StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
                try
                {  
                    HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                    if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                        if (_respuesta == "1")
                        {
                            await DisplayAlert("Exito", "Cita generada correctamente, espera la respuesta de tu doctor", "Aceptar");
                            await Navigation.PopAsync();
                        }
                        else
                        {
                            await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                        }
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Error", "Error de Conexión, intentarlo más tarde", "Aceptar");
                }
            }
            else//aca actualizar el estado de la cita
            {
                Cita _cita = new Cita("2", v_fecha.Date, v_hora.Time, v_cita.v_idCita,"1");
                string _json = JsonConvert.SerializeObject(_cita, Formatting.Indented);
                //await DisplayAlert("Enviar", _json, "aceptar");
                HttpClient _client = new HttpClient();
                string _DirEnviar = NombresAux.BASE_URL + "update_citas.php";
                StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
                try
                {  //getting exception in the following line    //HttpResponseMessage upd_now_playing = await cli.PostAsync(new Uri("http://ws.audioscrobbler.com/2.0/", UriKind.RelativeOrAbsolute), tunp);
                    HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                    if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                        if (_respuesta == "1")
                        {
                            await DisplayAlert("Exito", "Cita generada correctamente, espera la respuesta de tu doctor", "Aceptar");
                            await Navigation.PopAsync();
                        }
                        else
                        {
                            await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                        }
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Error", ex.Message, "Aceptar");
                }
            }
        }
        /// <summary>
        ///Terminada = 0,  Nueva = 1, Pendiente esperando paciente = 2, Aceptada = 3, Cancelada = 4, esperando al doctor  5
        /// </summary>
        private void Fn_Botones(string _valor)
        {
            switch (_valor)
            {
                case "0"://TErminada, ya paso
                    {
                        v_botAcep.IsEnabled = false;
                        v_botCambio.IsEnabled = false;
                        v_botRec.IsEnabled = false;
                    }
                    break;
                case "1"://nueva
                    {
                        v_botAcep.IsEnabled = true;
                        v_botCambio.IsEnabled = true;
                        v_botRec.IsEnabled = true;
                    }
                    break;
                case "2"://pendiente esperando paciente
                    {
                        v_botAcep.IsEnabled = false;
                        v_botCambio.IsEnabled = false;
                        v_botRec.IsEnabled = true;
                    }
                    break;
                case "3"://aceptada
                    {
                        v_botAcep.IsEnabled = false;
                        v_botCambio.IsEnabled = false;
                        v_botRec.IsEnabled = true;
                        Fn_Calendario(v_cita.v_fechaDate, v_cita.v_hora);
                    }
                    break;
                case "4"://cancelada
                    {
                        v_botAcep.IsEnabled = false;
                        v_botCambio.IsEnabled = false;
                        v_botRec.IsEnabled = false;
                    }
                    break;
                case "5"://esperando al doctor
                    {
                        v_botAcep.IsEnabled = true;
                        v_botCambio.IsEnabled = true;
                        v_botRec.IsEnabled = true;
                    }
                    break;
            }
        }
        /// <summary>
        /// Terminada = 0,  Nueva = 1, Pendiente esperando paciente = 2, Aceptada = 3, Cancelada = 4, esperando al doctor  5
        /// </summary>
        private async void Fn_ActualizarInfo(string _nuevoestado)
        {
            Fn_Botones("4");//apaga todos los botones
            Cita _cita = new Cita(_nuevoestado, v_fecha.Date, v_hora.Time, v_cita.v_idCita,"1");
            string _json = JsonConvert.SerializeObject(_cita, Formatting.Indented);
            HttpClient _client = new HttpClient();
            string _DirEnviar = NombresAux.BASE_URL + "update_citas.php";
            StringContent _content = new StringContent(_json, Encoding.UTF8, "application/json");
            try
            {  
                HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                    if (_respuesta == "1")
                    {
                        await DisplayAlert("Exito", "Cambios generados correctamente", "Aceptar");
                        if (_nuevoestado == "3")
                        {
                            Fn_Calendario(v_fecha.Date, v_hora.Time);
                        }
                        await Navigation.PopAsync();//se hacen los cambios y se regresa una pantalla
                    }
                    else
                    {
                        await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                        Fn_Botones(v_cita.v_estado);//regresar al ultimo estadoo
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", "Error al actualizar, favor de reintentar", "Aceptar");
                Fn_Botones(v_cita.v_estado);//regresar al ultimo estadoo
            }
        }
        private void Fn_Acep(object sender, EventArgs _Args)
        {
            Fn_ActualizarInfo("3");
        }
        private void Fn_Recha(object sender, EventArgs _Args)
        {
            Fn_ActualizarInfo("4");
        }
        /// <summary>
        /// Cuando quieres cambiar la fecha/hora
        /// </summary>
        private void Fn_Cambios(object sender, EventArgs _Args)
        {
            v_fecha.MinimumDate = DateTime.Now;
            v_fecha.MaximumDate = DateTime.Now.AddMonths(1);
            v_fecha.IsEnabled = true;
            v_hora.IsEnabled = true;
            StackPendiente.IsVisible = true;
            StackTre.IsVisible = false;
        }
        /// <summary>
        /// hacer los cambios en el calendario y reloj, luego aceptar los cambios
        /// </summary>
        private void Fn_AcepCambio(object sender, EventArgs _args)
        {
            StackPendiente.IsVisible = false;
            StackTre.IsVisible = true;
            Fn_ActualizarInfo("2");
        }
        private void Fn_CancelCambio(object sender, EventArgs _args)
        {
            v_fecha.MinimumDate = DateTime.MinValue;
            v_fecha.Date = v_cita.v_fechaDate;
            v_fecha.IsEnabled = false;
            v_hora.Time = v_cita.v_hora;
            v_hora.IsEnabled = false;
            Fn_Botones(_esta);
            StackPendiente.IsVisible = false;
            StackTre.IsVisible = true;
        }
        /// <summary>
        /// agrega la cita a tu calendario
        /// </summary>
        private async void Fn_Calendario(DateTime _fecha, TimeSpan _hora)
        {
            try
            {
                var status = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Calendar);
                if (status != PermissionStatus.Granted)// si no tiene los permisos
                {
                    if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Permission.Calendar))
                    {
                        await DisplayAlert("Acceso a tu agenda", "Se necesita permisos para agregar eventos a tu Agenda", "Aceptar");
                    }
                    var results = await CrossPermissions.Current.RequestPermissionsAsync(Permission.Calendar);
                    //Best practice to always check that the key exists
                    if (results.ContainsKey(Permission.Calendar))
                        status = results[Permission.Calendar];
                }
                if (status == PermissionStatus.Granted)
                {
                    try//revisa los calendarios
                    {
                        //los calendarios en el telefono,   el 0 es el calendario del sistema
                        var TodosCalen = await CrossCalendars.Current.GetCalendarsAsync();
                        if (string.IsNullOrEmpty(v_cita.v_idCalendar) || string.IsNullOrWhiteSpace(v_cita.v_idCalendar))//la cita no tiene ningun evento
                        {
                            DateTime _final = new DateTime(_fecha.Year, _fecha.Month, _fecha.Day, _hora.Hours, _hora.Minutes, _hora.Seconds);
                            if (DateTime.Compare(DateTime.Now, _final) < 0)
                            {
                                //info a mostrar en la agenda
                                var calendarEvent = new CalendarEvent
                                {
                                    Name = "Cita desde Trato Especial",
                                    Start = _final,
                                    End = _final.AddHours(1),
                                    Description = "Tienes agendada una cita con " + v_cita.v_nombrePaciente,
                                    Reminders = new List<CalendarEventReminder>()
                                    {
                                        new  CalendarEventReminder() { Method = CalendarReminderMethod.Alert, TimeBefore=new TimeSpan(24, 0, 0) },
                                        new  CalendarEventReminder() { Method = CalendarReminderMethod.Alert, TimeBefore=new TimeSpan(2, 0, 0) },
                                        new  CalendarEventReminder() { Method = CalendarReminderMethod.Alert, TimeBefore=new TimeSpan(0, 10, 0) },
                                        new  CalendarEventReminder() { Method = CalendarReminderMethod.Alert, TimeBefore=new TimeSpan(0, 30, 0) }
                                    },
                                    AllDay = false
                                };
                                //agregarlo
                                try
                                {
                                    bool _sel = await DisplayAlert("Agendar", "Deseas agregar este evento a tu agenda y recibir recordatorios?", "Si", "No");
                                    if (_sel)
                                    {
                                        await CrossCalendars.Current.AddOrUpdateEventAsync(TodosCalen[0], calendarEvent);
                                        v_cita.v_idCalendar = calendarEvent.ExternalID;//guarda el id del evento
                                    }
                                    else
                                    {
                                        v_cita.v_idCalendar = "-1";
                                    }
                                    string json = @"{";
                                    json += "ID_cita:'" + v_cita.v_idCita + "',\n";
                                    json += "idcalendario:'" + v_cita.v_idCalendar + "'\n";
                                    json += "}";
                                    JObject _json = JObject.Parse(json);
                                    HttpClient _client = new HttpClient();
                                    string _DirEnviar = NombresAux.BASE_URL + "update_calendario_dr.php";
                                    StringContent _content = new StringContent(_json.ToString(), Encoding.UTF8, "application/json");
                                    try
                                    {
                                        HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                                        if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                                        {
                                            string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                            if (_respuesta == "1")
                                            {
                                            }
                                            else
                                            {
                                                await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                                            }
                                        }
                                    }
                                    catch (Exception ex)
                                    {
                                        await DisplayAlert("Error", "Error de conexión, intentalo mas tarde", "Aceptar");
                                    }//try post
                                }
                                catch (UnauthorizedAccessException )//try agregarlo
                                {
                                    await DisplayAlert("Error", "Se Necesita acceso darle permiso de uso de calendario", "Aceptar");
                                }
                                catch (Exception ex)//try agregarlo
                                {
                                    await DisplayAlert("Error", "No se pudo agendar tu cita, intentalo mas tarde", "Aceptar");
                                }

                            }
                            else
                            {
                                v_cita.v_idCalendar = "-1";
                                string json = @"{";
                                json += "ID_cita:'" + v_cita.v_idCita + "',\n";
                                json += "idcalendario:'" + v_cita.v_idCalendar + "'\n";
                                json += "}";
                                JObject _json = JObject.Parse(json);
                                HttpClient _client = new HttpClient();
                                string _DirEnviar = NombresAux.BASE_URL + "update_calendario.php";
                                StringContent _content = new StringContent(_json.ToString(), Encoding.UTF8, "application/json");
                                try
                                {
                                    HttpResponseMessage _respuestaphp = await _client.PostAsync(_DirEnviar, _content);
                                    if (_respuestaphp.StatusCode == System.Net.HttpStatusCode.OK)
                                    {
                                        string _respuesta = await _respuestaphp.Content.ReadAsStringAsync();
                                        await DisplayAlert("Error", "La fecha que se trata de agendar, ya ha pasado", "Continuar");
                                    }
                                }
                                catch (Exception)
                                {
                                    await DisplayAlert("Error", "La fecha que se trata de agendar, ya ha pasado", "Continuar");
                                }//try post fecha pasada
                            }
                        }
                    }
                    catch (UnauthorizedAccessException ex)
                    {
                        await DisplayAlert("Aviso", "Se Necesita acceso darle permiso de uso de calendario" + ex, "Aceptar");
                    }//try revisa los calendarios
                }
                else if (status == PermissionStatus.Denied)
                {
                    await DisplayAlert("Acceso a Agenda negado", "No se agregarán eventos a tu Agenda del telefono", "Aceptar");
                }
            }
            catch(Exception _ex)
            {

            }
        }
    }
}
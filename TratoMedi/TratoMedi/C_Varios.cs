using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace TratoMedi.Varios
{
    public class Filtro
    {
        public string v_texto { get; set; }
        public bool v_visible { get; set; }

        public Filtro()
        {
            v_texto = "";
            //v_color = new Color(.15686274509, 0.58823529411, 0.81960784313);
        }
        public Filtro(string _texto)
        {
            v_texto = _texto;
          //  v_color = new Color(.15686274509, 0.58823529411, 0.81960784313);
        }
        //public Filtro(string _texto, bool _Activo)
        //{
        //    v_texto = _texto;
        //    if (_Activo)
        //    {
        //        v_color = Color.Red;
        //    }
        //    else
        //    {
        //        v_color = new Color(.15686274509, 0.58823529411, 0.81960784313);
        //    }
        //}
    }

    public class Banner
    {
        [JsonProperty("img")]
        public string v_img { get; set; }
        [JsonProperty("sitio")]
        public string v_sitio { get; set; }

        public Banner()
        {
            v_img = "";
            v_sitio = "";
        }
        public Banner(string _img, string _sitio)
        {
            v_img = _img;
            v_sitio = _sitio;
        }
    }
    public class C_EspeTitu
    {
        public C_EspeTitu()
        {
            v_idespecial = string.Empty;
            v_nombreEspec = string.Empty;
            v_idtitulo = string.Empty;
            v_nombreTitulo = string.Empty;
            v_idUbicacion = string.Empty;
            v_ciudad = string.Empty;
            v_visible = false;
        }
        [JsonProperty("ID_especialidad")]
        public string v_idespecial { get; set; }
        [JsonProperty("nombre_especialidad")]
        public string v_nombreEspec { get; set; }
        [JsonProperty("ID_titulo")]
        public string v_idtitulo { get; set; }
        [JsonProperty("nombre_titulo")]
        public string v_nombreTitulo { get; set; }
        [JsonProperty("ID_ubicacion")]
        public string v_idUbicacion { get; set; }
        [JsonProperty("nombre_ciudad")]
        public string v_ciudad { get; set; }
        [JsonProperty("ID_estado")]
        public string v_idEstado { get; set; }
        [JsonProperty("nombre_estado")]
        public string v_estado { get; set; }
        public bool v_visible { get; set; }
    }
    public enum EstadoCita
    {
        Terminada = 0,
        Nueva = 1,
        /// <summary>
        /// esperando respuesta del paciente
        /// </summary>
        Pendiente_respuesta_del_paciente = 2,
        Aceptada = 3,
        Cancelada = 4,
        /// <summary>
        /// esperando respuyesta del medico
        /// </summary>
        Pendiente_respuesta_del_medico  = 5
    }
    public class Cita
    {
        /// <summary>
        /// membresia completa
        /// </summary>
        [JsonProperty("ID_Dr")]
        public string v_doctorId { get; set; }
        /// <summary>
        /// membresia completa  1810I-0558
        /// </summary>
        [JsonProperty("ID_paciente")]
        public string v_pacienteId { get; set; }
        /// <summary>
        /// folio del usuario
        /// </summary>
        [JsonProperty("folio")]
        public string v_folio { get; set; }
        /// <summary>
        /// el numero que manda la base de datos en forma de texto
        /// </summary>
        [JsonProperty("estado")]
        public string v_estado { get; set; }
        /// <summary>
        /// yyyy-mm-dd
        /// </summary>
        [JsonProperty("fecha")]
        public string v_fecha { get; set; }
        public DateTime v_fechaDate { get; set; }
        [JsonProperty("hora")]
        public TimeSpan v_hora { get; set; }
        [JsonProperty("nombreDr")]
        public string v_nombreDR { get; set; }
        [JsonProperty("nombrePaciente")]
        public string v_nombrePaciente { get; set; }

        [JsonProperty("tokenDr")]
        public string v_tokenDR { get; set; }
        [JsonProperty("tokenPaciente")]
        public string v_tokenPaciente { get; set; }
        /// <summary>
        /// 0 paciente 1 doctor
        /// </summary>
        /// <value>The v tipo.</value>
        [JsonProperty("tipo")]
        public string v_tipo { get; set; }
        [JsonProperty("ID_cita")]
        public string v_idCita { get; set; }
        /// <summary>
        /// en la opantalla de citas colores
        /// </summary>
        [JsonIgnore]
        public Color v_color { get; set; }

        /// <summary>
        /// el string que se le manda a la lista
        /// </summary>
        public string v_Estadocita { get; set; }
        [JsonProperty("idcalendario")]
        public string v_idCalendar { get; set; }


        public Cita() { v_estado = "-1";}
        /// <summary>
        /// get de las citas si es medico o paciente
        /// </summary>
        /// <param name="_membre"></param>
        /// <param name="_tipo"></param>
        public Cita(string _membre, string _tipo)
        {
            v_tipo = _tipo;
            if (_tipo == "0")
            {
                v_pacienteId = _membre;
            }
            else if (_tipo == "1")
            {
                v_doctorId = _membre;
            }
        }
        public Cita(string _membre, string _folio, string _tipo)
        {
            v_tipo = _tipo;
            if (_tipo == "0")
            {
                v_pacienteId = _membre;
                v_folio = _folio;
            }
            else if (_tipo == "1")
            {
                v_doctorId = _membre;
            }
        }
        /* public Cita(string _membredr, string _membrepac, string _folio, string _estado, DateTime _fecha, TimeSpan _hora, string _tokenDr, string _tokenpac)
         {

         }*/
       
        /// <summary>
        /// para crear el json a enviar en la nueva cita
        /// </summary>
        /// <param name="_membredr"></param>
        /// <param name="_membrepac"></param>
        /// <param name="_folio"></param>
        /// <param name="_estado"></param>
        /// <param name="_fecha"></param>
        /// <param name="_hora"></param>
        /// <param name="_tokenPac"></param>
        public Cita(string _membredr, string _membrepac, string _folio, string _estado, DateTime _fecha, TimeSpan _hora, string _tokenPac)
        {
            v_doctorId = _membredr;
            v_pacienteId = _membrepac;
            v_folio = _folio;
            v_estado = _estado;
            v_hora = _hora;
            v_tokenPaciente = _tokenPac;
            string _month = "";
            if (_fecha.Month < 10)
            {
                _month = "0" + _fecha.Month.ToString();
            }
            else
            {
                _month = _fecha.Month.ToString();
            }
            string _day = "";
            if (_fecha.Day < 10)
            {
                _day = "0" + _fecha.Day.ToString();
            }
            else
            {
                _day = _fecha.Day.ToString();
            }
            v_fecha = _fecha.Year.ToString() + "-" + _month + "-" + _day;
            v_fechaDate = _fecha;
        }
        /// <summary>
        /// para el update, tipo al que se le envia
        /// </summary>
        /// <param name="_estado"></param>
        /// <param name="_fecha"></param>
        /// <param name="_hora"></param>
        /// <param name="_idcita"></param>
        public Cita( string _estado, DateTime _fecha, TimeSpan _hora, string _idcita, string _tipo)
        {
            v_idCita = _idcita;
            v_estado = _estado;
            v_hora = _hora;
            string _month = "";
            if (_fecha.Month < 10)
            {
                _month = "0" + _fecha.Month.ToString();
            }
            else
            {
                _month = _fecha.Month.ToString();
            }
            string _day = "";
            if (_fecha.Day < 10)
            {
                _day = "0" + _fecha.Day.ToString();
            }
            else
            {
                _day = _fecha.Day.ToString();
            }
            v_fecha = _fecha.Year.ToString() + "-" + _month + "-" + _day;

            v_tipo = _tipo;
        }

        /// <summary>
        /// prueba de notification
        /// </summary>
        /// <param name="_estado"></param>
        public Cita(string _estado)
        {
            v_doctorId = "1808D-0008";
            v_pacienteId = "1810I-0558";
            v_folio = "0";
            v_estado = _estado;
            v_hora = DateTime.Now.TimeOfDay;
            v_fecha = DateTime.Now.Date.Year + "-" + DateTime.Now.Date.Month + "-" + DateTime.Now.Date.Day;
            v_fechaDate = DateTime.Now.Date;
            
            v_nombreDR = "prueba notif";
            v_nombrePaciente = "Prueba notif paciente";
        }

        public string Fn_GetInfo()
        {
            string _ret = v_doctorId + "   " +  "  " + v_pacienteId + " " + v_folio + " " + v_estado + " " + v_fecha + " " +
                v_fechaDate + " " + v_hora + " " + v_nombreDR + " " + v_nombrePaciente + " " + v_tokenDR + " " +
                v_tokenPaciente + " " + v_tipo + " " + v_idCita;
            return _ret;
        }

        /// <summary>
        /// para cambiar el color dentro de la lista visible, cambia estado cita, y formato de la fecha
        /// </summary>
        /// <param name="_valor"></param>       
        public void Fn_CAmbioCol(int _valor)
        {
            if ((_valor % 2) == 1)
            {
                v_color = Color.FromHex("F2F2F2");
            }
            else
            {
                v_color = Color.White;
            }
            int _a = int.Parse(v_estado);
            v_Estadocita =  ((EstadoCita)_a).ToString().Replace('_',' ');
            string[] _fecha = v_fecha.Split('-');
            v_fechaDate = new DateTime(int.Parse(_fecha[0]), int.Parse(_fecha[1]), int.Parse(_fecha[2]),
                                       v_hora.Hours, v_hora.Minutes, v_hora.Seconds);
        }
        public void Fn_SetValores()
        {
            int _a = int.Parse(v_estado);
            v_Estadocita = ((EstadoCita)_a).ToString().Replace('_', ' ');
            /*if (v_fechaDate== null)
            {
            }*/


            string[] _fecha = v_fecha.Split('-');//month day year
            v_fechaDate = new DateTime(int.Parse(_fecha[0]), int.Parse(_fecha[1]), int.Parse(_fecha[2]),
                                       v_hora.Hours, v_hora.Minutes, v_hora.Seconds);
        }
    }

    public class C_Notificacion
    {
        public C_Notificacion()
        { }
        public C_Notificacion(string _titulo, string _body)
        {
            v_titulo = _titulo;
            string temp = _body.Replace("\n", Environment.NewLine);
            v_cuerpo = temp;
        }
        [JsonProperty("estado")]
        public string v_estado { get; set; }
        //Lo que se vaa a mostrar
        [JsonProperty("title") ]
        public string v_titulo { get; set; }
        [JsonProperty("message")]
        public string v_cuerpo { set; get; }
    }
    public class Medicamentos
    {
        [JsonProperty("nombre")]
        public string v_nombre{ get; set; }
        [JsonProperty("periodo")]
        /// <summary>
        /// por cuantos dias 
        /// </summary>
        public float v_periodo { get; set; }
        [JsonProperty("tiempo")]
       /// <summary>
       /// cada cuantas horas
       /// </summary>
        public float v_tiempo { get; set; }
        [JsonProperty("extra")]
        public string v_extra { get; set; }
        [JsonProperty("dosis")]
        public string v_dosis { get; set; }

        [JsonProperty("estado")]
        public string v_estado { get; set; }
        [JsonIgnore]
        public string v_texto { get; set; }

        public void Fn_SetTexto()
        {
            if (v_estado == "0")//todavia no empieza a tomar
            {
                v_texto ="Tratamiento no iniciado";
            }
            else if (v_estado == "1")//ya tomandose
            {
                v_texto = "Tratamiento en Proceso";
            }
            else if (v_estado == "2")//ya se acabo
            {
                v_texto = "Tratamiento Terminado";
            }
        }
        public string Fn_Info()
        {
            string _info = "";
            _info = "nombre " + v_nombre + "\n periodo " + v_periodo + "\n tiempo " + v_tiempo + "\n extra " + v_extra;
            return _info;
        }
    }

    public class C_NotaMed
    {   //para mostrar el historial de lo que esta tomando
        [JsonProperty("fecha")]
        public string v_fecha { get; set; }
        public DateTime v_fechaDate { get; set; }
        [JsonProperty("hora")]
        public TimeSpan v_hora { get; set; }
        [JsonProperty("titulo")]
        public string v_titulo { get; set; }
        [JsonProperty("nombreDr")]
        public string v_nombreDr { get; set; }
        [JsonProperty("espe")]
        public ObservableCollection<C_EspeTitu> v_espe;
        public string v_especialidad { get; set; }

        public void Fn_SetEspe()
        {
            v_especialidad = "";
            for (int i = 0; i < v_espe.Count; i++)
            {
                if(i==0)
                {
                    v_especialidad += v_espe[i].v_nombreEspec;
                }
                else
                {
                    v_especialidad += ", "+v_espe[i].v_nombreEspec;
                }
            }
        }



        //para mostrar el historial de lo que esta tomando


        /// <summary>
        /// membresia completa  1810I-0558
        /// </summary>
        [JsonProperty("ID_paciente")]
        public string v_pacienteId { get; set; }
        /// <summary>
        /// folio del usuario
        /// </summary>
        [JsonProperty("folio")]
        public string v_folio { get; set; }
        [JsonProperty("ID_cita")]
        public string v_idCita { get; set; }
       [JsonProperty("cuantos")]
        public string v_cuantos { get; set; }
        [JsonProperty("medicamentos")]
        public ObservableCollection<Medicamentos> v_medic = new ObservableCollection<Medicamentos>();

        public C_NotaMed() { }
        /// <summary>
        /// para hacer el insert de terminar una cita
        /// </summary>
        /// <param name="_paci"></param>
        /// <param name="_folio"></param>
        /// <param name="_idcita"></param>
        /// <param name="_cuantos"></param>
        /// <param name="_medi"></param>
        public C_NotaMed(string _paci, string _folio, string _idcita, string _cuantos, ObservableCollection<Medicamentos> _medi)
        {
            v_pacienteId = _paci;
            v_folio = _folio;
            v_idCita = _idcita;
            v_cuantos = _cuantos;
            v_medic = _medi;
        }



    }
}

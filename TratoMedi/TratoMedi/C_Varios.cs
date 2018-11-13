﻿using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace TratoMedi.Varios
{
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
        [JsonProperty("ID_especialidad")]
        public string v_idespecial { get; set; }
        [JsonProperty("nombre_especialidad")]
        public string v_nombreEspec { get; set; }

        [JsonProperty("ID_titulo")]
        public string v_idtitulo { get; set; }
        [JsonProperty("nombre_titulo")]
        public string v_nombreTitulo { get; set; }

        public bool v_visible { get; set; }

    }

    public enum EstadoCita
    {
        Inactiva,
        Nueva,
        Pendiente,
        Aceptada,
        Cancelada
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

        public Cita() { }
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
        public Cita(string _membredr, string _membrepac, string _folio, string _estado, DateTime _fecha, TimeSpan _hora, string _tokenDr, string _tokenpac)
        {

        }
        /// <summary>
        /// para crear el json a enviar
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
        }


        /// <summary>
        /// en la opantalla de citas colores
        /// </summary>
        [JsonIgnore]
        public Color v_color { get; set; }
        [JsonIgnore]
        public EstadoCita v_Estadocita { get; set; }
        /// <summary>
        /// para cambiar el color dentro de la lista visible, cambia estado cita, y formato de la fecha
        /// </summary>
        /// <param name="_valor"></param>       
        public void Fn_CAmbioCol(int _valor)
        {
            if ((_valor % 2) == 1)
            {
                v_color = Color.PaleGreen;
            }
            else
            {
                v_color = Color.PaleTurquoise;
            }
            v_Estadocita = (EstadoCita)(int.Parse(v_estado));
            string[] _fecha = v_fecha.Split('-');
            v_fechaDate = new DateTime(int.Parse(_fecha[0]), int.Parse(_fecha[1]), int.Parse(_fecha[2]));
        }
        public void Fn_SetValores()
        {
            v_Estadocita = (EstadoCita)(int.Parse(v_estado));
            string[] _fecha = v_fecha.Split('/');//month day year
            string[] _year = _fecha[2].Split(' ');

            v_fechaDate = new DateTime(int.Parse(_year[0]), int.Parse(_fecha[0]), int.Parse(_fecha[1]));
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
        public int v_periodo { get; set; }
        [JsonProperty("tiempo")]
       /// <summary>
       /// cada cuantas horas
       /// </summary>
        public int v_tiempo { get; set; }
        [JsonProperty("extra")]
        public string v_extra { get; set; }
        public string Fn_Info()
        {
            string _info = "";
            _info = "nombre " + v_nombre + "\n periodo " + v_periodo + "\n tiempo " + v_tiempo + "\n extra " + v_extra;
            return _info;
        }
    }

    public class C_Paciente
    {

    }

}

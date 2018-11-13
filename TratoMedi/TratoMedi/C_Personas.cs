﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Newtonsoft.Json;
using TratoMedi.Varios;

namespace TratoMedi.Personas
{
    public class C_PerfilMed
    {
        [JsonProperty("sangre")]
        public string v_sangre { get; set; }
        [JsonProperty("idsexo")]
        public int v_sexo { get; set; }
        [JsonProperty("infoMuj")]
        public string v_infoMujer { get; set; }
        [JsonProperty("alergias")]
        public string v_alergias { get; set; }
        [JsonProperty("operaciones")]
        public string v_operaciones { get; set; }
        [JsonProperty("enfermedades")]
        public string v_enfer { get; set; }
        [JsonProperty("medicamentos")]
        public string v_medica { get; set; }

        public C_PerfilMed()
        {
            v_sangre = "";
            v_sexo = -1;
            v_infoMujer = "";
            v_alergias = "";
            v_operaciones = "";
            v_enfer = "";
            v_medica = "";
        }
        public C_PerfilMed(string _sangr, string _sexo, string _aler, string _opera, string _enfer, string _medicam)
        {
            v_sangre = _sangr;
            v_infoMujer = _sexo;
            v_alergias = _aler;
            v_operaciones = _opera;
            v_enfer = _enfer;
            v_medica = _medicam;
        }
        public string Fn_Info()
        {
            string ret = v_sangre + "  ---  " + v_sexo + "  ---  " + v_infoMujer + "---" + v_alergias + "----" + v_operaciones + "---" + v_enfer + "---" + v_medica;
            return ret;
        }
    }
    class C_Login
    {
        [JsonProperty("membre")]
        string v_membre { get; set; }
        [JsonProperty("password")]
        string v_pass { get; set; }



        public C_Login()
        {
            this.v_membre = "";
            this.v_pass = "";
        }
        public C_Login(string _membr, string _pass)
        {
            this.v_membre = _membr;
            this.v_pass = _pass;
        }
    }
    public class C_PerfilGen
    {
        [JsonProperty("nombre")]
        public string v_Nombre { get; set; }
        [JsonProperty("rfc")]
        public string v_Rfc { get; set; }
        [JsonProperty("fechanac")]
        public string v_FecNaci { get; set; }
        [JsonProperty("lugnac")]
        public string v_LugNac { get; set; }
        [JsonProperty("ocu")]
        public string v_Ocup { get; set; }
        [JsonProperty("idsexo")]
        public int v_idsexo { get; set; }
        [JsonProperty("tel")]
        public string v_Tel { get; set; }
        [JsonProperty("cel")]
        public string v_Cel { get; set; }
        [JsonProperty("calle")]
        public string v_Calle { get; set; }
        [JsonProperty("numext")]
        public string v_NumExt { get; set; }
        [JsonProperty("numint")]
        public string v_NumInt { get; set; }
        [JsonProperty("colonia")]
        public string v_Colonia { get; set; }
        [JsonProperty("ciudad")]
        public string v_Ciudad { get; set; }
        [JsonProperty("municipio")]
        public string v_municipio { get; set; }
        [JsonProperty("estado")]
        public string v_Estado { get; set; }
        [JsonProperty("cp")]
        public string v_Cp { get; set; }
        [JsonProperty("correo")]
        public string v_Correo { get; set; }

        public C_PerfilGen()
        {
            v_idsexo = -1;
            v_Nombre = "";
            v_Rfc = "";
            v_FecNaci = "";
            v_LugNac = "";
            v_Ocup = "";
            v_Tel = "";
            v_Cel = "";
            v_Calle = "";
            v_NumExt = "";
            v_NumInt = "";
            v_Colonia = "";
            v_Ciudad = "";
            v_municipio = "";
            v_Estado = "";
            v_Cp = "";
            v_Correo = "";
        }
        public C_PerfilGen(string _nom, string _rfc, DateTime _fechnac, string _lugnac, string _ocu, int _idsexo, string _tel, string _cel,
            string _calle, string _numExt, string _numInt, string _col, string _ciud, string _mun, string _est, string _cp, string _corr)
        {
            v_Nombre = _nom;
            v_Rfc = _rfc;
            string _month = "";
            if (_fechnac.Month < 10)
            {
                _month = "0" + _fechnac.Month.ToString();
            }
            else
            {
                _month = _fechnac.Month.ToString();
            }
            string _day = "";
            if (_fechnac.Day < 10)
            {
                _day = "0" + _fechnac.Day.ToString();
            }
            else
            {
                _day = _fechnac.Day.ToString();
            }
            v_FecNaci = _fechnac.Year.ToString() + "-" + _month + "-" + _day;
            v_LugNac = _lugnac;
            v_Ocup = _ocu;
            v_idsexo = _idsexo;
            v_Tel = _tel;
            v_Cel = _cel;
            v_Calle = _calle;
            v_NumExt = _numExt;
            v_NumInt = _numInt;
            v_Colonia = _col;
            v_Ciudad = _ciud;
            v_municipio = _mun;
            v_Estado = _est;
            v_Cp = _cp;
            v_Correo = _corr;
        }
        public string Fn_GetDatos()
        {
            string _ret = "";
            _ret = "nombre " + v_Nombre + "  rfc  " + v_Rfc + "  fech nac" + v_FecNaci + " lugnac  " + v_LugNac + " ocu " + v_Ocup + "\n" +
                 "id sexo " + v_idsexo + "  tel " + v_Tel + " cel  " + v_Cel + "  \n" +
                 "  calle  " + v_Calle + " numext " + v_NumExt + "  numint " + v_NumInt + "  " +
                 "colonia " + v_Colonia + "ciud  " + v_Ciudad + " muni" + v_municipio + "  esta" + v_Estado + " \n" +
                 "cp  " + v_Cp + "  corr " + v_Correo;
            return _ret;


        }
    }
    /// <summary>
    /// informacion a mostrar en el buscador, para solicitar citas 
    /// </summary>
    public class C_Medico
    {
        [JsonProperty("Consecutivo")]
        public string v_id { get; set; }
        [JsonProperty("ID_DR")]
        public string v_membre { get; set; }
        //get y set para poder que sean binding
        [JsonProperty("titulo")]
        public string v_titulo { get; set; }


        [JsonProperty("nombre")]
        public string v_Nombre { get; set; }
        /// <summary>
        /// lo necesito yo para ordenarlo por orden      
        /// </summary>
        [JsonProperty("ape")]
        public string v_Apellido { get; set; }
        [JsonProperty("espe")]
        public string v_Especialidad { get; set; }
        [JsonProperty("dom")]
        public string v_Domicilio { get; set; }
        [JsonProperty("horario")]
        public string v_horario;
        /// <summary>
        /// este lo necesito yo para el filtro
        /// </summary>
        [JsonProperty("ciudad")]
        public string v_Ciudad { get; set; }
        [JsonProperty("tel")]
        public string v_Tel { get; set; }
        [JsonProperty("correo")]
        public string v_Correo { get; set; }
        //[JsonProperty("cedula")]
        //public string v_cedula { get; set; }
        [JsonProperty("descrip")]
        public string v_descripcion { get; set; }
        [JsonProperty("idsexo")]
        public int v_idsexo { get; set; }

        [JsonProperty("activado")]
        public string v_activo { get; set; }
        [JsonProperty("fecha_vig")]
        public string v_vig;

        [JsonProperty("especialidad")]
        public ObservableCollection<C_EspeTitu> v_especs = new ObservableCollection<C_EspeTitu>();
        [JsonProperty("titulos")]
        public ObservableCollection<C_EspeTitu> v_titulos = new ObservableCollection<C_EspeTitu>();

        public void Fn_SetEspecTitulo()
        {
            int _val =0;
            string[] _list = v_Especialidad.Split('&');
            v_Especialidad = "";
            for(int  i=0;i< _list.Length; i++)
            {
                _val = int.Parse(_list[i]);
                v_Especialidad +=v_especs[_val].v_nombreEspec+"&";
                v_especs[i].v_visible = false;
            }
            
            _list = v_titulo.Split('&');
            v_titulo = "";
            for (int i = 0; i < _list.Length; i++)
            {
                _val = int.Parse(_list[i]);
                v_titulo += v_titulos[_val].v_nombreTitulo + "&";
                v_titulos[i].v_visible = false;
            }
            
            //int length = v_idEspe.Length;
            //C_Espec _nueEsp = new C_Espec();
            //v_especs.Clear();
            //for (int i = 0; i < length; i++)
            //{
            //    _nueEsp.v_id = v_idEspe[i];
            //    _nueEsp.v_nombre = v_nombreEspe[i];
            //    v_especs.Add(_nueEsp);
            //}
            //_nueEsp.v_id = "-2";
            //_nueEsp.v_nombre = "nada";
            //v_especs.Add(_nueEsp);
        }
        public bool Fn_GetActivado()
        {
            //if (v_activo == "1")
            //{ return true; }
            //else
            //{ return false; }
            return true;
        }
        
        public string v_img { get; set; }
        [JsonIgnore]
        public string v_completo { get; set; }


        public string FN_GetInfo()
        {
            string _ret;
            _ret = "tit " + v_titulo + "nom " + v_Nombre + " ape " + v_Apellido + " espe " + v_Especialidad + " dom " + v_Domicilio + " ciu " + v_Ciudad +
                " tel " + v_Tel + " corr " +
                //v_Correo + " horario" + v_horario + " ced " + v_cedula + 
                " des " + v_descripcion +
                " sexo " + v_idsexo + "  activado" + v_activo + "  vig" + v_vig;
            return _ret;
        }
    }


}

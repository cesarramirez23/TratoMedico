using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

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
    /// <summary>
    /// informacion a mostrar en el buscador, para solicitar citas 
    /// </summary>
    public class C_Medico
    {
        [JsonProperty("Consecutivo")]
        public string v_id { get; set; }
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
        [JsonProperty("cedula")]
        public string v_cedula { get; set; }
        [JsonProperty("descrip")]
        public string v_descripcion { get; set; }
        [JsonProperty("idsexo")]
        public int v_idsexo { get; set; }


        public string v_img { get; set; }
        public string v_completo { get; set; }


        public string FN_GetInfo()
        {
            string _ret;
            _ret = "tit " + v_titulo + "nom " + v_Nombre + " ape " + v_Apellido + " espe " + v_Especialidad + " dom " + v_Domicilio + " ciu " + v_Ciudad +
                " tel " + v_Tel + " corr " + v_Correo + " horario" + v_horario + " ced " + v_cedula + " des " + v_descripcion +
                " sexo " + v_idsexo;
            return _ret;
        }

    }
}

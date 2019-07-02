using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.Collections.ObjectModel;
using TratoMedi.Varios;
namespace TratoMedi.Models
{
    public class C_MedRegistro
    {
        //registro
        [JsonProperty("nombre")]
        public string v_Nombre { get; set; }
        [JsonProperty("ape")]
        public string v_Apellido { get; set; }
        [JsonProperty("idsexo")]
        public int v_idsexo { get; set; }
        [JsonProperty("dom")]
        public string v_Domicilio { get; set; }
        /// <summary>
        /// el que elige del drop     item.tostring()
        /// </summary>
        [JsonProperty("titulo")]
        public string v_titulo { get; set; }
        [JsonProperty("espe")]
        public string v_Especialidad { get; set; }
        [JsonProperty("tel")]
        public string v_Tel { get; set; }
        [JsonProperty("correo")]
        public string v_Correo { get; set; }
        [JsonProperty("horario")]
        public string v_horario { get; set; }
        [JsonProperty("ciudad")]
        public string v_Ciudad { get; set; }
        [JsonProperty("estado")]
        public string v_estado { get; set; }
        [JsonProperty("cedula")]
        public string cedula { get; set; }
        public C_MedRegistro(string _nombre,string _ape,int _sexo ,string _idTit,string _idEsp,
                    string _dom,string _idciud,string _ced, string _tel,string _correo, 
                    string _horario, string _idestado)
        {
            v_Nombre = _nombre;
            v_Apellido = _ape;
            v_idsexo = _sexo;
            v_titulo = _idTit;
            v_Especialidad = _idEsp;
            v_Domicilio = _dom;
            v_Ciudad = _idciud;
            cedula = _ced;
            v_Tel = _tel;
            v_Correo = _correo;
            v_horario = _horario;
            v_estado = _idestado;
        }
        #region DATOS YA ACEPTADO
        //perfil a mostrar lo mismo pero agregarle
        [JsonProperty("descrip")]
        public string v_descripcion { get; set; }
        [JsonProperty("citas")]
        public string v_citas { get; set; }
        #endregion
    }
}

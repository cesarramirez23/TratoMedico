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
        #region LOS DATOS PARA LA CIUDAD
        [JsonProperty("ciudad")]
        public string v_Ciudad { get; set; }
        [JsonProperty("ubicacion")]
        public ObservableCollection<C_EspeTitu> v_ciudades = new ObservableCollection<C_EspeTitu>();
        #endregion
        [JsonProperty("cedula")]
        public string cedula { get; set; }
        [JsonProperty("estado")]
        public string estado { get; set; }
        /// <summary>
        /// LISTA QUE NO CAMBIA SON LOS VALORES DE LA WEB
        /// </summary>
        [JsonProperty("especialidad")]
        public ObservableCollection<C_EspeTitu> v_especs = new ObservableCollection<C_EspeTitu>();
        /// <summary>
        /// LISTA QUE NO CAMBIA SON LOS VALORES DE LA WEB
        /// </summary>
        [JsonProperty("titulos")]
        public ObservableCollection<C_EspeTitu> v_titulos = new ObservableCollection<C_EspeTitu>();
        public string[] _tituArr;
        public string[] _ciuArr;

        public C_MedRegistro(string _nombre,string _ape,int _sexo ,string _idTit,string _idEsp,
                    string _dom,string _idciud,string _ced)
        {
            v_Nombre = _nombre;
            v_Apellido = _ape;
            v_idsexo = _sexo;
            v_titulo = _idTit;
            v_Especialidad = _idEsp;
            v_Domicilio = _dom;
            v_Ciudad = _idciud;
            cedula = _ced;
        }

        /*
query que solo regrese la lista de 
especialidad    nombre_especialidad   ID_especialidad
ubicacion      ID_ubicacion        nombre_ciudad
titulos        nombre_titulo       ID_titulo*/

        #region DATOS YA ACEPTADO
        //perfil a mostrar lo mismo pero agregarle
        [JsonProperty("descrip")]
        public string v_descripcion { get; set; }
        [JsonProperty("Nombre")]
        public string sitioweb { get; set; }
        [JsonProperty("Nombre")]
        public string beneficios { get; set; }
        #endregion
        /// <summary>
        /// crea kis arreglos de titulo ciudad y especialidad
        /// </summary>
        public void Fn_SetEspecTitulo()
        {//v_Especialidad tiene 0&5&4&2
            //cambiar a ningun seleccionado
            for (int i = 0; i < v_especs.Count; i++)
            {
                v_especs[i].v_visible = false;
            }
            _tituArr = new string[v_titulos.Count];
            for (int i = 0; i < v_titulos.Count; i++)
            {
                _tituArr[i] = v_titulos[i].v_nombreTitulo;
                v_titulos[i].v_visible = false;
            }
            _ciuArr = new string[v_ciudades.Count];
            for (int i = 0; i < v_ciudades.Count; i++)
            {
                _ciuArr[i] = v_ciudades[i].v_ciudad;
            }
        }
        public int Fn_GetCiudades()
        {
            int _a = -1;
            for (int i = 0; i < _ciuArr.Length; i++)
            {
                if (_ciuArr[i] == v_Ciudad)
                {
                    _a = i;
                }
            }
            return _a;
        }
    }
}

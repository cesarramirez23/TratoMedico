using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

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
    public class Citas
    {
        public string v_cliente { get; set; }
        public string v_hora { get; set; }
        public string v_fecha { get; set; }
    }
    public class Medicamentos
    {
        public string v_nombre{ get; set; }
        /// <summary>
        /// por cuantos dias 
        /// </summary>
        public int v_periodo { get; set; }
       /// <summary>
       /// cada cuantas horas
       /// </summary>
        public int v_tiempo { get; set; }

        public string v_extra { get; set; }

        public string Fn_Info()
        {
            string _info = "";
            _info = "nombre " + v_nombre + "\n periodo " + v_periodo + "\n tiempo " + v_tiempo + "\n extra " + v_extra;
            return _info;
        }
    }
}

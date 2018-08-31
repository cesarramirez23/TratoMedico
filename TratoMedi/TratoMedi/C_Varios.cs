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
}

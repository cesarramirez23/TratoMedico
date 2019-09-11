using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
namespace TratoMedi.Models
{
    public class C_PromHijo
    {
        //[JsonProperty("nombre")]
        //public string v_nombre { get; set; }
        [JsonProperty("ID_promotor")]
        public string v_id { get; set; }
        [JsonProperty("comision")]
        public float v_monto { get; set; }
        [JsonProperty("nivel")]
        public int v_nivel { get; set; }
        [JsonProperty("Name")]
        public string v_Nombre { get; set; }
        public C_PromHijo()
        {
            v_id = string.Empty;
            v_monto = 0.0f;
            v_nivel = -1;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.Collections.ObjectModel;
namespace TratoMedi.Models
{
    public class C_PerfProm
    {
        [JsonProperty("Total")]
        public float v_monto { get; set; }
        [JsonProperty("comisiones")]
        public ObservableCollection<C_PromHijo> v_hijo { get; set; }
        public float v_propio { get; set; }
        //[JsonProperty("nombre")]
        //public string v_Nombre { get; set; }
        public C_PerfProm()
        {
            v_monto = 0.0f;
            v_propio = 0.0f;
        }
        public void Fn_Init()
        {
            if(v_hijo!= null)
            {
                float _cont = 0;

                for(int i=0; i<v_hijo.Count; i++)
                {
                    _cont += v_hijo[i].v_monto;
                }
                v_propio = v_monto - _cont;
            }
            else
            {
                v_propio = v_monto;
            }
        }
    }
}

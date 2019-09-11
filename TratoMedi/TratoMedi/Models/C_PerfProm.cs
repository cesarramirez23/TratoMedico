using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.Collections.ObjectModel;
using Xamarin.Forms;

namespace TratoMedi.Models
{
    public class C_PerfProm
    {
        [JsonProperty("Total")]
        public float v_monto { get; set; }
        [JsonProperty("comisiones")]
        public ObservableCollection<C_PromHijo> v_hijo { get; set; }
        public float v_propio { get; set; }
        [JsonProperty("Name")]
        public string v_Nombre { get; set; }
        [JsonProperty("Codigo")]
        public string v_codigo { get; set; }
        public Vec2 v_vect2 { get; set; }
        public C_PerfProm()
        {
            v_monto = 0.0f;
            v_propio = 0.0f;
            v_codigo = string.Empty;
            v_Nombre = string.Empty;
        }
        public void Fn_Init()
        {
            if(v_hijo!= null)
            {
                float _cont = 0;
                float _ni1 = 0 ;
                float _ni2 = 0 ;
                for(int i=0; i<v_hijo.Count; i++)
                {
                    _cont += v_hijo[i].v_monto;
                    if(v_hijo[i].v_nivel==1)
                    {
                        _ni1++;
                    }
                    else if(v_hijo[i].v_nivel==2)
                    {
                        _ni2++;
                    }
                }
                v_vect2 = new Vec2(_ni1, _ni2);
                if ((v_monto - _cont) < 0)
                {
                    v_propio = 0;
                }
                else
                {
                    v_propio = v_monto - _cont;
                }
            }
            else
            {
                v_propio = v_monto;
                v_vect2 = new Vec2(0, 0);
            }
        }
    }
}

using System;
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
            [JsonProperty("ID_paciente")]
            public string v_pacienteId { get; set; }
            [JsonProperty("estado")]
            public string v_estado { get; set; }
            [JsonProperty("fecha")]
            public DateTime v_fecha { get; set; }
            [JsonProperty("hora")]
            public TimeSpan v_hora { get; set; }

            public string v_nombre { get; set; }


            public Color v_color { get; set; }
        
            public EstadoCita v_Estadocita { get; set; }
            /// <summary>
            /// para cambiar el color dentro de la lista visible
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
            v_Estadocita =(EstadoCita)(int.Parse(v_estado));
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

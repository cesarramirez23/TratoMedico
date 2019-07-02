using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.Collections.ObjectModel;
using TratoMedi.Varios;
namespace TratoMedi.Models
{
    public class c_RegOpciones
    {
        [JsonProperty("ubicacion")]
        public ObservableCollection<C_EspeTitu> v_ciudad { get; set; }
        [JsonProperty("especialidad")]
        public ObservableCollection<C_EspeTitu> v_espe { get; set; }
        [JsonProperty("titulos")]
        public ObservableCollection<C_EspeTitu> v_titulos { get; set; }
        [JsonProperty("estado")]
        public ObservableCollection<C_EspeTitu> v_estados { get; set; }
    }
}

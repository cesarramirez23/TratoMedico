using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Collections.ObjectModel;
using TratoMedi.Varios;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Citas : ContentPage
	{
        ObservableCollection<Citas> citas= new ObservableCollection<Citas>();
		public V_Citas ()
		{
			InitializeComponent ();
            DateTime _fecha = new DateTime(2018, 9, 23, 14, 00, 00);
            citas.Add(new Citas() {
                v_cliente = "nombre 1",
                v_F_Fecha = _fecha, v_F_Hora= _fecha.TimeOfDay
            });

            _fecha = new DateTime(2018, 9, 25, 19, 42, 00);
            citas.Add(new Citas()
            {
                v_cliente = "nombre 2",
                v_F_Fecha = _fecha,
                v_F_Hora = _fecha.TimeOfDay
            });

            _fecha = new DateTime(2018, 11, 25, 09, 42, 00);
            citas.Add(new Citas()
            {
                v_cliente = "nombre 2",
                v_F_Fecha = _fecha,
                v_F_Hora = _fecha.TimeOfDay
            });

            _fecha = new DateTime(2018, 9, 7, 12, 12, 00);
            citas.Add(new Citas()
            {
                v_cliente = "nombre 2",
                v_F_Fecha = _fecha,
                v_F_Hora = _fecha.TimeOfDay
            });

            ListaCita.ItemsSource = citas;
            Ordenar();
		}
        public void Ordenar()
        {
            IEnumerable<Citas> _temp = citas.OrderBy(x => x.v_F_Fecha);
            citas = new ObservableCollection<Citas>(_temp);

            for(int i=0; i<citas.Count; i++)
            {
                citas[i].Fn_CAmbioCol(i);
            }
        }
	}
}
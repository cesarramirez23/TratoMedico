using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TratoMedi.Varios;
using System.Collections.ObjectModel;

namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Medicamentos : ContentPage
	{
        C_NotaMed v_nota= new C_NotaMed();
        ObservableCollection<Medicamentos> v_medicamentos = new ObservableCollection<Medicamentos>();

		public V_Medicamentos (C_NotaMed _nota)
		{
			InitializeComponent ();
            v_nota = _nota;
            fecha.Text = v_nota.v_fecha + "      " + v_nota.v_hora;
            v_medicamentos = v_nota.v_medic;
            v_nota.Fn_SetEspe();
            nombre.Text = v_nota.v_nombreDr + "  " + v_nota.v_especialidad;
            if (v_medicamentos.Count > 0)
            {
                for (int i = 0; i < v_medicamentos.Count; i++)
                {
                    v_medicamentos[i].Fn_SetTexto();
                }
                ListaMed.ItemsSource = v_medicamentos;
            }
            else
            {
                nota.Text += "\nNo existe medicamentos registrados";
            }
        }
	}
}
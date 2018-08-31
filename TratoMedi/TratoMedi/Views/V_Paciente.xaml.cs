using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;
using TratoMedi.Personas;


namespace TratoMedi.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class V_Paciente : ContentPage
	{

        public V_Paciente ()
		{
			InitializeComponent ();
            Scan();
		}
        private async void Scan()
        {//crea una pagina especial del lector
            var scanPage = new ZXingScannerPage();
            //cuando escanee algo que va a hacer?
            scanPage.OnScanResult += (result) =>
            {
                //deja de escanear
                scanPage.IsScanning = false;
                // Pop the page and show the result
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopAsync();
                    await DisplayAlert("Scanned Barcode", result.Text, "OK");
                   // StackPerfil.IsVisible = true;
                });
            };

            // Navigate to our scanner page
            await Navigation.PushAsync(scanPage);
        }
    }
}
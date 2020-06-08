using System;
using Xamarin.Forms;
using TratoMedi.Views;
using Xamarin.Forms.Xaml;
using System.Threading.Tasks;
using System.Linq;
using System.Collections.ObjectModel;
using System.Collections.Generic;
//para agregar loos eventos al calendario
//using Plugin.Calendars;
//using Plugin.Calendars.Abstractions;
//para agregar loos eventos al calendario

//casa compila con com.alsain.TratoMed     com.alsain.TratoMedicos
[assembly: XamlCompilation (XamlCompilationOptions.Compile)]
namespace TratoMedi
{
    public partial class App : Application
    {

        #region Estados de la app
        public App()
        {
            InitializeComponent();
        }
        protected override void OnStart()
        {
            Properties.Clear();
            App.Current.MainPage = new Inicio();
        }    
        #endregion

    }
}

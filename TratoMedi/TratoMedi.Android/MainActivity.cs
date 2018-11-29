using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;
//para las notificaciones
using Firebase.Messaging;
using Firebase.Iid;
using Firebase;
using Android.Util;
using Android.Gms.Common;
using Android.Content;

namespace TratoMedi.Droid
{
    [Activity(Label = "TE Servicios", Icon = "@drawable/Logo_RedondoGRIS_512x512", ScreenOrientation = ScreenOrientation.Portrait, Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle bundle)
        {
            TabLayoutResource = Resource.Layout.Tabbar;
            ToolbarResource = Resource.Layout.Toolbar;


            base.OnCreate(bundle);
            global::Xamarin.Forms.Forms.Init(this, bundle);

            global::ZXing.Net.Mobile.Forms.Android.Platform.Init();


            LoadApplication(new App());
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Permission[] grantResults)
        {
            ZXing.Net.Mobile.Android.PermissionsHandler.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}


using System;
using System.Collections.Generic;
using System.Linq;

using Foundation;
using UIKit;
using Firebase.CloudMessaging;
using UserNotifications;
using Plugin.DownloadManager;


using TratoMedi.Varios;
using Newtonsoft.Json;
using Plugin.DownloadManager.Abstractions;
using System.IO;

namespace TratoMedi.iOS
{
    // The UIApplicationDelegate for the application. This class is responsible for launching the 
    // User Interface of the application, as well as listening (and optionally responding) to 
    // application events from iOS.
    [Register("AppDelegate")]
    public partial class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
    {
        //
        // This method is invoked when the application has loaded and is ready to run. In this 
        // method you should instantiate the window, load the UI into it and then make the window
        // visible.
        //
        // You have 17 seconds to return from this method, or iOS will terminate your application.
        //
        public override bool FinishedLaunching(UIApplication app, NSDictionary options)
        {
            global::Xamarin.Forms.Forms.Init();
            ZXing.Net.Mobile.Forms.iOS.Platform.Init();
            LoadApplication(new App());
            if (options != null)
            {
                //check for remote notification
                if (options.ContainsKey(UIApplication.LaunchOptionsRemoteNotificationKey))
                {
                    NSDictionary _remoteNotif = options[UIApplication.LaunchOptionsRemoteNotificationKey] as NSDictionary;
                    if (_remoteNotif != null)
                    {
                        // new UIAlertView(_remoteNotif.a)
                    }


                }
            }

            // pedir permiso para enviar notificaciones
            if (UIDevice.CurrentDevice.CheckSystemVersion(8, 0))
            {
                // iOS 8 or later
                var notifSettings = UIUserNotificationSettings.GetSettingsForTypes(
                    UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound, null);

                // For iOS 8 display notification (sent via APNS)
                app.RegisterUserNotificationSettings(notifSettings);
                app.RegisterForRemoteNotifications();

                /*  UNUserNotificationCenter.Current.Delegate = this;
                  System.Diagnostics.Debug.WriteLine($"antes 11: {app.IsRegisteredForRemoteNotifications.ToString()}");
                  UIApplication.SharedApplication.RegisterForRemoteNotifications();
                  System.Diagnostics.Debug.WriteLine($"despues 11: {app.IsRegisteredForRemoteNotifications.ToString()}");*/
            }
            else
            {
                //register for remote notifications and get the device token
                //set what kind of notifiaction type we want
                UIRemoteNotificationType _notifTypes = UIRemoteNotificationType.Alert | UIRemoteNotificationType.Badge;
                //register for remtote notif
                UIApplication.SharedApplication.RegisterForRemoteNotificationTypes(_notifTypes);

                /*var allNotificationTypes = UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound;
                var settings = UIUserNotificationSettings.GetSettingsForTypes(allNotificationTypes, null);
                UIApplication.SharedApplication.RegisterUserNotificationSettings(settings);
                System.Diagnostics.Debug.WriteLine($"antes 9: {app.IsRegisteredForRemoteNotifications.ToString()}");
                UIApplication.SharedApplication.RegisterForRemoteNotifications();
                System.Diagnostics.Debug.WriteLine($"despues 9: {app.IsRegisteredForRemoteNotifications.ToString()}");*/
            }


            Firebase.Core.App.Configure();

            Firebase.InstanceID.InstanceId.Notifications.ObserveTokenRefresh((sender, e) =>
            {
                var newtoken = Firebase.InstanceID.InstanceId.SharedInstance.Token;
                System.Diagnostics.Debug.WriteLine($"FCM Token observe: {newtoken}");
                App.Fn_SetToken(newtoken);
            });
            //Firebase.InstanceID.InstanceId.TokenRefreshNotification;
            //debugAlert(UIApplication.SharedApplication.IsRegisteredForRemoteNotifications.ToString(),"sdas","Aceptar");
            //https://github.com/codercampos/FirebaseXF-XamarinLatino/blob/master/src/FirebaseXL/FirebaseXL.iOS/AppDelegate.cs        // blog.xamarians.com/blog/2017/9/18/firebase-cloud-messaging
            Downloaded();
            return base.FinishedLaunching(app, options);
        }
        // iOS mayor 9, fire when recieve notification foreground
        [Export("userNotificationCenter:willPresentNotification:withCompletionHandler:")]
        public void WillPresentNotification(UNUserNotificationCenter center, UNNotification notification, Action<UNNotificationPresentationOptions> completionHandler)
        {
            var title = notification.Request.Content.Title;
            var body = notification.Request.Content.Body;
            var UserINfo = notification.Request.Content.UserInfo;
            if (UserINfo.ContainsKey(new NSString("data")))
            {
                var _data = UserINfo.ValueForKey(new NSString("data")) as NSDictionary;//jala la cita
                Cita _citaActual = JsonConvert.DeserializeObject<Cita>((UserINfo["data"]).ToString());
                _citaActual.Fn_SetValores();
                App.Fn_SetCita(_citaActual);
                string _titulo = "";
                string _mensaje = "";
                if (_citaActual.v_estado == "0")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha Terminado una cita";
                }
                else if (_citaActual.v_estado == "2")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha reagendado una cita";
                }
                else if (_citaActual.v_estado == "3")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha aceptado una cita";
                }
                else if (_citaActual.v_estado == "4")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha cancelado una cita";
                }
                debugAlert(_titulo, _mensaje, "Revisar");
            }
            else//es una nootif normal, solo mensaje y titulo
            {
                debugAlert(title, body, "Aceptar");
            }
        }
        public void ApplicationReceiveRemoteMessage(RemoteMessage message)
        {
            Console.Write("remote message " + message.AppData);
        }
        //mostrar la alerta
        private void debugAlert(string title, string message, string Txtbtn)
        {
            UIAlertView alert = new UIAlertView()
            {
                Title = title,
                Message = message
            };
            alert.AddButton(Txtbtn);
            alert.Show();

        }
        /**
 * Save the completion-handler we get when the app opens from the background.
 * This method informs iOS that the app has finished all internal processing and can sleep again.
 */
        public override void HandleEventsForBackgroundUrl(UIApplication application, string sessionIdentifier, Action completionHandler)
        {
            CrossDownloadManager.BackgroundSessionCompletionHandler = completionHandler;
        }
        public void Downloaded()
        {
            CrossDownloadManager.Current.PathNameForDownloadedFile = new System.Func<IDownloadFile, string>(file => {
                string fileName = (new NSUrl(file.Url, false)).LastPathComponent;
                return Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), fileName);
            });
        }
        public override void ReceivedRemoteNotification(UIApplication application, NSDictionary userInfo)
        {
            Console.Write("infooo" + userInfo.ToString());
            var aps_d = userInfo["aps"] as NSDictionary;//titulo que trae el json
            var _alert = aps_d["alert"] as NSDictionary;
            var body = _alert["body"] as NSString;//keys
            var title = _alert["title"] as NSString;
            if (_alert.ContainsKey(new NSString("data")))
            {
                var _data = _alert.ValueForKey(new NSString("data")) as NSDictionary;//jala la cita
                Cita _citaActual = JsonConvert.DeserializeObject<Cita>((_alert["data"]).ToString());
                _citaActual.Fn_SetValores();
                App.Fn_SetCita(_citaActual);
                string _titulo = "";
                string _mensaje = "";
                if (_citaActual.v_estado == "0")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha Terminado una cita";
                }
                else if (_citaActual.v_estado == "2")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha reagendado una cita";
                }
                else if (_citaActual.v_estado == "3")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha aceptado una cita";
                }
                else if (_citaActual.v_estado == "4")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha cancelado una cita";
                }
                else
                {
                    _titulo = string.Empty;
                    _mensaje = string.Empty;
                }
                debugAlert(title, body, "Revisar");
            }
            else//es una nootif normal, solo mensaje y titulo
            {
                debugAlert(title, body, "Aceptar");
            }
        }
        /// <summary>
        /// the ios call the apns in the background and issue a device token to the device when thats accomplished, this method will be called
        /// 
        /// note: the device can change, so this needs to register with your server application everytime
        /// this method is onvoked, or a minimum , cache the last token check for a change
        /// </summary>
        public override void RegisteredForRemoteNotifications(UIApplication application, NSData deviceToken)
        {
            var _devTemp = deviceToken.Description.Replace("<", "").Replace(">", "").Replace(" ", "");
            if (!string.IsNullOrEmpty(_devTemp))
            {
                //v_deviceToken = _devTemp;
                Console.Write("token device " );
               // App.Fn_SetToken(v_deviceToken);
            }
        }
        public override void FailedToRegisterForRemoteNotifications(UIApplication application, NSError error)
        {
            debugAlert("Error registering push notification", error.LocalizedDescription, "Aceptar");
        }
    }
}

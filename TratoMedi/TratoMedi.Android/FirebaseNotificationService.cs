﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.Support.V4.App;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
//lo que dice el tutorial   https://docs.microsoft.com/en-us/azure/app-service-mobile/app-service-mobile-xamarin-forms-get-started-push

using Android.Media;
using Android.Support.V7.App;
using Android.Util;
using Firebase.Messaging;
using Android.Graphics;
using TratoMedi.Varios;

using Newtonsoft.Json;
using System.Threading.Tasks;



namespace TratoMedi.Droid
{
    [Service]
    [IntentFilter(new[] { "com.google.firebase.MESSAGING_EVENT" })]
    public class FirebaseNotificationService : FirebaseMessagingService
    {


        const string TAG = "FirebaseNotificationService";

        public override void OnMessageReceived(RemoteMessage message)
        {
            /* 
             * USUARIO ELIGE EL DIA Y LA HORA, ESO SE LE ENVIA AL MEDICO,
             * MEDICO RECIBE LA CITA, SI ACEPTA
             * 
             * en firebase copnsole,   al enviar el mensaje, hasta abajo en adavanced option-> custom data->key de message   
             es para recibir esta info de abajo   se envia como data   en el archivo /firebase/index.php */

            /*DESDE CONSOLE FIREBASE   SE MANDA COMO EXTRA->TU LE PONES EL KEY Y SU VALOR
            ESA LLEGA DIRECTO A REMOTEMESSAGE.GETNOTIFICACION()   AHI LLEGAN LOS VALORES DEL FIREBASE 
            MESSAGETEXT  ES EL VALOR DEL MENSAJE COMPLETO
            IR A LAS OPCIONALES
             */

            /*ttl  timetolive,  se manda en segundos es el tiempo de expiracion 
             * 
             * https://firebase.google.com/docs/cloud-messaging/http-server-ref    
             * https://documentation.onesignal.com/reference#create-notification
             * 
             * JSON QUE LLEGA DESDE EL PHP
             {
    "to": "fsVPtHKu-f4:APA91bFFG_IM97AK9TYcaTHcWnWe-
    ZDLNZWWtCZBI9YJhImOt6dt4Pr910BifNaunJoKCHAsMZjh
    5Go7kZr4SJgNr31x52f8e9Q1WMWQxhzI3Rw22S9Wp47DZAXemRmbNFH5lN5fWq4c",
    "data": {
        "title": "titulo",
        "message": "fsdfds",
        "image": "",
        "action": "",
        "action_destination": "",
        "data": {
            "extra": "info extra 1\nngvjhfgujhg\nngvjhfgujh\nngvjhfgujhg\nngvjhfgujhg",
            "extra2": "info extra 22222ojbgjkhv jkhv jkhvbjkhvjkhvbkuhjkvjkvjk"
        }
    }
}
             */

            // Notification string:          Titulo opcional que llega como el verdadero titulo  Mensaje principal a mostrar
            // Log.Debug(TAG, "Notification string: " + message.GetNotification().Title+"  "+message.GetNotification().Body+"  "+
            //954999819863          1538664774942      2419200
            //   message.From+"   "+ message.SentTime+"   " +message.To+"   "+message.Ttl);



            C_Notificacion _minotif = new C_Notificacion() ;
            if (message.GetNotification() == null)//LLEGA DESDE EL PHP
            {
                _minotif = new C_Notificacion(message.Data["title"], message.Data["message"]);
            }
            else
            {
                _minotif = new C_Notificacion(message.GetNotification().Title, message.GetNotification().Body);
            }

            if (message.Data.ContainsKey("data"))//tiene la info para la cita
            {
                Cita _citaActual = JsonConvert.DeserializeObject<Cita>(message.Data["data"]);
                _citaActual.Fn_SetValores();
                App.Fn_SetCita(_citaActual);
                string _titulo = "";
                string _mensaje = "";
                if (_citaActual.v_estado == "1")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha solicitado una nueva cita, presiona para más información";
                }
                else if (_citaActual.v_estado == "2")
                {
                    _titulo = "Aviso de cita";
                    _mensaje = "Se ha reagendado una cita" ;
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
                SendNotification(_mensaje, _titulo);

            }
            else//es una nootif normal, solo mensaje y titulo
            {
                SendNotification(_minotif.v_cuerpo, _minotif.v_titulo);
            }






        //    if (message.Data.ContainsKey("data"))//este data es un arreglo extra de loos keys que se manda desde el php que hice
        //    {
        //        string json = message.Data["data"];
        //        if(string.IsNullOrEmpty( json))
        //        {
        //            string _title = "";
        //            string _mess = "";

        //            if (string.IsNullOrEmpty(message.GetNotification().Title))
        //            {
        //                _title = "Titulo vacio";
        //            }
        //            else
        //            {
        //                _title = message.GetNotification().Title;
        //            }
        //            if (string.IsNullOrEmpty(message.GetNotification().Body))
        //            {
        //                _mess = "Mensaje vacio";
        //            }
        //            else
        //            {
        //                _mess = message.GetNotification().Body;
        //            }

        //            SendNotification(_title, _mess);
        //        }
        //        else
        //        {
        //            C_Notificacion _notif = JsonConvert.DeserializeObject<C_Notificacion>(json);
        //            SendNotification(_notif.v_titulo, _notif.v_cuerpo);
        //        }
        //    }
        //    else
        //    {//siempre trae esto
        //        string _title = "";
        //        string _mess = "";

        //        if (string.IsNullOrEmpty( message.GetNotification().Title))
        //        {
        //            _title = "";
        //        }
        //        else
        //        {
        //            _title = message.GetNotification().Title;
        //        }
        //        if (string.IsNullOrEmpty(message.GetNotification().Body))
        //        {
        //            _mess = "Mensaje vacio";
        //        }
        //        else
        //        {
        //            _mess = message.GetNotification().Body;
        //        }

        //        SendNotification(_title,_mess);
        //}
            
        }
         void SendNotification(string messageBody, string _titulo, Cita _citaActual)
        {
            var intent = new Intent(this, typeof(MainActivity));
            intent.AddFlags(ActivityFlags.ClearTop);

            var pendingIntent = PendingIntent.GetActivity(this, 0, intent, PendingIntentFlags.OneShot);
            

            //Bitmap largeIcon = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Logo_RedondoGRIS_512x512);//color

            var notificationBuilder = new Android.Support.V4.App.NotificationCompat.Builder(this)
                .SetSmallIcon(Resource.Drawable.Notif_Blanco)//blanco
                                                             // .SetLargeIcon(largeIcon)
                .SetContentTitle(_titulo)
                .SetContentText(messageBody)
                .SetContentIntent(pendingIntent)
                .SetColor(40150209)
                .SetStyle(new NotificationCompat.BigTextStyle().BigText(messageBody))
                .SetSound(RingtoneManager.GetDefaultUri(RingtoneType.Notification))
                .SetPriority(1)
                .SetAutoCancel(false);//false el icono de la notif se queda siempre arriba aunque ya la abriste,  true se quita

            var notificationManager = NotificationManager.FromContext(this);
            notificationManager.Notify(0, notificationBuilder.Build());
        }
        void SendNotification(string messageBody, string _titulo)
        {
            var intent = new Intent(this, typeof(MainActivity));
            intent.AddFlags(ActivityFlags.ClearTop);

            var pendingIntent = PendingIntent.GetActivity(this, 0, intent, PendingIntentFlags.OneShot);

            //Bitmap largeIcon = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Logo_RedondoGRIS_512x512);//color

            var notificationBuilder = new Android.Support.V4.App.NotificationCompat.Builder(this)
                .SetSmallIcon(Resource.Drawable.Notif_Blanco)//blanco
               // .SetLargeIcon(largeIcon)
                .SetContentTitle(_titulo)
                .SetContentText(messageBody)
                .SetContentIntent(pendingIntent)
                .SetColor(40150209)
                .SetStyle(new NotificationCompat.BigTextStyle().BigText(messageBody))
                .SetSound(RingtoneManager.GetDefaultUri(RingtoneType.Notification))
                .SetPriority(1)
                .SetAutoCancel(true);//false el icono de la notif se queda siempre arriba aunque ya la abriste,  true se quita
            
            var notificationManager = NotificationManager.FromContext(this);
            notificationManager.Notify(0, notificationBuilder.Build());
        }
    }
}
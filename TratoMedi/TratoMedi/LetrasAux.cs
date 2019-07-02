using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.IO;
using System.Security.Cryptography;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Text.RegularExpressions;
using System.Net.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace TratoMedi
{
    public static class NombresAux
    {
        public const string v_log = "log";
        public const string v_membre = "membre";
        public const string v_token = "token";

        #region COSAS DEL PROMOTOR
        public const string v_PerfPromo = "PerfilPromotor";
        #endregion

        #region COSAS ESPECIFICAS DEL DOCTOR
        public const string v_perfilPropio = "perfil";
        public const string v_perfilGen = "perfGen";
        public const string v_perfilMed = "perfMed";
        public const string v_medicamentos = "medicamentos";
        public const string v_paciente = "paciente";
        /// <summary>
        /// todas la citas que tiene con ese usuario
        /// </summary>
        public const string v_citas = "citas";
        /// <summary>
        /// la cita que ya se eligio
        /// </summary>
        public const string v_citaInd = "citaInd";
        /// <summary>
        /// El historial de citas y medicamentos que ya terminaron
        /// </summary>
        public const string v_NotasMed = "NotaMed";
        /// <summary>
        /// Cita de notificacion
        /// </summary>
        public const string v_citaNot = "Notif";
        public const string v_Opciones = "v_Opciones";  
        #endregion

        public const string BASE_URL = "https://tratoespecial.com/";  



        // This size of the IV (in bytes) must = (keysize / 8).  Default keysize is 256, so the IV must be
        // 32 bytes long.  Using a 16 character string here gives us 32 bytes when converted to a byte array.
        private const string initVector = "pemgail9uzpgzl88";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Decrypt
        public static string DecryptString(string cipherText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] cipherTextBytes = Convert.FromBase64String(cipherText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream(cipherTextBytes);
            CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);
            byte[] plainTextBytes = new byte[cipherTextBytes.Length];
            int decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
            memoryStream.Close();
            cryptoStream.Close();
            return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
        }

    }
}

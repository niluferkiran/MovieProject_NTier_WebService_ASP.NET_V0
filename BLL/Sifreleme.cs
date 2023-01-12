using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public static class Sifreleme
    {
        public static string MD5Sifrele(string KullaniciSifre)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] dizi = Encoding.UTF8.GetBytes(KullaniciSifre);
            dizi = md5.ComputeHash(dizi);
            StringBuilder stringBuilder = new StringBuilder();
            foreach (var item in dizi)
            {
                stringBuilder.Append(item.ToString("x2").ToLower());
            }
            string sifrelenmis = stringBuilder.ToString();
            return sifrelenmis;
        }
    }
}

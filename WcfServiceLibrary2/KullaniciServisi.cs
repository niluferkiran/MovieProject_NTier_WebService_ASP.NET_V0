using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfServiceLibrary2
{
    public class KullaniciServisi : IKullaniciServisi
    {
        MovieBoxDBEntities db = new MovieBoxDBEntities();

        public List<Kullanicilar> KullanicilariGetir()
        {
            return db.Kullanicilar.Select(k => new Kullanicilar
            {
                KullaniciId = k.KullaniciId,
                KullaniciAdi = k.KullaniciAdi,
                KullaniciSoyadi = k.KullaniciSoyadi,
                Sifre = k.Sifre,
                TCKN = k.TCKN,
                RolId = k.RolId,
                KullaniciMail = k.KullaniciMail,
                DogumTarihi = k.DogumTarihi,
                Cinsiyet = k.Cinsiyet,
                isDeleted = k.isDeleted
                
            }).ToList();
        }
    }
}

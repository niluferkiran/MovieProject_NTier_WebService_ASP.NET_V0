using BLL.Repositories;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MailGonderici
    {
        FilmProjesiEntities db = new FilmProjesiEntities();
        KullaniciRepository kulRepo = new KullaniciRepository();
        Kullanicilar secilen;
        public void Email(string AliciMail)
        {
            Kullanicilar kullanici = db.Kullanicilar.FirstOrDefault(x => x.KullaniciMail == AliciMail);
            Random rnd = new Random();
            kullanici.Sifre = rnd.Next(1000, 10000).ToString();
            db.SaveChanges();
            SmtpClient sc = new SmtpClient();
            sc.Port = 587;
            sc.Host = "smtp.outlook.com";
            sc.EnableSsl = true;
            sc.Credentials = new NetworkCredential("nilufer_bad_34@hotmail.com", "1472Suiren156");


            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("nilufer_bad_34@hotmail.com", "Filmİzle Windows App");
            mail.To.Add(AliciMail);
            mail.Subject = "Şifre sıfırlama talebinde bulundunuz.";
            mail.IsBodyHtml = true;
            mail.Body = $@"<h1> Sayın, {kullanici.KullaniciAdi} </h1> <br />
            <h2>{DateTime.Now.ToString()}  Tarihinde şifre sıfırlama talebinde bulundunuz. <h2/>
            <br/>
            <p>Yeni şifreniz {kullanici.Sifre} 
            Eğer talebi gönderen siz değilseniz, ilgili iletişim bilgilerinden bize geri bildirimde bulununuz.<p/>";

            sc.Send(mail);

            
            secilen = kulRepo.GetById(kullanici.KullaniciId);
            secilen.Sifre = Sifreleme.MD5Sifrele(kullanici.Sifre);
            secilen.isDeleted = false;
            kulRepo.Update(secilen);

        }
    }
}

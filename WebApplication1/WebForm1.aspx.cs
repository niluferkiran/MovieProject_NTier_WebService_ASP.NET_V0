using BLL;
using BLL.Repositories;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        KullaniciRepository kulRepo = new KullaniciRepository();
        Kullanicilar secilen;
        public static int ID;
        static int attempt = 3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //input type ile validasyon
            string email2 = Request.Form["email"] != null ? Request.Form["email"].ToString() : "";
            string sifre2 = string.IsNullOrEmpty(Convert.ToString(Request.Form["pswd"])) ? "" : Request.Form["pswd"].ToString();

            //asp:label ve textbox type ile validasyon
            //string email = txtKullaniciEmail.Text != null ? txtKullaniciEmail.Text.ToString() : "" ;
            //string sifre = string.IsNullOrEmpty(txtSifre.Text) ? "" : txtSifre.Text.ToString();

            var kullanicilar = kulRepo.GetAll().Where(x=> x.isDeleted == false);
            if (kullanicilar.Any(x => x.KullaniciMail == Request.Form["email"]))
            {
                var kullanici = kulRepo.GetAll().Where(x => x.KullaniciMail == Request.Form["email"]).FirstOrDefault();
                if (sifre2 == "" && string.IsNullOrEmpty(Request.Form["pswd"]) && Request.Form["pswd"] != kullanici.Sifre)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Email veya şifre hatalı. Tekrar deneyiniz.')", true);

                }
                else
                {
                    if (kullanici != null)
                    {
                        //Sifreleme.MD5Sifrele(sifre2)
                        if (kullanici.Sifre == Sifreleme.MD5Sifrele(sifre2))
                        {
                            attempt = 0;
                            ID = kullanici.KullaniciId;
                            if (kullanici.RolId == 4) //|| kullanici.RolId == 3
                            {
                                //doğru çalışmıyor fakat buraya kadar olan kısım doğru
                                //string message = "Editör olarak girmek için Yes'e Kullanıcı olarak girmek için No'ya basınız";
                                //string title = "Editör girişi";
                                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(), "alert('Record saved successfully.');window.location='kullaniciForm.aspx';", true);
                                //Server.Transfer("kullaniciForm.aspx");
                                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Editör olarak girmek için Yes'e Kullanıcı olarak girmek için No'ya basınız'); window.location = '" + Page.ResolveUrl("~/kullaniciForm.aspx") + "';", true);
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Giriş başarılı.')", true);
                                //Response.Redirect("KullaniciAnasayfa.aspx");

                                Server.Transfer("KullaniciAnasayfa.aspx");
                            }
                        }
                        else if ((attempt == 3) || (attempt > 0))
                        {
                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Yalnızca " + Convert.ToString(attempt) + "  kere giriş hakkınız kaldı.')", true);
                            --attempt;
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Hesabınız kitlendi.Şifrenizi[Şifremi unuttum] linkinden sıfırlayarak hesabınıza giriş yapabilirsiniz.İlgili bilgilere ulaşmak için asdsdsassds@outlook.com mail adresiyle iletişime geçebilirsiniz.')", true);
                            secilen = kulRepo.GetById(kullanici.KullaniciId);
                            secilen.isDeleted = true;
                            kulRepo.Update(secilen);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Bu hesapta bir kullanıcı bulunamadı.')", true);

                    }
                }
            }

        }

        int yaS;
        int rolId;
        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            
            string kullaniciAdi = txtAd.Text;
            string kullaniciSoyad = txtSoyadi.Text;
            string sifre = txtSifre.Text;
            string tckn = txttc.Text;
            string mail = txtMail.Text;
            DateTime dogumTarihi = Convert.ToDateTime(txtdate.Text);
            string cinsiyet = "";
            if (cinsE.Checked == true)
            {
                cinsiyet = cinsE.Text;
            }
            else if (cinsK.Checked == true)
            {
                cinsiyet = cinsK.Text;
            }
            if (yaS < 18)
            {
                rolId = 2;
            }
            else
            {
                rolId = 1;
            }
            int RolID = rolId;


            kulRepo.Insert(new DAL.Kullanicilar
            {
                KullaniciAdi = kullaniciAdi,
                KullaniciSoyadi = kullaniciSoyad,
                Sifre = Sifreleme.MD5Sifrele(sifre),
                RolId = RolID,
                TCKN = tckn,
                KullaniciMail = mail,
                DogumTarihi = dogumTarihi,
                Cinsiyet = cinsiyet,
                isDeleted = false
            });
        }

        private void dtpDogumTarihi_ValueChanged(object sender, EventArgs e)
        {
            TimeSpan fark;
            int yas;
            DateTime dogumtarihi;
            dogumtarihi = Convert.ToDateTime(txtdate.Text);
            fark = DateTime.Now.Date.Subtract(dogumtarihi);
            yas = Convert.ToInt32(fark.TotalDays);
            yaS = yas / 365;
        }
        MailGonderici mg = new MailGonderici();

        protected void Button2_Click(object sender, EventArgs e)
        {
            mg.Email(TextBox1.Text);
        }

        //public void sifreleriGuncelle()
        //{
        //    var kullanicilar = kulRepo.GetAll().ToList();
        //    List<Kullanicilar> sh = new List<Kullanicilar>();
        //    foreach (var kullanici in kullanicilar)
        //    {
        //        kullanici.Sifre = Sifreleme.MD5Sifrele("12345678");
        //        var secilen = kulRepo.GetById(Convert.ToInt32(kullanici.KullaniciId));
        //        sh.Add(new Kullanicilar
        //        {
        //            Sifre = Sifreleme.MD5Sifrele("12345678")
        //        });
        //    }
        //    kulRepo.Update(sh);
        //    db.SifrelerVeHashler.AddRange(sh);
        //    db.SaveChanges();
        //}
    }
}
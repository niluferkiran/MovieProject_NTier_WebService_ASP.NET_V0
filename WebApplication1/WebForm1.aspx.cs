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
                        if (kullanici.Sifre == sifre2)
                        {
                            attempt = 0;
                            ID = kullanici.KullaniciId;
                            if (kullanici.RolId == 4) //|| kullanici.RolId == 3
                            {
                                //doğru çalışmıyor fakat buraya kadar olan kısım doğru
                                //string message = "Editör olarak girmek için Yes'e Kullanıcı olarak girmek için No'ya basınız";
                                //string title = "Editör girişi";
                                Server.Transfer("kullaniciForm.aspx");
                                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Editör olarak girmek için Yes'e Kullanıcı olarak girmek için No'ya basınız'); window.location = '" + Page.ResolveUrl("~/kullaniciForm.aspx") + "';", true);
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
    }
}
using BLL;
using BLL.Repositories;
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
                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Giriş başarılı.')", true);
                            //Response.Redirect("KullaniciAnasayfa.aspx");
                            ID = kullanici.KullaniciId;
                            if (kullanici.RolId == 4) //|| kullanici.RolId == 3
                            {
                                //doğru çalışmıyor fakat buraya kadar olan kısım doğru
                                string message = "Editör olarak girmek için Yes'e Kullanıcı olarak girmek için No'ya basınız";
                                string title = "Editör girişi";
                                ClientScript.RegisterStartupScript(this.GetType(), title, "alert('Editör olarak girmek için Yes'e Kullanıcı olarak girmek için No'ya basınız'); window.location = '" + Page.ResolveUrl("~/kullaniciForm.aspx") + "';", true);
                            }
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
using BLL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class kullanici : System.Web.UI.MasterPage
    {
        KullaniciRepository kulRepo = new KullaniciRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            int formId = WebForm1.ID;
            Session["Ad"] = kulRepo.GetById(formId).KullaniciAdi;
            Session["email"] = kulRepo.GetById(formId).KullaniciMail;
            Session["sifre"] = kulRepo.GetById(formId).Sifre;

            Label1.Text = Session["Ad"].ToString();
            //Label1.Text = Convert.ToString(WebForm1.ID);
            //if (Membership.GetUser() != null)
            //{
            //    Session.Abandon();
            //    Response.Redirect("WebForm1.aspx");
            //}
            //else Response.Redirect("WebForm1.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            FormsAuthentication.SignOut();

            Response.Redirect("WebForm1.aspx");

            //if (Membership.GetUser() != null) 
            //{
            //    Session.Abandon();
            //    Response.Redirect("WebForm1.aspx");
            //}  
            //else Response.Redirect("WebForm1.aspx");
            //Response.Redirect("KarsilamaSayfasi.aspx");

            //Session.Clear();
            //Session.Abandon();
            //FormsAuthentication.SignOut();
            ////Response.Redirect("KarsilamaSayfasi.aspx");
            //Session["Ad"] = null;
            //Session["email"] = null;
            //Session["sifre"] = null;
            //Response.Cookies.Clear();
            //if (Session["Ad"] == null)
            //{
            //    Response.Redirect("KarsilamaSayfasi.aspx");
            //}
            //else
            //{
            //   Response.Redirect("KullaniciAnasayfa.aspx");
            //}



        }
    }
}
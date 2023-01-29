using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class KarsilamaSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["id"] = null;
                Session.RemoveAll();
                Session.Abandon();
                //HttpContext.Current.Session.Clear();
                //HttpContext.Current.Session.Abandon();
                //HttpContext.Current.User = null;
                //Response.Redirect("KarsilamaSayfasi.aspx");
                //Session.Abandon();
                //Session.Remove("Ad");
                //Session.Remove("email");
                //Session.Remove("sifre");
                //Response.Redirect("WebForm1.aspx");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
                Response.Cache.SetNoStore();
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }
    }
}
using BLL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        KullaniciRepository kulRepo = new KullaniciRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            int formId = WebForm1.ID;
            Label1.Text = kulRepo.GetById(formId).KullaniciAdi;

        }
    }
}
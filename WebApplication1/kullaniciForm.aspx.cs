using BLL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class kullaniciForm : System.Web.UI.Page
    {
        KullaniciRepository kulRepo = new KullaniciRepository();
        FilmRepository filmRepo = new FilmRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            KullaniciGetir();
        }

        private void KullaniciGetir()
        {
            GridView1.DataSource = kulRepo.GetAll();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("lblKullaniciId") as Label;
        }
    }
}
using BLL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class filmIcerik : System.Web.UI.Page
    {
        FilmRepository filmRepo = new FilmRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["id"] != null)
            {
                int filmId = int.Parse(Request.QueryString["id"]);

                rptFilmler.DataSource = filmRepo.GetAll().Where(f => f.FilmId == filmId).ToList();
                rptFilmler.DataBind();


            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }

        }
    }
}
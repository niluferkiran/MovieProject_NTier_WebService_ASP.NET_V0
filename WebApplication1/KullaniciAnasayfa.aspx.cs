using BLL.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class KullaniciAnasayfa : System.Web.UI.Page
    {
        FilmRepository filmRepo = new FilmRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            int formId = WebForm1.ID;

            

        }
    }
}
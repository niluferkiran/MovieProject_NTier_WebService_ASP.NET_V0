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


            Repeater2.DataSource = filmRepo.GetAll().Select(f => new 
                { 
            f.FilmAdi,
            f.Konusu,
            f.FilmResim
            }).ToList();

            Repeater2.DataBind();

            Repeater1.DataSource = filmRepo.GetAll().Select(f => new {
                f.FilmAdi,
                f.Konusu,
                f.FilmResim,
                f.FilmOdul,
                f.FilmOyuncular,
                f.FilmSuresi,
                f.FragmanSuresi,
                f.FragmanVideo,
                f.Ulkesi,
                f.Yonetmenler.YonetmenAdi,
                f.Kategoriler.KategoriAdi
            }).ToList();

            Repeater1.DataBind();





            ////id yanlış çalışabilir, değiştir
            //int id = Label1.ID.Count();
            //Label1.Text = filmRepo.GetById(id).FilmAdi;
            

        }

        protected void lnkUploadPics_Click(object sender, EventArgs e)
        {
            int ID = filmRepo.GetAll().Count;
            
            var filmler = filmRepo.GetAll().Select(f => new
            {
                f.FilmAdi,
                f.Konusu
            }).ToList();

            ////string filmKonusu = Request.Form["FilmKonusu"];

            Label2.Text = filmRepo.GetById(ID).Konusu.ToString();
        }
    }
}
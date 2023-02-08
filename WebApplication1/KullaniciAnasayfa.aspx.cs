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
        DuyuruRepository duyuruRepo = new DuyuruRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["id"] != null) 
            {
                int formId = WebForm1.ID;


                Repeater2.DataSource = filmRepo.GetAll().Select(f => new
                {
                    f.FilmId,
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
                }).Take(9).Distinct().ToList();

                Repeater2.DataBind();

                //Repeater1.DataSource = filmRepo.GetAll().Select(f => new {
                //    f.FilmAdi,
                //    f.Konusu,
                //    f.FilmResim,
                //    f.FilmOdul,
                //    f.FilmOyuncular,
                //    f.FilmSuresi,
                //    f.FragmanSuresi,
                //    f.FragmanVideo,
                //    f.Ulkesi,
                //    f.Yonetmenler.YonetmenAdi,
                //    f.Kategoriler.KategoriAdi
                //}).ToList();

                //Repeater1.DataBind();
                filmDuyurusu2.DataSource = duyuruRepo.GetAll().Select(d => new
                {
                    d.DuyuruId,
                    d.duyuruIcerik,
                    d.tarih,
                    d.Kullanicilar.KullaniciAdi
                }).OrderByDescending(d=> d.tarih).Take(1).ToList();

                filmDuyurusu2.DataBind();

                filmDuyurusu.DataSource = duyuruRepo.GetAll().Select(d => new
                {
                    d.DuyuruId,
                    d.duyuruIcerik,
                    d.tarih,
                    d.Kullanicilar.KullaniciAdi
                }).OrderByDescending(d => d.tarih).Take(1).ToList();

                filmDuyurusu.DataBind();
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
               





            ////id yanlış çalışabilir, değiştir
            //int id = Label1.ID.Count();
            //Label1.Text = filmRepo.GetById(id).FilmAdi;
            

        }
        //Bu method düzgün çalışmıyor
        protected void lnkUploadPics_Click(object sender, EventArgs e)
        {
            string id = (sender as Button).ID;
            string text = (sender as Button).Text;

            Label2.Text = filmRepo.GetById(sender.ToString().Length).Kategoriler.ToString();
            Button button = sender as Button;
            if (button != null)
            {
                int buttonId = int.Parse(button.ID);
                var filmler = filmRepo.GetAll().Select(f => new
                {
                    f.FilmAdi,
                    f.Konusu
                }).ToList();

                Label2.Text = filmRepo.GetById(buttonId).Konusu.ToString();
            }
            //int ID = filmRepo.GetAll().Count;
            //Button button = (Button) lnkUploadPics as Button; 
            //string buttonId = button.ID;

            

            ////string filmKonusu = Request.Form["FilmKonusu"];

           
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "filmDetay":
                    Response.Redirect(string.Format("filmIcerik.aspx?id={0}",e.CommandArgument));
                    break;

                default:
                    break;
            }
        }
    }
}
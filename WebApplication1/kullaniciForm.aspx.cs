using BLL.Repositories;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
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
            GridView1.DataSource = kulRepo.GetAll().Select(a => new
            {
                a.KullaniciId,
                a.KullaniciAdi,
                a.KullaniciSoyadi,
                a.Sifre,
                //a.Roller.RolAdi,
                a.RolId,
                a.TCKN,
                a.KullaniciMail,
                a.DogumTarihi,
                a.Cinsiyet,
                a.isDeleted,
            }).ToList();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblKullaniciId") as Label;
            kulRepo.Delete(Convert.ToInt32(id.Text));
            KullaniciGetir();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            KullaniciGetir();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];

            Label id = GridView1.Rows[e.RowIndex].FindControl("lblKullaniciId") as Label;
            string kullaniciAdi = (row.FindControl("txtKullaniciAdi") as TextBox).Text;
            string kullaniciSoyad = (row.FindControl("txtKullaniciSoyadi") as TextBox).Text;
            var sifre = (row.FindControl("txtSifre") as TextBox).Text;
            var rolId = (row.FindControl("txtRolId") as TextBox).Text;
            var tckn = (row.FindControl("txtTCKN") as TextBox).Text;
            var dogumTarihi = (row.FindControl("txtDogumTarihi") as TextBox).Text;
            var cinsiyet = (row.FindControl("txtCinsiyet") as TextBox).Text;
            string isDeleted = (row.FindControl("txtisDeleted") as TextBox).Text;

            var secilen = kulRepo.GetById(Convert.ToInt32(id.Text));
            secilen.KullaniciAdi = kullaniciAdi;
            secilen.KullaniciSoyadi = kullaniciSoyad;
            secilen.Sifre = sifre;
            secilen.RolId = Convert.ToInt32(rolId);
            secilen.TCKN = tckn;
            secilen.DogumTarihi = Convert.ToDateTime(dogumTarihi);
            secilen.Cinsiyet = cinsiyet;
            secilen.isDeleted = Convert.ToBoolean(isDeleted);
            kulRepo.Update(secilen);

            GridView1.EditIndex = -1;
            KullaniciGetir();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            KullaniciGetir();
        }


        private void btnKaydet()
        {
            try
            {
                string kullaniciAdi = txtAd.Text;
                string kullaniciSoyad = txtSoyadi.Text;
                string sifre = txtSifre.Text;
                int rolId = Convert.ToInt32(dlRol.SelectedValue);
                string tckn = txttc.Text;
                string mail = txtMail.Text;
                DateTime dogumTarihi = Convert.ToDateTime(txtdate.Text);
                string cinsiyet = "";
                if (cinsE.Checked == true)
                {
                    cinsiyet = cinsE.Text;
                }
                else if (cinsK.Checked == true)
                {
                    cinsiyet = cinsK.Text;
                }

                kulRepo.Insert(new DAL.Kullanicilar
                {
                    KullaniciAdi = kullaniciAdi,
                    KullaniciSoyadi = kullaniciSoyad,
                    Sifre = sifre,
                    RolId = rolId,
                    TCKN = tckn,
                    KullaniciMail = mail,
                    DogumTarihi = dogumTarihi,
                    Cinsiyet = cinsiyet,
                    isDeleted = false
                });

                KullaniciGetir();

            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }

        }

        protected void bTNKaydet_Click(object sender, EventArgs e)
        {
            btnKaydet();
        }
    }
}
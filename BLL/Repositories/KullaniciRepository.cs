using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Repositories
{
    public class KullaniciRepository : IRepository<Kullanicilar>
    {
        MovieBoxDBEntities db = new MovieBoxDBEntities();
        public void Delete(int itemId)
        {
            Kullanicilar silinecek = db.Kullanicilar.Find(itemId);
            silinecek.isDeleted = true;
            db.SaveChanges();
        }

        public List<Kullanicilar> GetAll()
        {
            return db.Kullanicilar.ToList();
        }

        public Kullanicilar GetById(int id)
        {
            return db.Kullanicilar.Find(id);
        }

        public void Insert(Kullanicilar item)
        {
            db.Kullanicilar.Add(item).isDeleted = false;
            db.SaveChanges();
        }

        public void Update(Kullanicilar item)
        {
            Kullanicilar guncellenecek = db.Kullanicilar.Find(item.KullaniciId);
            db.Entry(guncellenecek).CurrentValues.SetValues(item);
            db.SaveChanges();
        }
    }
}

using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Repositories
{
    public class FilmRepository : IRepository<Filmler>
    {
        MovieBoxDBEntities db = new MovieBoxDBEntities();
        public void Delete(int itemId)
        {
            Filmler silinecek = db.Filmler.Find(itemId);
            db.Filmler.Add(silinecek).isDeleted = true;
            db.SaveChanges();
        }

        public List<Filmler> GetAll()
        {
            return db.Filmler.ToList();
        }

        public Filmler GetById(int id)
        {
            return db.Filmler.Find(id);
        }

        public void Insert(Filmler item)
        {
            db.Filmler.Add(item).isDeleted = false;
            db.SaveChanges();
        }

        public void Update(Filmler item)
        {
            Filmler guncellenecek = db.Filmler.Find(item.FilmId);
            db.Entry(guncellenecek).CurrentValues.SetValues(item);
            db.SaveChanges();
        }
    }
}

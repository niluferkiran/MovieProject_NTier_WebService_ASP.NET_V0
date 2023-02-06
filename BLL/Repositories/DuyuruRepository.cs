using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Repositories
{
    public class DuyuruRepository : IRepository<Duyurular>
    {
        MovieBoxDBEntities db = new MovieBoxDBEntities();
        public void Delete(int itemId)
        {
            throw new NotImplementedException();
        }

        public List<Duyurular> GetAll()
        {
            return db.Duyurular.ToList();
        }

        public Duyurular GetById(int id)
        {
            return db.Duyurular.Find(id);
        }

        public void Insert(Duyurular item)
        {
            db.Duyurular.Add(item);
            db.SaveChanges();
        }

        public void Update(Duyurular item)
        {
            Duyurular guncellenecek = db.Duyurular.Find(item.DuyuruId);
            db.Entry(guncellenecek).CurrentValues.SetValues(item);
            db.SaveChanges();
        }
    }
}

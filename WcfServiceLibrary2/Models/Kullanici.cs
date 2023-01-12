using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfServiceLibrary2.Models
{
    [DataContract]
    public class Kullanici
    {
        [DataMember]
        public int KullaniciId { get; set; }
        [DataMember]
        public string KullaniciAdi { get; set; }
        [DataMember]
        public string KullaniciSoyadi { get; set; }
        [DataMember]
        public string Sifre { get; set; }
        [DataMember]
        public int RolId { get; set; }
        [DataMember]
        public string TCKNO { get; set; }
        [DataMember]
        public string KullaniciMail { get; set; }
        [DataMember]
        public DateTime DogumTarihi { get; set; }
        [DataMember]
        public string Cinsiyet { get; set; }
        [DataMember]
        public bool isDeleted { get; set; }
        [DataMember]
        public bool isBanned { get; set; }

    }
}

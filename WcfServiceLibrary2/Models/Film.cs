using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfServiceLibrary2.Models
{
    [DataContract]
    public class Film
    {
        [DataMember]
        public int FilmId { get; set; }
        [DataMember]
        public string FilmAdi { get; set; }

    }
}

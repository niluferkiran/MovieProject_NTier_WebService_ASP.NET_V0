using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfServiceLibrary2
{
    [ServiceContract]
    public interface IKullaniciServisi
    {
        [OperationContract]
        List<Kullanicilar> KullanicilariGetir();
       
    }

   
}

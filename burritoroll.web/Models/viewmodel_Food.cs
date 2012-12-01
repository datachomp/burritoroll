using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace burritoroll.web.Models
{
    public class viewmodel_Food
    {
        public IEnumerable<Burrito> burritos;
        public IEnumerable<Taco> tacos;
    }
}
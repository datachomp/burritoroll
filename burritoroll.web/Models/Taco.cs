using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Massive;

namespace burritoroll.web.Models
{

    public class Taco
    {
        public int tacoid { get; set; }
        public string name { get; set; }
        public int price { get; set; }
    }

    //public class Taco : DynamicModel
    //{
    //    public Taco()
    //        : base("burritostore")
    //    {
    //        PrimaryKeyField = "tacoid";
    //        TableName = "dbo.tacos";
    //    }
    //}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Massive;
using System.ComponentModel.DataAnnotations;

namespace burritoroll.web.Models
{
    
    public class Burrito
    {
        
        public int burritoid { get; set; }
        public string name { get; set; }
        public int price { get; set; }
    }
    /*
	public class Burrito : DynamicModel
	{
		public Burrito(): base("burritostore")
        {
            PrimaryKeyField = "burritoid";
            TableName = "dbo.burritos";
        }
	}*/
}
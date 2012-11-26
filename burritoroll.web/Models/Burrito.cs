using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Massive;

namespace burritoroll.web.Models
{
	public class Burrito : DynamicModel
	{
		public Burrito(): base("burritostore")
        {
            PrimaryKeyField = "burritoid";
            TableName = "dbo.burritos";
        }
	}
}
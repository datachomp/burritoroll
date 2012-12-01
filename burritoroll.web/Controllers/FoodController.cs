using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using burritoroll.web.Models;
using ServiceStack.OrmLite;
using System.Configuration;
using System.Data;

namespace burritoroll.web.Controllers
{
    public class FoodController : Controller
    {
        string connection = ConfigurationManager.ConnectionStrings["burritostore"].ToString();
        

        public ActionResult Index()
        {
            var dbFactory = new OrmLiteConnectionFactory(connection, SqlServerDialect.Provider);
            IDbConnection db = dbFactory.OpenDbConnection();

            var burritos = db.Select<Burrito>("select * from burritos");
            var tacos = db.Select<Taco>("select * from tacos");
			//var burritos = new Burrito();
			//var tacos = new Taco();
            

			//ViewBag.burritos = burritos.All().OrderBy(x => x.price);
			//ViewBag.tacos = tacos.All();
            //ViewBag.burritos = burritos.All();

            //var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            

            var viewModel = new viewmodel_Food
            {
                burritos = burritos
                , tacos = tacos //serializer.Serialize(tacos)
            };

            return View(viewModel);
        }

    }

}

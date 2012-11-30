using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using burritoroll.web.Models;

namespace burritoroll.web.Controllers
{
    public class FoodController : Controller
    {
        //
        // GET: /Food/

        public ActionResult Index()
        {
			var burritos = new Burrito();
			var tacos = new Taco();

			ViewBag.burritos = burritos.All().OrderBy(x => x.price);
			ViewBag.tacos = tacos.All();

			//ViewBag.burritos = burritos.All();
            return View();
        }

    }

}

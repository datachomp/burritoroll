using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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

			ViewBag.burritos = burritos.All();
			ViewBag.tacos = tacos.All();


            return View();
        }

    }
}

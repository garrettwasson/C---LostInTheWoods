using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using LostInTheWoods.Factories;
using LostInTheWoods.Models;

namespace LostInTheWoods.Controllers
{
    public class TrailController : Controller
    {
        private readonly TrailFactory trailFactory;
        public TrailController()
        {
            trailFactory = new TrailFactory();
        }
        //-------Home_Page_View-------
        [HttpGet("")]
        public IActionResult Home()
        {
            ViewBag.AllTrails = trailFactory.GetAllTrails();
            return View();
        }
        //-------Single_Trail_View-------
        [HttpGet("trails/{id}")]
        public IActionResult Trail(int id)
        {
            ViewBag.SingleTrail = trailFactory.GetSingleTrail(id);
            return View();
        }
        //-------New_Trail_Page-------
        [HttpGet("trails/new")]
        public IActionResult Add()
        {
            return View();
        }
        //-------Trail_Creation_View-------
        [HttpPost("trails/add")]
        public IActionResult AddTrail(Trail trail)
        {
            if(ModelState.IsValid)
            {
                trailFactory.AddTrail(trail);
                return RedirectToAction("Home");
            }
            return View("Add");
        }
    }
}

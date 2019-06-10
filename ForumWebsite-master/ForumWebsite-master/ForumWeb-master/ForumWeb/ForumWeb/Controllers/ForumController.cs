using ForumWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace ForumWeb.Controllers
{
    public class ForumController : Controller
    {
        QLDIENDANCONGNGHEDataContext data = new QLDIENDANCONGNGHEDataContext();
        // GET: Forum
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LinhVuc()
        {
            var linhvuc = from lv in data.LinhVucs select lv;
            return PartialView(linhvuc);
        }
        public ActionResult CongDong()
        {
            var congdong = from cd in data.CongDongs select cd;
            return PartialView(congdong);
        }
    }
}
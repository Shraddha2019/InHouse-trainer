using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using trainingapp.Models;

namespace trainingapp.Controllers
{
    public class EmpController : Controller
    {
        private ECOMMEntities db = new ECOMMEntities();
        private string Username;
        private string Password;

        //
        // GET: /Emp/

        public ActionResult Index()
        {
            var employee1 = db.Employee1.Include(e => e.Dept);
            return View(employee1.ToList());
        }

        //
        // GET: /Emp/Details/5

        public ActionResult Details(int id)
        {
            Employee1 employee1 = db.Employee1.Find(id);
            if (employee1 == null)
            {
                return HttpNotFound();
            }
            return View(employee1);
        }

        //
        // GET: /Emp/Create

        public ActionResult Create()
        {
            ViewBag.DeptID = new SelectList(db.Depts, "DeptId", "Dname");
            return View();
        }

        //
        // POST: /Emp/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Employee1 employee1)
        {
            if (ModelState.IsValid)
            {
                db.Employee1.Add(employee1);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.DeptID = new SelectList(db.Depts, "DeptId", "Dname", employee1.DeptID);
            return View(employee1);
        }

     
        //
        // GET: /Emp/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Employee1 employee1 = db.Employee1.Find(id);
            if (employee1 == null)
            {
                return HttpNotFound();
            }
            ViewBag.DeptID = new SelectList(db.Depts, "DeptId", "Dname", employee1.DeptID);
            return View(employee1);
        }

        //
        // POST: /Emp/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Employee1 employee1)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employee1).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.DeptID = new SelectList(db.Depts, "DeptId", "Dname", employee1.DeptID);
            return View(employee1);
        }

        //
        // GET: /Emp/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Employee1 employee1 = db.Employee1.Find(id);
            if (employee1 == null)
            {
                return HttpNotFound();
            }
            return View(employee1);
        }

        //
        // POST: /Emp/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Employee1 employee1 = db.Employee1.Find(id);
            db.Employee1.Remove(employee1);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

      
    }
}
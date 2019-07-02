using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace trainingapp.Models
{
    public class Emp
    {
        public int EmpID { get; set; }
        public string Empname { get; set; }
        public int Age { get; set; }
        public int Contact { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int DeptID { get; set; }
        public string Address { get; set; }
    }
}
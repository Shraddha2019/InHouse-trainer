﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace trainingapp.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class ECOMMEntities : DbContext
    {
        public ECOMMEntities()
            : base("name=ECOMMEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Dept> Depts { get; set; }
        public DbSet<Employee1> Employee1 { get; set; }
        public DbSet<EmpRole> EmpRoles { get; set; }
        public DbSet<Role> Roles { get; set; }
    
        public virtual ObjectResult<GetDatabyId_Result> GetDatabyId(Nullable<int> deptId)
        {
            var deptIdParameter = deptId.HasValue ?
                new ObjectParameter("DeptId", deptId) :
                new ObjectParameter("DeptId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetDatabyId_Result>("GetDatabyId", deptIdParameter);
        }
    }
}

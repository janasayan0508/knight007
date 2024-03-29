﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eLogSheet
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class eLogSheetEntities : DbContext
    {
        public eLogSheetEntities()
            : base("name=eLogSheetEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<Announcement> Announcements { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<Datum> Data { get; set; }
        public virtual DbSet<Delay> Delays { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<Equipment> Equipments { get; set; }
        public virtual DbSet<Frequency> Frequencies { get; set; }
        public virtual DbSet<FValue> FValues { get; set; }
        public virtual DbSet<Incident> Incidents { get; set; }
        public virtual DbSet<Machine> Machines { get; set; }
        public virtual DbSet<Parameter> Parameters { get; set; }
        public virtual DbSet<Section> Sections { get; set; }
        public virtual DbSet<Title> Titles { get; set; }
        public virtual DbSet<Verification> Verifications { get; set; }
    
        public virtual ObjectResult<sp_GetAnnouncementsForDate_Result> sp_GetAnnouncementsForDate(string dT)
        {
            var dTParameter = dT != null ?
                new ObjectParameter("DT", dT) :
                new ObjectParameter("DT", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetAnnouncementsForDate_Result>("sp_GetAnnouncementsForDate", dTParameter);
        }
    
        public virtual ObjectResult<sp_GetDashboardParametersByDate_Result> sp_GetDashboardParametersByDate(string dT)
        {
            var dTParameter = dT != null ?
                new ObjectParameter("DT", dT) :
                new ObjectParameter("DT", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetDashboardParametersByDate_Result>("sp_GetDashboardParametersByDate", dTParameter);
        }
    
        public virtual ObjectResult<sp_GetFreqDetails_Result> sp_GetFreqDetails()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetFreqDetails_Result>("sp_GetFreqDetails");
        }
    
        public virtual ObjectResult<sp_GetParametersListForDepartment_Result> sp_GetParametersListForDepartment(Nullable<int> dId)
        {
            var dIdParameter = dId.HasValue ?
                new ObjectParameter("DId", dId) :
                new ObjectParameter("DId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetParametersListForDepartment_Result>("sp_GetParametersListForDepartment", dIdParameter);
        }
    
        public virtual ObjectResult<sp_GetProductionParametersForDepttByrDate_Result> sp_GetProductionParametersForDepttByrDate(Nullable<int> dId, string dT)
        {
            var dIdParameter = dId.HasValue ?
                new ObjectParameter("DId", dId) :
                new ObjectParameter("DId", typeof(int));
    
            var dTParameter = dT != null ?
                new ObjectParameter("DT", dT) :
                new ObjectParameter("DT", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetProductionParametersForDepttByrDate_Result>("sp_GetProductionParametersForDepttByrDate", dIdParameter, dTParameter);
        }
    
        public virtual int sp_GetProductionParametersForDepttByrDateTEST(Nullable<int> dId, string dT)
        {
            var dIdParameter = dId.HasValue ?
                new ObjectParameter("DId", dId) :
                new ObjectParameter("DId", typeof(int));
    
            var dTParameter = dT != null ?
                new ObjectParameter("DT", dT) :
                new ObjectParameter("DT", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_GetProductionParametersForDepttByrDateTEST", dIdParameter, dTParameter);
        }
    
        public virtual ObjectResult<sp_GetUserDetails_Result> sp_GetUserDetails(string userId)
        {
            var userIdParameter = userId != null ?
                new ObjectParameter("UserId", userId) :
                new ObjectParameter("UserId", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetUserDetails_Result>("sp_GetUserDetails", userIdParameter);
        }
    }
}

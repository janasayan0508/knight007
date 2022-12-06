//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Incident
    {
        public int Id { get; set; }
        public Nullable<int> FY { get; set; }
        public Nullable<int> Q { get; set; }
        public Nullable<System.DateTime> DT { get; set; }
        public Nullable<int> DId { get; set; }
        public Nullable<int> SId { get; set; }
        public Nullable<int> MId { get; set; }
        public Nullable<int> EId { get; set; }
        public Nullable<int> TId { get; set; }
        public Nullable<int> PId { get; set; }
        public string PName { get; set; }
        public string PF { get; set; }
        public string PFT { get; set; }
        public string PFV { get; set; }
        public Nullable<System.DateTime> IncDate { get; set; }
        public string Agency { get; set; }
        public string Reason { get; set; }
        public string BriefDesc { get; set; }
        public string ShiftInc { get; set; }
        public string IncLocation { get; set; }
        public string IncType { get; set; }
        public string MsrsTaken { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
    }
}
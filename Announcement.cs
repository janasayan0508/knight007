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
    
    public partial class Announcement
    {
        public int Id { get; set; }
        public Nullable<int> FY { get; set; }
        public Nullable<int> Q { get; set; }
        public Nullable<System.DateTime> DT { get; set; }
        public string VisibleTo { get; set; }
        public string MsgTitle { get; set; }
        public string MsgDesc { get; set; }
        public string MsgUrl { get; set; }
        public Nullable<System.DateTime> MsgDtStart { get; set; }
        public Nullable<System.DateTime> MsgDtEnd { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public string UpdatedBy { get; set; }
    }
}

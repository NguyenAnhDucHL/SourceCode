//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CourseOnline.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SubjectReference
    {
        public int subject_id { get; set; }
        public int post_id { get; set; }
    
        public virtual Post Post { get; set; }
        public virtual Post Post1 { get; set; }
        public virtual Subject Subject { get; set; }
        public virtual Subject Subject1 { get; set; }
    }
}

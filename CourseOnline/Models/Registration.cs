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
    
    public partial class Registration
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Registration()
        {
            this.Grades = new HashSet<Grade>();
            this.Grades1 = new HashSet<Grade>();
        }
    
        public int registration_id { get; set; }
        public int user_id { get; set; }
        public int course_id { get; set; }
        public string registration_time { get; set; }
        public string registration_status { get; set; }
    
        public virtual Course Course { get; set; }
        public virtual Course Course1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grade> Grades { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grade> Grades1 { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
    }
}

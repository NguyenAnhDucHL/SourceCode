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
    
    public partial class Domain
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Domain()
        {
            this.Questions = new HashSet<Question>();
            this.Questions1 = new HashSet<Question>();
        }
    
        public int domain_id { get; set; }
        public Nullable<int> subject_id { get; set; }
        public string domain_name { get; set; }
        public string domain_description { get; set; }
        public Nullable<bool> domain_status { get; set; }
    
        public virtual Subject Subject { get; set; }
        public virtual Subject Subject1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Question> Questions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Question> Questions1 { get; set; }
    }
}

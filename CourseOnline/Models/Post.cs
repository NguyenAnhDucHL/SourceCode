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
    
    public partial class Post
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Post()
        {
            this.Tags = new HashSet<Tag>();
            this.Subjects = new HashSet<Subject>();
        }
    
        public string post_type { get; set; }
        public string post_category { get; set; }
        public string post_brief_info { get; set; }
        public string post_embeb { get; set; }
        public string post_name { get; set; }
        public int post_id { get; set; }
        public string post_thumbnail { get; set; }
        public string post_detail_info { get; set; }
        public string post_document_link { get; set; }
        public string post_status { get; set; }
        public string post_date { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tag> Tags { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Subject> Subjects { get; set; }
    }
}

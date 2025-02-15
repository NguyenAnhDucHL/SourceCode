//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CourseOnlineTests3
{
    using System;
    using System.Collections.Generic;
    
    public partial class Lesson
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Lesson()
        {
            this.Lesson1 = new HashSet<Lesson>();
            this.Questions = new HashSet<Question>();
        }
    
        public int lesson_id { get; set; }
        public int subject_id { get; set; }
        public string lesson_name { get; set; }
        public Nullable<int> lesson_order { get; set; }
        public string lesson_type { get; set; }
        public Nullable<bool> lesson_status { get; set; }
        public string lesson_link { get; set; }
        public string lesson_content { get; set; }
        public int parent_id { get; set; }
        public string lesson_support { get; set; }
        public string lesson_objecttive { get; set; }
        public Nullable<int> coursework_id { get; set; }
    
        public virtual Coursework Coursework { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lesson> Lesson1 { get; set; }
        public virtual Lesson Lesson2 { get; set; }
        public virtual Subject Subject { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Question> Questions { get; set; }
    }
}

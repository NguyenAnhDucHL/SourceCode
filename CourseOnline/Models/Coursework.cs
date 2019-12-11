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
    
    public partial class Coursework
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Coursework()
        {
            this.Grades = new HashSet<Grade>();
            this.Grades1 = new HashSet<Grade>();
            this.Lessons = new HashSet<Lesson>();
            this.Lessons1 = new HashSet<Lesson>();
        }
    
        public int coursework_id { get; set; }
        public int course_id { get; set; }
        public string due_date { get; set; }
        public bool coursework_status { get; set; }
        public string coursework_name { get; set; }
        public Nullable<int> usercreate_id { get; set; }
        public Nullable<int> coursework_weight { get; set; }
        public string coursework_link { get; set; }
        public int test_id { get; set; }
        public string coursework_note { get; set; }
    
        public virtual Course Course { get; set; }
        public virtual Course Course1 { get; set; }
        public virtual ExamTest ExamTest { get; set; }
        public virtual ExamTest ExamTest1 { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grade> Grades { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grade> Grades1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lesson> Lessons { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lesson> Lessons1 { get; set; }
    }
}

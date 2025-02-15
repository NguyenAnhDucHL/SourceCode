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
    
    public partial class ExamTest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExamTest()
        {
            this.Courseworks = new HashSet<Coursework>();
            this.TestAnswers = new HashSet<TestAnswer>();
            this.TestQuestions = new HashSet<TestQuestion>();
            this.TestResults = new HashSet<TestResult>();
        }
    
        public int test_id { get; set; }
        public int exam_id { get; set; }
        public int course_id { get; set; }
        public string test_name { get; set; }
        public string exam_note { get; set; }
        public string test_code { get; set; }
        public string note { get; set; }
        public Nullable<int> subject_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Coursework> Courseworks { get; set; }
        public virtual Exam Exam { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestAnswer> TestAnswers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestQuestion> TestQuestions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestResult> TestResults { get; set; }
    }
}

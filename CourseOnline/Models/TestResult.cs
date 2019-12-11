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
    
    public partial class TestResult
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TestResult()
        {
            this.TestAnswers = new HashSet<TestAnswer>();
            this.TestAnswers1 = new HashSet<TestAnswer>();
        }
    
        public int test_user_id { get; set; }
        public int user_id { get; set; }
        public int test_id { get; set; }
        public int exam_id { get; set; }
        public string test_type { get; set; }
        public Nullable<int> tested { get; set; }
        public string average { get; set; }
        public string pass_rate { get; set; }
        public string tested_at { get; set; }
    
        public virtual Exam Exam { get; set; }
        public virtual Exam Exam1 { get; set; }
        public virtual ExamTest ExamTest { get; set; }
        public virtual ExamTest ExamTest1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestAnswer> TestAnswers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestAnswer> TestAnswers1 { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
    }
}

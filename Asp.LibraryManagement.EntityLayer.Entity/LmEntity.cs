using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asp.LibraryManagement.EntityLayer.Entity
{
    public class LmEntity
    {
        public string RegNo { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Pass { get; set; }
        public string ConPass { get; set; }
        public string Branch { get; set; }
        public string Section { get; set; }
        public int Semester { get; set; }
        public string Gender { get; set; }
        public int YearOfAdmission { get; set; }
        public string Email { get; set; }
        public string ContactNumber { get; set; }
    }
    public class LmLoginEntity
    {
        public string LogUserName { get; set; }
        public string LogUserPass { get; set; }
        public string Role { get; set; }
    }
   public class LmAdminLoginEntity
    {
        public string AdminUserName { get; set; }
        public string AdminPassword { get; set; }
    }
  
    public class LmAdminTeacherInsertEntity
    {
        public string TeacherName { get; set; }
        public string TeacherUSName { get; set; }
        public string TDesignation { get; set; }
        public string TBranch { get; set; }
        public string TPassword { get; set; }
        public string TContactInfo { get; set; }
        public string TEmail { get; set; } 
    }

    public class LmAdminEventInsertEntity
    {
        public string EventName { get; set; }
        public string EventDescription { get; set; }
        public string EventStartDate { get; set; }
        public string EventEndDate { get; set; }
        public string EventStartTime { get; set; }
        public string EManagerName { get; set; }
        public string EManagerContact { get; set; }
        public string EManagerEmail { get; set; }
        public string EventVenue { get; set; }
    }

    public class LmAdminBookInsertEntity
    {
        public string BookName { get; set;}
        public string AuthorName { get; set; }
        public string Publication { get; set; }
        public string BookGenre { get; set; }
        public int NumberOfCopy { get; set; }
        public byte[] BookCover { get; set; }
    }

    public class LmAdminInsertArticleEntity
    {
        public string ArticleName { get; set; }
        public string ArticleDescription { get; set; }
        public byte[] ArticlePhoto { get; set; }
    }

    public class LmRequestABookEntity
    {
        public string RequestedBookName { get; set; }
        public string RequestedBookAuthorName { get; set; }
        public string RequestedPublicationName { get; set; }
        public string RequestedBookCategory { get; set; }
    }

    public class LmCartEntity
    {
        public string UserName { get; set; }
        public string UserConNumber { get; set; }
        public string UserEmail { get; set; }
        public string ProductName { get; set; }
        public string ProductAuthor { get; set; }
        public byte[] ProductPhoto { get; set; }
   
    }

    public class LmCart
    {
        public string CartIncreament { get; set; }
    }


    public class LmLecture
    {
        public string LectureHeader { get; set; }
        public string Lecture { get; set; }
    }
}

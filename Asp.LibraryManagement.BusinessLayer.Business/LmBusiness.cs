using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.DataLayer.Data;

namespace Asp.LibraryManagement.BusinessLayer.Business
{
    
    public class LmBusiness
    {
        DataTable buisnessObject = new DataTable();
        LmData DataObj = new LmData();
        public int Businessinsertion(LmEntity entityObj)
        {
            int result = 0;
            SqlParameter[] objbuisnessparam = new SqlParameter[11];
            objbuisnessparam[0] = new SqlParameter("@Reg_no", SqlDbType.VarChar)
            {
                Value = entityObj.RegNo
            };
            objbuisnessparam[1] = new SqlParameter("@Name", SqlDbType.VarChar)
            {
                Value = entityObj.Name
            };
            objbuisnessparam[2] = new SqlParameter("@UserName", SqlDbType.VarChar)
            {
                Value = entityObj.UserName
            };
            objbuisnessparam[3] = new SqlParameter("@pass", SqlDbType.VarChar)
            {
                Value = entityObj.Pass
            };
            objbuisnessparam[4] = new SqlParameter("@gender", SqlDbType.VarChar)
            {
                Value = entityObj.Gender
            };
            objbuisnessparam[5] = new SqlParameter("@Branch", SqlDbType.VarChar)
            {
                Value = entityObj.Branch
            };
            objbuisnessparam[6] = new SqlParameter("@Section", SqlDbType.VarChar)
            {
                Value = entityObj.Section
            };
            objbuisnessparam[7] = new SqlParameter("@semester", SqlDbType.Int)
            {
                Value = entityObj.Semester
            };
            objbuisnessparam[8] = new SqlParameter("@Yearofadm", SqlDbType.Int)
            {
                Value = entityObj.YearOfAdmission
            };
            objbuisnessparam[9] = new SqlParameter("@email", SqlDbType.VarChar)
            {
                Value = entityObj.Email
            };
            objbuisnessparam[10] = new SqlParameter("@contactNo", SqlDbType.VarChar)
            {
                Value = entityObj.ContactNumber
            };
            result = DataObj.InsertData(objbuisnessparam);
            return result;
        }


        
        public int LoginMethod(LmLoginEntity loginobject)
        {
            LmData LoginData = new LmData();
            SqlParameter[] ParamsLogin = new SqlParameter[2];
            ParamsLogin[0] = new SqlParameter("@UserName", SqlDbType.VarChar)
            {
                Value = loginobject.LogUserName
            };
            ParamsLogin[1] = new SqlParameter("@pass", SqlDbType.VarChar)
            {
                Value = loginobject.LogUserPass
            };
            int result = LoginData.Log_in(ParamsLogin);
            return result;
        }



        public int TLog_InMethod(LmLoginEntity Teacher_Login_object)
        {
            LmData TLoginData = new LmData();
            SqlParameter[] ParamsTLogin = new SqlParameter[2];
            ParamsTLogin[0] = new SqlParameter("@UserName", SqlDbType.VarChar)
            {
                Value = Teacher_Login_object.LogUserName
            };
            ParamsTLogin[1] = new SqlParameter("@pass", SqlDbType.VarChar)
            {
                Value = Teacher_Login_object.LogUserPass
            };
            int result = TLoginData.Tlog_In(ParamsTLogin);
            return result;
            
        }


        public int AdminLoginMethod(LmAdminLoginEntity AdminLogin)
        {
            LmData AdminLoginData = new LmData();
            SqlParameter[] ParamsAdminLogin = new SqlParameter[2];
            ParamsAdminLogin[0] = new SqlParameter("@AdminUserName", SqlDbType.VarChar)
            {
                Value = AdminLogin.AdminUserName
            };
            ParamsAdminLogin[1] = new SqlParameter("@Adminpass", SqlDbType.VarChar)
            {
                Value = AdminLogin.AdminPassword
            };
            int result = AdminLoginData.AdminLog_In(ParamsAdminLogin);
            //int  = LoginData.Log_in(ParamsLogin);
            return result;
        }
        public int TeacherInfo(LmAdminTeacherInsertEntity TInsertobj)
        {
            LmData InsertTeacher = new LmData();
            SqlParameter[] ObjTeacherInfobuisnessparam = new SqlParameter[7];
            ObjTeacherInfobuisnessparam[0] = new SqlParameter("@TName", SqlDbType.VarChar)
            {
                Value = TInsertobj.TeacherName
            };
            ObjTeacherInfobuisnessparam[1] = new SqlParameter("@TUserName", SqlDbType.VarChar)
            {
                Value = TInsertobj.TeacherUSName
            };
            ObjTeacherInfobuisnessparam[2] = new SqlParameter("@Tpass", SqlDbType.VarChar)
            {
                Value = TInsertobj.TPassword
            };
            ObjTeacherInfobuisnessparam[3] = new SqlParameter("@Tdesignation", SqlDbType.VarChar)
            {
                Value = TInsertobj.TDesignation
            };
            ObjTeacherInfobuisnessparam[4] = new SqlParameter("@TBranch", SqlDbType.VarChar)
            {
                Value = TInsertobj.TBranch
            };
            ObjTeacherInfobuisnessparam[5] = new SqlParameter("@TcontactNo", SqlDbType.VarChar)
            {
                Value = TInsertobj.TContactInfo
            };
            ObjTeacherInfobuisnessparam[6] = new SqlParameter("@Temail", SqlDbType.VarChar)
            {
                Value = TInsertobj.TEmail
            };
            int result = InsertTeacher.AdminInsertTeacher(ObjTeacherInfobuisnessparam);
            
            return  result;
       
        }

        public int InsertEventInfo(LmAdminEventInsertEntity AddEventEntity)
        {
            LmData InsertEventData = new LmData();
            SqlParameter[] ParamEventInsert = new SqlParameter[9];
            ParamEventInsert[0] = new SqlParameter("@EName", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EventName
            };
            ParamEventInsert[1] = new SqlParameter("@Edescription", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EventDescription
            };
            ParamEventInsert[2] = new SqlParameter("@ES_Date", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EventStartDate
            };
            ParamEventInsert[3] = new SqlParameter("@EE_date", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EventEndDate
            };
            ParamEventInsert[4] = new SqlParameter("@E_time", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EventStartTime
            };
            ParamEventInsert[5] = new SqlParameter("@EManager_Name", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EManagerName
            };
            ParamEventInsert[6] = new SqlParameter("@EMcontactNo", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EManagerContact
            };
            ParamEventInsert[7] = new SqlParameter("@EMemail", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EManagerEmail
            };
            ParamEventInsert[8] = new SqlParameter("@EVeneue", SqlDbType.VarChar)
            {
                Value = AddEventEntity.EventVenue
            };

            int result = InsertEventData.AdminInsertEventInfo(ParamEventInsert);
            return result;
        }

        public int InsertBookInfo(LmAdminBookInsertEntity AddbookEntityObj)
        {
            LmData InsertBookData = new LmData();
            SqlParameter[] ParamBookInsert = new SqlParameter[6];
            ParamBookInsert[0] = new SqlParameter("@BookName", SqlDbType.VarChar)
            {
                Value = AddbookEntityObj.BookName
            };
            ParamBookInsert[1] = new SqlParameter("@Author", SqlDbType.VarChar)
            {
                Value = AddbookEntityObj.AuthorName
            };
            ParamBookInsert[2] = new SqlParameter("@Publication", SqlDbType.VarChar)
            {
                Value = AddbookEntityObj.Publication
            };
            ParamBookInsert[3] = new SqlParameter("@Subject", SqlDbType.VarChar)
            {
                Value = AddbookEntityObj.BookGenre
            };
            ParamBookInsert[4] = new SqlParameter("@No_of_copies", SqlDbType.Int)
            {
                Value = AddbookEntityObj.NumberOfCopy
            };
            ParamBookInsert[5] = new SqlParameter("@BCover", SqlDbType.VarBinary)
            {
                Value = AddbookEntityObj.BookCover
            };


            int result = InsertBookData.AdminInsertBookInfo(ParamBookInsert);
            return result;
        }

        public int InsertArticleInfo(LmAdminInsertArticleEntity InsertArticleEntity)
        {
            LmData InsertArticleData = new LmData();
            SqlParameter[] ParamArticleInsert = new SqlParameter[3];
            ParamArticleInsert[0] = new SqlParameter("@Aheading", SqlDbType.VarChar)
            {
                Value = InsertArticleEntity.ArticleName
            };
            ParamArticleInsert[1] = new SqlParameter("@A_Description", SqlDbType.VarChar)
            {
                Value = InsertArticleEntity.ArticleDescription
            };

            ParamArticleInsert[2] = new SqlParameter("@A_Picture", SqlDbType.VarBinary)
            {
                Value = InsertArticleEntity.ArticlePhoto
            };
            int result = InsertArticleData.AdminArticletInfo(ParamArticleInsert);
            return result;
        }

        //public DataTable BookInfoStoreMethod()
        //{
        //    LmData ShowBookInfo = new LmData();
        //    buisnessObject.Clear();
        //    buisnessObject = ShowBookInfo.AdminShowBookInfo().Tables["tbl_Book"];
        //    return buisnessObject;
        //}

        public int RequestABookData(LmRequestABookEntity RequestABookEntity)
        {
            LmData BookRequestData = new LmData();
            SqlParameter[] ParamBookRequest = new SqlParameter[4];
            ParamBookRequest[0] = new SqlParameter("@RBookName", SqlDbType.VarChar)
            {
                Value = RequestABookEntity.RequestedBookName
            };
            ParamBookRequest[1] = new SqlParameter("@RAuthorName", SqlDbType.VarChar)
            {
                Value = RequestABookEntity.RequestedBookAuthorName
            };

            ParamBookRequest[2] = new SqlParameter("@RBookPublication", SqlDbType.VarChar)
            {
                Value = RequestABookEntity.RequestedPublicationName
            };
            ParamBookRequest[3] = new SqlParameter("@RCategory", SqlDbType.VarChar)
            {
                Value = RequestABookEntity.RequestedBookCategory
            };

            int result = BookRequestData.RequestABookData(ParamBookRequest);
            return result;
        }



        public int AddLecture(LmLecture lectureentity)
        {
            LmData InsertLectureData = new LmData();
            SqlParameter[] ParamLectureInsert = new SqlParameter[2];
            ParamLectureInsert[0] = new SqlParameter("@Lheader", SqlDbType.VarChar)
            {
                Value = lectureentity.LectureHeader
            };
            ParamLectureInsert[1] = new SqlParameter("@Lect", SqlDbType.VarChar)
            {
                Value = lectureentity.Lecture
            };
            int result = InsertLectureData.Lecturedata(ParamLectureInsert);
            return 0;
           
        }
    }
}

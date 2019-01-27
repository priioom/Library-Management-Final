using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Asp.LibraryManagement.BusinessLayer.Business;
using System.Configuration;

namespace Asp.LibraryManagement.DataLayer.Data
{
    public class LmData
    { 
        //"Data Source=DESKTOP-441NA8M\\SQLExpress;Initial Catalog = Db_Library_Management_System; Trusted_Connection=True";
        //string cs = ConfigurationManager.ConnectionStrings["Db_Library_Management_SystemConnectionString"].ConnectionString;
        static string ObjData = ConfigurationManager.ConnectionStrings["Db_Library_Management_SystemConnectionString"].ConnectionString;
        SqlConnection objconnection = new SqlConnection(ObjData);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter Sda = new SqlDataAdapter();
        DataSet objDataset = new DataSet();
        public int InsertData(SqlParameter[] objbuisnessparam)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_InsertStudentrecord", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(objbuisnessparam);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;
        }
       
        public int Log_in(SqlParameter[] ParamsLogin)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_StudentrLogin", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamsLogin);
            objconnection.Open();
            result = (Int32)cmd.ExecuteScalar();
            objconnection.Close();
            return result;
        }

        public int Tlog_In(SqlParameter[] ParamsTLogin)
        {

            int result;
            cmd = new SqlCommand("Sp_TeacherLogin", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamsTLogin);
            objconnection.Open();
            result = (Int32)cmd.ExecuteScalar();
            objconnection.Close();
            return result;
        }

        public int AdminLog_In(SqlParameter[] ParamsAdminLogin)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_AdminLogin", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamsAdminLogin);
            objconnection.Open();
            result = (Int32)cmd.ExecuteScalar();
            objconnection.Close();
            return result;
           
        }

        public int AdminInsertTeacher(SqlParameter[] ObjTeacherInfobuisnessparam)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_InsertTeacherrecord", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ObjTeacherInfobuisnessparam);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;
           
        }

        public int AdminInsertEventInfo(SqlParameter[] ParamEventInsert)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_InsertEvents", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamEventInsert);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;
        }


        public int AdminInsertBookInfo(SqlParameter[] ParamBookInsert)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_InsertBookRecord", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamBookInsert);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;
        }

        public int AdminArticletInfo(SqlParameter[] ParamArticleInsert)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_tbl_Article", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamArticleInsert);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;

        }
        //public DataSet AdminShowBookInfo()
        //{
        //    SqlConnection connection = new SqlConnection(ObjData);
        //    //SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Book", connection);
        //    //connection.Open();
        //    //SqlDataReader rdr = cmd.ExecuteReader();
        //    //connection.Close();
        //    //return dt;



        //    SqlCommand ObjCommand = new SqlCommand("SELECT BookName,Author,Publication,[Subject],No_of_copies,Cover FROM tbl_Book", connection);
        //    connection.Open();
        //    SqlDataAdapter ObjAdapter = new SqlDataAdapter(ObjCommand);
        //    ObjAdapter.Fill(objDataset);
        //    connection.Close();
        //    return objDataset;

        //}

        public int RequestABookData(SqlParameter[] ParamBookRequest)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_Request_Book", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamBookRequest);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;

        }


        public int Lecturedata(SqlParameter[] ParamLectureInsert)
        {
            int result = 0;
            cmd = new SqlCommand("Sp_lecture", objconnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddRange(ParamLectureInsert);
            objconnection.Open();
            result = cmd.ExecuteNonQuery();
            objconnection.Close();
            return result;
        }

    }
}

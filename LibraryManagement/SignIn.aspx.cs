using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.BusinessLayer.Business;


namespace LibraryManagement
{
    public partial class SignIn : System.Web.UI.Page
    {
        LmBusiness LoginBuisness = new LmBusiness();
        LmBusiness TLogInBuisness = new LmBusiness();

        protected void BtnSignin_Click(object sender, EventArgs e)
        {
            string role = RdbRole.Text;

            try
            {
                if (role == " Student")
                {
                    Student_Log_In();
                }
                else if (role == " Teacher")
                {
                    Teacher_Log_in();
                    //Response.Write("teacher");
                }
            }
            catch
            {
                Response.Write("<script language=javascript>alert('Username and password does not match. Try again');</script>");
            }

           

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["User"] != null|| Session["TUser"] !=null)
            {
                Response.Redirect("Home.aspx");
            }

        }
        private void Student_Log_In()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string PassCheker = FormsAuthentication.HashPasswordForStoringInConfigFile(SignTxtPass.Text, "SHA1");
#pragma warning restore CS0618 // Type or member is obsolete

            LmLoginEntity loginobject = new LmLoginEntity
            {
                LogUserName = SignTxtUSName.Text,
                LogUserPass = PassCheker,
                Role = RdbRole.Text
            };
            Session["Role"] = loginobject.Role.ToString();
            int result = LoginBuisness.LoginMethod(loginobject);

            if (result == 1)
            {
                Session["User"] = loginobject.LogUserName;


                Response.Redirect("Home.aspx");
            }
           
        }

        private void Teacher_Log_in()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string PassChekerTeacher = FormsAuthentication.HashPasswordForStoringInConfigFile(SignTxtPass.Text, "SHA1");
#pragma warning restore CS0618 // Type or member is obsolete

            LmLoginEntity Teacher_Login_object = new LmLoginEntity();
            Teacher_Login_object.LogUserName = SignTxtUSName.Text;
            Teacher_Login_object.LogUserPass = PassChekerTeacher;
            Teacher_Login_object.Role = RdbRole.Text;
            Session["Role"] = Teacher_Login_object.Role.ToString();
            int result = TLogInBuisness.TLog_InMethod(Teacher_Login_object);
            Response.Write(result);

            if (result == 1)
            {

                Session["TUser"] = Teacher_Login_object.LogUserName;


                Response.Redirect("Home.aspx");
            }
           
        }
    }
}
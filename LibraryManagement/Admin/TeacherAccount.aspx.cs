using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.BusinessLayer.Business;
using System.Data;
using System.Web.Security;

namespace LibraryManagement.Admin
{
    public partial class TeacherAccount : System.Web.UI.Page
    {
        DataTable Tdt = new DataTable();
        LmBusiness TInsertBusinessObj = new LmBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUserName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            else
            {
                ((AdminMaster)Master).AdminUserName.Text = Session["AdminUserName"].ToString();

            }
        }

        protected void ButtonTeacherSubmit_Click(object sender, EventArgs e)
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string HashedTpass = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtTeacherPass.Text, "SHA1");
#pragma warning restore CS0618 // Type or member is obsolete
            LmAdminTeacherInsertEntity TInsertobj = new LmAdminTeacherInsertEntity
            {
                TeacherName = TxtTeaacherName.Text,
                TeacherUSName = TextBoxTeacherUsName.Text,
                TPassword = HashedTpass,
                TDesignation = DropDownListTeacherDesignation.Text,
                TBranch = DropDownList1.Text,
                TContactInfo = TextBoxTacherContact.Text,
                TEmail = TextBoxTeacherEmail.Text
            };
            int result = TInsertBusinessObj.TeacherInfo(TInsertobj);
            if (result == 1)
            {
                Response.Redirect("AdminDashboard.aspx");
                Clear();
            }
            else
            {
                Response.Write("Error Occured When Registering.");
                Clear();
            }
        }
        private void Clear()
        {
          TxtTeaacherName.Text="";
          TextBoxTeacherUsName.Text="";
          TxtTeacherPass.Text="";
          DropDownListTeacherDesignation.ClearSelection();
          DropDownList1.ClearSelection();
          TextBoxTacherContact.Text="";
          TextBoxTeacherEmail.Text="";
          TxtTeacherConPass.Text = "";

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.BusinessLayer.Business;

namespace LibraryManagement.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        LmBusiness AdminLogInBusiness = new LmBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUserName"] != null)
            {
                Response.Redirect("AdminDashboard.aspx");
            }

            AdminMaster admns = (AdminMaster)Page.Master; 
                admns.FindControl("ControledItem").Visible = false;
            
        }

        protected void BtnAdminSubmit_Click(object sender, EventArgs e)
        {
            LmAdminLoginEntity AdminLogin = new LmAdminLoginEntity
            {
                AdminUserName = txtAdminUsrname.Text,
                AdminPassword = txtAdminPass.Text
            };
            int result = AdminLogInBusiness.AdminLoginMethod(AdminLogin);

            if (result == 1)
            {
                Session["AdminUserName"] = AdminLogin.AdminUserName;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {

                Response.Write("User Name & Password Does not Match");
            }
        }
    }
}
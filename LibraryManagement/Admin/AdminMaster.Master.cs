using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace LibraryManagement.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["AdminUserName"]==null)
            {
                Admin.Visible = false;
            }
            else
            {
                Admin.Visible = true;
                //string Admi = Session["AdminUserName"].ToString();
            }
            
        }

        public Label AdminUserName
        {
            get
            {
                return this.LblAdminUserName;
            }
        }

        protected void Admin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.Remove("AdminUserName");
            Session["AdminUserName"] = null;
            Response.Redirect("AdminLogin.aspx");
        }
    }
}
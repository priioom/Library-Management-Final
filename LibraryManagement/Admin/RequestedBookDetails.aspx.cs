using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LibraryManagement.Admin
{
    public partial class ReservedBook : System.Web.UI.Page
    {
        //static string ObjData = "Data Source=DESKTOP-441NA8M\\SQLExpress;Initial Catalog = Db_Library_Management_System; Trusted_Connection=True";

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

            
            int id =Convert.ToInt32( Request.QueryString["BorrowId"]);
      
        }
   
    }
}
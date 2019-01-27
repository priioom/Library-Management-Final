using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null && Session["TUser"] == null)
            {

                Response.Redirect("SignIn.aspx");
            }
            if (Session["User"] != null)
            {
                ((SiteUser)Master).LabelonMaster.Text = Session["User"].ToString();
            }
            else if (Session["TUser"] != null)
            {
                ((SiteUser)Master).LabelonMaster.Text = Session["TUser"].ToString();

            }
        }
    }
}
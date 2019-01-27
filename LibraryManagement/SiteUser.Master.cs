using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LibraryManagement
{
    public partial class SiteUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"]!=null|| Session["TUser"]!=null)
            {
                BtnLogout.Visible = true;
                Register.Visible = false;
               LabelForIncreamentedCart.Visible = true;
                if (Session["increament"] != null)
                {
                    LabelForIncreamentedCart.Text = Session["increament"].ToString();
                }
            }
          
            else
            {
                BtnLogout.Visible = false;
                LabelForIncreamentedCart.Visible = false;
            }
            if(Session["TUser"] != null)
            {
                AAddLecture.Visible = true;
            }
            else
            {
                AAddLecture.Visible=false;
            }
            
        }
        public Label LabelonMaster
        {
            get
            {
                return this.UserName;
            }
        }
   
        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.Remove("User");
            Session["User"] = null;
            Response.Redirect("SignIn.aspx");
        }
        public Label LabelForIncreamentedCart
        {
            get
            {
                return this.CartItem;
            }
        }
      
    }
}
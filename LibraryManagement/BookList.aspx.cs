using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Asp.LibraryManagement.EntityLayer.Entity;
using System.Configuration;

namespace LibraryManagement
{
    public partial class BookList : System.Web.UI.Page
    {
        static string ObjData = ConfigurationManager.ConnectionStrings["Db_Library_Management_SystemConnectionString"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = 0;
            //LmCart CartInc = new LmCart();
            //CartInc.CartIncreament = Session["increament"].ToString();
            //Session["increament"] = CartInc.CartIncreament + id.ToString();
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
            if (Session["increament"] != null) {
            ((SiteUser)Master).LabelForIncreamentedCart.Text = Session["increament"].ToString();
            }
            //sama.Visible = false;
          
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ListView1.Visible = false;
            Pager.Visible = false;
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(ObjData);
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("Sp_Search_Book", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            if(txtSearchMaster.Text.Trim()!= "")
            {
                SqlParameter ParamSearch = new SqlParameter("@SBookName", txtSearchMaster.Text);
                cmd.Parameters.Add(ParamSearch);
                
            }
            connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            //DataTable dt = new DataTable();
            //dt.Load(rdr);
            //if (dt.Rows.Count == 0)
            //{
            //    sama.Visible = true;
            //    sama.Text = "No Item Found";
            //}
            ListView2.DataSource = rdr;
            ListView2.DataBind();
            connection.Close();

          
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            LmCartEntity CartEntity = new LmCartEntity();
        }

     

    }
}
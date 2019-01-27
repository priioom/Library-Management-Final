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
    public partial class OnlineReservation : System.Web.UI.Page
    {
        static string ObjData = ConfigurationManager.ConnectionStrings["Db_Library_Management_SystemConnectionString"].ConnectionString;

        int d = 0;
        string sDate = DateTime.Today.ToString("dd/MM/yyyy");
        DateTime Rdate = DateTime.Today;
        protected void Page_Load(object sender, EventArgs e)
        {

           
            Rdate = Rdate.AddDays(7);
            ReturnDateSpan.InnerText  = Rdate.ToString("dd/MM/yyyy");
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
            //if (Session["increament"] == null) {
            //    Confirmed.Visible = false;
            //}
            if (!IsPostBack)
            {
                string id = Request.QueryString["BookName"];
                Session["id"] = id;


                GetData(id);
            }



            Confirmed.Visible = false;
        }

       


        public void GetData(string id)
        {

            NotConfirmed.Visible = false;
            if (Session["Cart"] != null)
            {

                DataTable dt = (DataTable)Session["Cart"];
                var CheckBook = dt.AsEnumerable().Where(r => r.Field<string>("BookName") == id);
                if (CheckBook.Count() == 0)
                {
                    SqlConnection connection = new SqlConnection(ObjData);
                    SqlCommand cmd = new SqlCommand();
                    cmd = new SqlCommand("Sp_Search_Book", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    SqlParameter ParamSearch = new SqlParameter("@SBookName", id);
                    cmd.Parameters.Add(ParamSearch);

                    connection.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    dt.Load(rdr);

                    InsertReservedBook(dt);
                    connection.Close();
                    Session["Cart"] = dt;
                    CartIncreament();
                }
                else
                {
                    InsertReservedBook(dt);
                    Session["Cart"] = dt;
                    ShowCart();
                }
            }
            else
            {
                DataTable dt = new DataTable();
                SqlConnection connection = new SqlConnection(ObjData);
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Sp_Search_Book", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                SqlParameter ParamSearch = new SqlParameter("@SBookName", id);
                cmd.Parameters.Add(ParamSearch);

                connection.Open();
             
                SqlDataReader rdr = cmd.ExecuteReader();
                dt.Load(rdr);

                InsertReservedBook(dt);
                connection.Close();
                
                CartIncreament();
                Session["Cart"] = dt;



            }

        }

        private void CartIncreament()
        {

            if (Session["Cart"] != null && Session["id"] == null && Session["increament"] == null)
            {
                Session["increament"] = d.ToString();
                ShowCart();
            }
            else if (Session["Cart"] != null && Session["id"] != null)
            {
                Session["increament"] = (Convert.ToInt32(Session["increament"]) + 1).ToString();
                ShowCart();
            }
            else if (Session["increament"] != null && Session["Cart"] != null && Session["id"] == null)
            {
                Session["increament"] = Session["increament"];
                ShowCart();
            }
            else if ((Session["increament"] != null || Session["increament"] == null) && (Session["Cart"] != null || Session["Cart"] == null) && Session["id"] != null)
            {
                Session["increament"] = (Convert.ToInt32(Session["increament"]) + 1).ToString();
                ShowCart();
            }
            else
            {
                Session["increament"] = d.ToString();
                ShowCart();
            }

        }


        private void ShowCart()
        {
            ((SiteUser)Master).LabelForIncreamentedCart.Text = Session["increament"].ToString();

        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            string BookName1 = (((Button)sender).CommandArgument).ToString();
            if (Session["Cart"] != null)
            {
                DataTable dt = (DataTable)Session["Cart"];
                DataRow dr = dt.Select("BookName= '" + BookName1 + "'").FirstOrDefault();

                if (dr != null)
                {
                    dt.Rows.Remove(dr);
                    Session["Cart"] = dt;

                    CartDecreament();

                }
                if (dt.Rows.Count == 0)
                {
                    Button1.Visible = false;
                    NotConfirmed.Visible = true;
                }
                InsertReservedBook(dt);
            }


        }

        private void CartDecreament()
        {
            Session["increament"] = (Convert.ToInt32(Session["increament"]) - 1).ToString();
            ShowCart();
        }

        private DataTable InsertReservedBook(DataTable dt)
        {
            ListView1.DataSource = dt;
            ListView1.DataBind();
            return dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie ReservedCookie = new HttpCookie("borrow");
            Confirmed.Visible = true;
            ListView1.Visible = false;
            Button1.Visible = false;
            Session["increament"] = null;
            Session["id"] = null;
          

            if (Session["TUser"] != null)
            {

                SqlParameter[] ParamsReserve = new SqlParameter[4];
                ParamsReserve[0] = new SqlParameter("@Sname", SqlDbType.VarChar)
                {
                    Value = "null"
                };
                ParamsReserve[1] = new SqlParameter("@Tname", SqlDbType.VarChar)
                {
                    Value = Session["TUser"].ToString()
                };
                ParamsReserve[2] = new SqlParameter("@BorrowDate", SqlDbType.VarChar)
                {
                    Value = sDate
                };
                ParamsReserve[3] = new SqlParameter("@ReturnDate", SqlDbType.VarChar)
                {
                    Value = Rdate.ToString("dd/MM/yyyy")
                };

                SqlConnection connect = new SqlConnection(ObjData);
                SqlCommand cmnd = new SqlCommand();
                cmnd = new SqlCommand("Sp_tbl_ReserveInsert", connect)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmnd.Parameters.AddRange(ParamsReserve);
                connect.Open();
                cmnd.ExecuteNonQuery();
                connect.Close();

                SqlCommand com = new SqlCommand("SELECT top(1) BorrowId FROM Borrow order by BorrowId Desc", connect);
                connect.Open();
                int s = Convert.ToInt32(com.ExecuteScalar());
                ReservedCookie.Values["borrow"] = s.ToString();
                //Session["borrow"] = s;
                connect.Close();

                SqlCommand cmd = new SqlCommand();

                DataTable dat = new DataTable();
                dat = (DataTable)Session["Cart"];
                for (int i = 0; i < dat.Rows.Count; i++)
                {

                    SqlParameter[] ParamReserve = new SqlParameter[5];
                    ParamReserve[0] = new SqlParameter("@Student_id", SqlDbType.VarChar)
                    {
                        Value = "Null"
                    };
                    ParamReserve[1] = new SqlParameter("@Teacher_id", SqlDbType.VarChar)
                    {
                        Value = Session["TUser"].ToString()
                    };
                    ParamReserve[2] = new SqlParameter("@BookName", SqlDbType.VarChar)
                    {
                        Value = dat.Rows[i]["BookName"]
                    };
                    ParamReserve[3] = new SqlParameter("@BookId", SqlDbType.Int)
                    {
                        Value = dat.Rows[i]["Code"]
                    };
                    ParamReserve[4] = new SqlParameter("@RBorrow", SqlDbType.Int)
                    {
                        Value = s
                    };

                    SqlConnection con = new SqlConnection(ObjData);
                    //SqlCommand cont = new SqlCommand();
                    cmd = new SqlCommand("Sp_tbl_borrow_Insert", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddRange(ParamReserve);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

            }

            if (Session["User"] != null)
            {
                //string sDate = DateTime.Today.ToString("dd/MM/yyyy");
                //DateTime Rdate = DateTime.Today;
                //Rdate = Rdate.AddDays(7);
               

                SqlParameter[] ParamsReserve = new SqlParameter[4];
                ParamsReserve[0] = new SqlParameter("@Sname", SqlDbType.VarChar)
                {
                    Value = Session["User"].ToString()
                };
                ParamsReserve[1] = new SqlParameter("@Tname", SqlDbType.VarChar)
                {
                    Value = "null"
                };
                ParamsReserve[2] = new SqlParameter("@BorrowDate", SqlDbType.VarChar)
                {
                    Value = sDate
                };
                ParamsReserve[3] = new SqlParameter("@ReturnDate", SqlDbType.VarChar)
                {
                    Value = Rdate.ToString("dd/MM/yyyy")
                };

                SqlConnection connect = new SqlConnection(ObjData);
                SqlCommand cmnd = new SqlCommand();
                cmnd = new SqlCommand("Sp_tbl_ReserveInsert", connect)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmnd.Parameters.AddRange(ParamsReserve);
                connect.Open();
                cmnd.ExecuteNonQuery();
                connect.Close();

                SqlCommand com = new SqlCommand("SELECT top(1) BorrowId FROM Borrow order by BorrowId Desc", connect);
                connect.Open();
                int s = Convert.ToInt32(com.ExecuteScalar());
                //Session["borrow"] = s;
                ReservedCookie.Values["borrow"] = s.ToString();
                connect.Close();

                SqlCommand cmd = new SqlCommand();

                DataTable dat = new DataTable();
                dat = (DataTable)Session["Cart"];
                for (int i = 0; i < dat.Rows.Count; i++)
                {

                    SqlParameter[] ParamReserve = new SqlParameter[5];
                    ParamReserve[0] = new SqlParameter("@Student_id", SqlDbType.VarChar)
                    {
                        Value = Session["User"].ToString()
                    };
                    ParamReserve[1] = new SqlParameter("@Teacher_id", SqlDbType.VarChar)
                    {
                        Value = "Null"
                    };
                    ParamReserve[2] = new SqlParameter("@BookName", SqlDbType.VarChar)
                    {
                        Value = dat.Rows[i]["BookName"]
                    };
                    ParamReserve[3] = new SqlParameter("@BookId", SqlDbType.Int)
                    {
                        Value = dat.Rows[i]["Code"]
                    };
                    ParamReserve[4] = new SqlParameter("@RBorrow", SqlDbType.Int)
                    {
                        Value = s
                    };

                    SqlConnection con = new SqlConnection(ObjData);
                    //SqlCommand cont = new SqlCommand();
                    cmd = new SqlCommand("Sp_tbl_borrow_Insert", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddRange(ParamReserve);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                Session["Cart"] = null;
            }
        }

    }   
    
}
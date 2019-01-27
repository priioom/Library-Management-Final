using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.LibraryManagement.BusinessLayer.Business;
using Asp.LibraryManagement.EntityLayer.Entity;

namespace LibraryManagement
{
    public partial class AddLecture : System.Web.UI.Page
    {
        LmBusiness Lecturebusiness = new LmBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            LmBusiness Lecturebusiness = new LmBusiness();

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
            if (Session["increament"] != null)
            {
                ((SiteUser)Master).LabelForIncreamentedCart.Text = Session["increament"].ToString();
            }
        }

        protected void ButtonLectureSubmit_Click(object sender, EventArgs e)
        {
            int result;
            LmLecture lectureentity = new LmLecture();
            lectureentity.LectureHeader = TextBoxLectureHeader.Text;
            lectureentity.Lecture = TextBoxLecture.Text;
            result = Lecturebusiness.AddLecture(lectureentity);
            if (result == 1)
            {
                Response.Write("Your REsponse Saved");
                clear();
            }
            else
            {
                Response.Write("Some error occured");
                clear();
            }
        }

        private void clear()
        {
            TextBoxLectureHeader.Text="";
            TextBoxLecture.Text="";
        }
    }
}
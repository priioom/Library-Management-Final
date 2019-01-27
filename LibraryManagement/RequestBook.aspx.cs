using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.BusinessLayer.Business;

namespace LibraryManagement
{
    public partial class RequestBook : System.Web.UI.Page
    {
        LmBusiness RequestedBookBusiness = new LmBusiness();
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
            LabelSuggestion.Visible = false;
        }

        protected void ButtonRequestBookSubmit_Click(object sender, EventArgs e)
        {
           LmRequestABookEntity RequestABookEntity = new LmRequestABookEntity();
            RequestABookEntity.RequestedBookName = TxtBookName.Text;
            RequestABookEntity.RequestedBookAuthorName = TextBoxBookAuthor.Text;
            RequestABookEntity.RequestedPublicationName = TxtBookPublication.Text;
            RequestABookEntity.RequestedBookCategory = DropDownListBookSubject.SelectedValue.ToString();

            int result = RequestedBookBusiness.RequestABookData(RequestABookEntity);
            if(result == 1)
            {
                Clear();
                LabelSuggestion.Visible = true;
                TxtBookName.Visible = false;
                TxtBookPublication.Visible = false;
                TextBoxBookAuthor.Visible = false;
                DropDownListBookSubject.Visible = false;
                LabelBookAuthor.Visible = false;
                LabelBookPublication.Visible = false;
                LabelBookSubject.Visible = false;
                LblBookName.Visible = false;
                ButtonRequestBookSubmit.Visible = false;
                Header.Visible = false;
            }
            else
            {
                Clear();
            }
        }

        private void Clear()
        {

            TxtBookName.Text = " " ;
            TxtBookPublication.Text = " ";
            TextBoxBookAuthor.Text = " ";
            DropDownListBookSubject.ClearSelection();

        }
    }
}
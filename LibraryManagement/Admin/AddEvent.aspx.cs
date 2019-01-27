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
    public partial class AddEvent : System.Web.UI.Page
    {
        LmBusiness AddEventBusiness = new LmBusiness();
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
            if (!IsPostBack)
            {
                labelMsg.Visible = false;
            }
        }

        protected void ButtonEventSubmit_Click(object sender, EventArgs e)
        {
            LmAdminEventInsertEntity AddEventEntity = new LmAdminEventInsertEntity
            {
                EventName = TxtEventName.Text,
                EventDescription = TextBoxEventDescription.Text,
                EventStartDate = TxtEventStartDate.Text,
                EventEndDate = TxtEventEndDate.Text,
                EventStartTime = TextBoxEventTime.Text,
                EManagerName = TextBoxEventManagerName.Text,
                EManagerContact = TextBoxEventManagerContact.Text,
                EManagerEmail = TextBoxEventManagerEmail.Text,
                EventVenue = TextBoxEventVeneue.Text
            };

            int result = AddEventBusiness.InsertEventInfo(AddEventEntity);
            if(result==1)
            {
                labelMsg.Visible = true;
                labelMsg.Text = "Event inserted Successfully.";
                Response.Write(labelMsg.Text);
                Clear();
            }
            else
            {
                labelMsg.Visible = true;
                labelMsg.Text = "Internal Error Occur.";
                Response.Write(labelMsg.Text);
                Clear();
            }
        }

        private void Clear()
        {
            TxtEventName.Text = "";
            TextBoxEventDescription.Text = "";
            TxtEventStartDate.Text = "";
            TxtEventEndDate.Text = "";
            TextBoxEventTime.Text = "";
            TextBoxEventManagerName.Text = "";
            TextBoxEventManagerContact.Text = "";
            TextBoxEventManagerEmail.Text = "";
            TextBoxEventVeneue.Text = "";
        }
    }
}
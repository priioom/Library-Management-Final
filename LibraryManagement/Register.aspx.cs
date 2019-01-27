using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.BusinessLayer.Business;

namespace LibraryManagement
{
    public partial class Register : System.Web.UI.Page
    {
        string dropbranch = "";
        string dropsection = "";
        string dropsemester = "";
        string dropAYear = "";
        DataTable dt = new DataTable();
        LmBusiness BusinessObject = new LmBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null || Session["TUser"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void BtnRegSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
#pragma warning disable CS0618 // Type or member is obsolete
            string Hashedpass = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtSPass.Text,"SHA1" );
#pragma warning restore CS0618 // Type or member is obsolete

            LmEntity entityObj = new LmEntity
            {

                RegNo = TxtRegno.Text,
                Name = TxtSName.Text,
                UserName = TxtSUserNAme.Text,
                Pass = Hashedpass,
                Branch = dropbranch,
                Section = dropsection,
                Semester = Convert.ToInt32(dropsemester),
                Gender = RDBSGndr.Text,
                YearOfAdmission = Convert.ToInt32(dropAYear),
                Email = txtSEmail.Text,
                ContactNumber =txtScontact.Text
            };
                result = BusinessObject.Businessinsertion(entityObj);
                if (result == 1)
                {
                Response.Redirect("SignIn.aspx");

                }
                else
                {
                    Response.Write("Error Occured When Registering.");
                    Clear();
                }
           
      
        }
        private void Clear()
        {
          
            TxtRegno.Text = "";
            TxtSName.Text = "";
            TxtSUserNAme.Text = "";
            TxtSPass.Text = "";
            TxtSConPass.Text = "";
            DropDownListBranch.ClearSelection();
            DropDownListSection.ClearSelection();
            DropDownListSemester.ClearSelection();
            RDBSGndr.ClearSelection();
            DropDownYOfAdmission.ClearSelection();
            txtSEmail.Text = "";
            txtScontact.Text = "";
            CheckboxAgree.ClearSelection();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (DropDownListBranch.SelectedValue.ToString() == "Select A Year")
            {
                Response.Redirect("Register.aspx");
                Clear();
                Response.Write("Select Your Admission Year.");
            }
            else
            {
                dropbranch = DropDownListBranch.SelectedValue.ToString();
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DropDownListSection.SelectedValue.ToString() == "Select Your Section")
            {
                Response.Redirect("Register.aspx");
                Clear();
                Response.Write("Select Your Section.");
            }
           else
            {
                dropsection = DropDownListSection.SelectedValue.ToString();
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DropDownListSemester.SelectedValue.ToString() == "Select Your Semester")
            {
                Response.Redirect("Register.aspx");
                Clear();
                Response.Write("Select Your Semester.");  
            }
            else
            {
                dropsemester = DropDownListSemester.SelectedValue.ToString();
            }

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {


            if (DropDownYOfAdmission.SelectedValue.ToString() == "Select A Year")
            {
                Response.Redirect("Register.aspx");
                Clear();
                Response.Write("Select Your Admission Year.");            
            }
            else
            {
                dropAYear = DropDownYOfAdmission.SelectedValue.ToString();
            }
        }
    }
    

}
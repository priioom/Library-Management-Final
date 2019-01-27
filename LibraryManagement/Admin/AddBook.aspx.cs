using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.LibraryManagement.EntityLayer.Entity;
using Asp.LibraryManagement.BusinessLayer.Business;
using System.IO;

namespace LibraryManagement.Admin
{
    public partial class AddBook : System.Web.UI.Page
    {
        LmBusiness AddBookBusiness = new LmBusiness();
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
        }

        protected void ButtonAddBookSubmit_Click(object sender, EventArgs e)
        {
           
            HttpPostedFile Postedfile = FileUploadBookCoverPhoto.PostedFile;
            string filename = Path.GetFileName(Postedfile.FileName);
            string fileExtension = Path.GetExtension(filename);
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpeg" ||
                fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif")
            {
                Stream stream = Postedfile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                LmAdminBookInsertEntity AddbookEntityObj = new LmAdminBookInsertEntity
                {
                    BookName = TxtBookName.Text,
                    AuthorName = TextBoxBookAuthor.Text,
                    Publication = TxtBookPublication.Text,
                    BookGenre = DropDownListBookSubject.SelectedValue,
                    NumberOfCopy = Convert.ToInt32(TextBoxNumberOfBook.Text),
                    BookCover = bytes
                };
                int result = AddBookBusiness.InsertBookInfo(AddbookEntityObj);
                if(result == 1)
                {
                    Response.Write("Inserted Successfully");
                    Clear();
                }
                else
                {
                    Response.Write("Some Error Occour While Inserting!!!!");
                    Clear();
                }
            }
            else
            {
                Response.Write("Your selected File is not a cover photo.");
                Clear();
            }
        }
        private void Clear()
        {
            TxtBookName.Text = "";
            TextBoxBookAuthor.Text = "";
            TxtBookPublication.Text = "";
            DropDownListBookSubject.ClearSelection();
            TextBoxNumberOfBook.Text = "";
            FileUploadBookCoverPhoto.Attributes.Clear();
        }
    }
}
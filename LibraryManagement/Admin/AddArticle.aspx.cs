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
    public partial class AddArticle : System.Web.UI.Page
    {
        LmBusiness InsertArticleBusiness = new LmBusiness();
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

        protected void ButtonArticleSubmit_Click(object sender, EventArgs e)
        {
            HttpPostedFile Postedfile = FileUploadArticlePicture.PostedFile;
            string filename = Path.GetFileName(Postedfile.FileName);
            string fileExtension = Path.GetExtension(filename);
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpeg" ||
                fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif")
            {
                Stream stream = Postedfile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
               LmAdminInsertArticleEntity InsertArticleEntity = new LmAdminInsertArticleEntity();
                InsertArticleEntity.ArticleName = TxtArticleHeader.Text;
                InsertArticleEntity.ArticleDescription = TextBoxArticleDescription.Text;
                InsertArticleEntity.ArticlePhoto = bytes;
                int result = InsertArticleBusiness.InsertArticleInfo(InsertArticleEntity);
                if (result == 1)
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
            FileUploadArticlePicture.Attributes.Clear();
            TxtArticleHeader.Text = "";
            TextBoxArticleDescription.Text = "";
        }
    }
}
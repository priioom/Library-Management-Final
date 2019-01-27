<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddArticle.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.AddArticle" %>

<asp:Content ContentPlaceHolderID="Main" runat="server" ID="Article">

    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Article</h2>
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />

            <!-- /. ROW  -->
            <div>
                <table align="center">
                    <tr>
                        <td>
                            <asp:Label ID="LblArticleHeader" runat="server" Text="Article Header : " ForeColor="#21476A" Width="120px"></asp:Label>
                            <br />
                              <br />
                        </td>
                        <td>
                             
                             
                            <asp:TextBox ID="TxtArticleHeader" runat="server" Height="22px" Width="200px"></asp:TextBox>
                            <br />
                              <br />
                        </td>

                        <td>
                             <br />
                              <br />
                            <asp:RequiredFieldValidator ID="RFVArticleHeader" runat="server" ErrorMessage="Enter The Name Of The Article" ControlToValidate="TxtArticleHeader" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                              <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelArticleDescription" runat="server" Text="Article Description : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxArticleDescription" runat="server" Height="133px" Width="200px" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorArticleDescription" runat="server" ErrorMessage="Enter The Article Description" ControlToValidate="TextBoxArticleDescription" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                            <br />
                            <asp:Label ID="LabelArticlePicture" runat="server" Text="Article Picture : " ForeColor="#21476A"></asp:Label>
                        </td>
                        <td>
                            <br />
                            <asp:FileUpload ID="FileUploadArticlePicture" runat="server" />
                        </td>
                        <td>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorArticlePicture" runat="server" ErrorMessage="Enter A Photo Of The Article" ControlToValidate="FileUploadArticlePicture" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>

                    <tr>
                        <td style="width: 167px"></td>
                        <td>
                            <br />
                            <asp:Button ID="ButtonArticleSubmit" runat="server" Text="Submit" ForeColor="#21476A" OnClick="ButtonArticleSubmit_Click" />

                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>

        <!-- /. PAGE INNER  -->
    </div>
</asp:Content>

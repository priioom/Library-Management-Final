<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.AddBook" %>

<asp:Content ID="AddBook" ContentPlaceHolderID="Main" Runat="Server">
          <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2 class="text-center"><span  style="border-bottom:2px solid #21476A;padding-bottom:10px;color:#21476A;">Add A Book</span></h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                
                 <!-- /. ROW  -->           
   
                  <!-- /. ROW  --> 
                <div class="col-md-12">
                <div class="col-md-3"></div>
                <div class="col-md-6 ">
                <table align="center" style="width: 636px; font-weight:bold;">
                    <tr>
                        <td style="width: 167px">
                            <asp:Label ID="LblBookName" runat="server" Text="Book Name: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                                  
                            <asp:TextBox ID="TxtBookName" runat="server" Height="22px" Width="220px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RFVBookName" runat="server" ErrorMessage="Enter The Name Of the Book" ControlToValidate="TxtBookName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                                   <br />
                            <asp:Label ID="LabelBookAuthor" runat="server" Text="Author Name: " ForeColor="#21476A" Width="148px"></asp:Label>
                        </td>
                        <td>
                                   <br />
                            <asp:TextBox ID="TextBoxBookAuthor" runat="server" Height="22px" Width="220px" CssClass="col-xs-offset-0"></asp:TextBox></td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookAuthor" runat="server" ErrorMessage="Enter The Author Name Of The Book" ControlToValidate="TextBoxBookAuthor" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                                   <br />
                            <asp:Label ID="LabelBookPublication" runat="server" Text="Publication: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                                   <br />
                            <asp:TextBox ID="TxtBookPublication" runat="server" Height="22px" Width="220px" CssClass="col-xs-offset-0"></asp:TextBox></td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookPublication" runat="server" ErrorMessage="Enter The Publication Name" ControlToValidate="TxtBookPublication" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                                   <br />
                            <asp:Label ID="LabelBookSubject" runat="server" Text="Subject OF The Book: " ForeColor="#21476A" Width="148px"></asp:Label>
                        </td>
                        <td>
                                   <br />
                            <asp:DropDownList ID="DropDownListBookSubject" runat="server" Height="22px" Width="220px">
                                <asp:ListItem>Select A Category</asp:ListItem>
                                <asp:ListItem>Mystrey</asp:ListItem>
                                <asp:ListItem>Science Fiction</asp:ListItem>
                                <asp:ListItem>Nobel</asp:ListItem>
                                <asp:ListItem>Story</asp:ListItem>
                                <asp:ListItem>Science</asp:ListItem>
                                <asp:ListItem>Arts</asp:ListItem>
                                <asp:ListItem>Commerce</asp:ListItem>
                                <asp:ListItem>Computer</asp:ListItem>
                                <asp:ListItem>Engineering</asp:ListItem>
                                <asp:ListItem>Medical</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookSubject" runat="server" ErrorMessage="Confirm Catagory" ControlToValidate="DropDownListBookSubject" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                                   <br />
                            <asp:Label ID="LabelNumberOfBook" runat="server" Text="Number Of Copies(Stock): " ForeColor="#21476A"></asp:Label>
                        </td>
                        <td>
                                   <br />
                            <asp:TextBox ID="TextBoxNumberOfBook" runat="server" Height="22px" Width="220px"></asp:TextBox></td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumberOfBook" runat="server" ErrorMessage="Enter The Copies Of Book In Stock" ControlToValidate="TextBoxNumberOfBook" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                                   <br />
                            <asp:Label ID="LabelBookCoverPhoto" runat="server" Text="Book Cover: " ForeColor="#21476A"></asp:Label>
                        </td>
                        <td>
                                   <br />
                                   <asp:FileUpload ID="FileUploadBookCoverPhoto" runat="server" />
                        </td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookCoverPhoto" runat="server" ErrorMessage="Enter The Cover Photo Of The Book" ControlToValidate="FileUploadBookCoverPhoto" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 167px">
                        </td>
                        <td>
                            <br />
                            <asp:Button ID="ButtonAddBookSubmit" runat="server" Text="Submit" ForeColor="#21476A" OnClick="ButtonAddBookSubmit_Click" />

                        </td>
                        <td></td>
                    </tr>
                </table>
                    </div>
                <div class="col-md-3"></div>
                    </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>

</asp:Content>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestBook.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.RequestBook" %>

<asp:Content ContentPlaceHolderID="Main" runat="server" ID="RequestBook">
    <style>
        .Suggestion{
            font-size:24px;
            color:green;
        }
        .font{
            font-weight:bold;
        }
        
    </style>

    <div class="col-md-12"  style="background-color:#CFCCCE !important">
                <div class="col-md-12 text-center"  id="Header" runat="server">
                    <br />
                     <br />
                     <br />
                    <h2> <span style="border-bottom:2px #21476A solid!important;padding-bottom:10px;color:#21476A;">Request A Book</span></h2>
 
                     <br />
                     <br />
                     <br />
                </div>

            <div  class="col-md-12 ">
                <div class="col-md-3"></div>
                   <div class="col-md-6">
                <table  align="center" style="padding:40px;margin-left:40px;" >
                                        <tr>
                        <td style="width: 142px">
                            <asp:Label ID="LblBookName" runat="server" Text="Book Name: " CssClass="font"  ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td style="width: 226px">
                                  
                            <asp:TextBox ID="TxtBookName" runat="server" Height="22px" Width="220px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RFVBookName" runat="server" ErrorMessage="Enter The Name Of the Book" ControlToValidate="TxtBookName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                                   <br />
                            <asp:Label ID="LabelBookAuthor" runat="server" Text="Author Name: " CssClass="font" ForeColor="#21476A" Width="148px"></asp:Label>
                        </td>
                        <td style="width: 226px">
                                   <br />
                                                        <asp:Label ID="LabelSuggestion" CssClass="Suggestion" runat="server" Text="Thank You For Your Suggestion!!!"></asp:Label>

                            <asp:TextBox ID="TextBoxBookAuthor" runat="server" Height="22px" Width="220px" CssClass="col-xs-offset-0"></asp:TextBox>
                        </td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookAuthor" runat="server" ErrorMessage="Enter The Author Name Of The Book" ControlToValidate="TextBoxBookAuthor" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                                   <br />
                            <asp:Label ID="LabelBookPublication" runat="server" Text="Publication: " CssClass="font" ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td style="width: 226px">
                                   <br />
                            <asp:TextBox ID="TxtBookPublication" runat="server" Height="22px" Width="220px" CssClass="col-xs-offset-0"></asp:TextBox></td>
                        <td>
                                   <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookPublication" runat="server" ErrorMessage="Enter The Publication Name" ControlToValidate="TxtBookPublication" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                                   <br />
                            <asp:Label ID="LabelBookSubject" runat="server" Text="Subject OF The Book: " CssClass="font" ForeColor="#21476A" Width="148px"></asp:Label>
                        </td>
                        <td style="width: 226px">
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
                        <td style="width: 142px">
                        </td>
                        <td style="width: 226px">
                            <br />
                            <asp:Button ID="ButtonRequestBookSubmit" runat="server" Text="Submit" ForeColor="#21476A" OnClick="ButtonRequestBookSubmit_Click" />
                                                     
                        </td>
                        <td>
                            </td>
                    </tr>
                    <tr>
                        <td>
                                <br />
                     <br />
                     <br />
                                                         <br />
                     <br />
                     <br />
                        </td>
                    </tr>
                </table>
                </div>
                   <div class="col-md-3"></div>

                </div>
    </div>
            <!-- /. ROW  -->
          

            <!-- /. ROW  -->


</asp:Content>

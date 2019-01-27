<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddLecture.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.AddLecture" %>

<asp:Content ContentPlaceHolderID="Main" runat="server" ID="AddLecture">
    <div class="container-fluid"  style="background-color:#CFCCCE">
        <div class="col-md-12">
            <h1 class=" text-center" style="color: #003366;">
                <br />
                <br />
                Add A Lecture
            </h1>
            <hr />
            <div class="col-md-12">
                <br />
                <br />
                <br />
                <table align="center">
                    <tr style="margin-bottom:10px;">
                        <td><asp:Label ID="Label1" runat="server" Text="Lecture Header: "></asp:Label>
                            <br />
                        </td>
                        <td> <asp:TextBox ID="TextBoxLectureHeader" runat="server" Height="23px" Width="198px"></asp:TextBox>    <br /></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLectureHeader"  ErrorMessage="Enter Lecture Header"></asp:RequiredFieldValidator>    <br /></td>
                    </tr>
                   
                    <tr>
                        <td><br /></td>
                    </tr>
                                        <tr>
                        <td><asp:Label ID="Label2" runat="server" Text="Lecture: "></asp:Label>    <br />&nbsp;</td>
                        <td> <asp:TextBox Height="282px" Width="200px" Rows="5"  ID="TextBoxLecture" runat="server"></asp:TextBox>    <br /></td>
                                             <td>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLecture" ErrorMessage="Enter Lecture Description"></asp:RequiredFieldValidator>    <br /></td>
                    </tr>
                     <tr>
                        <td><br /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="ButtonLectureSubmit" runat="server" Text="Submit" OnClick="ButtonLectureSubmit_Click" /></td>
                        <td></td>
                    </tr>
                     <tr>
                        <td><br /></td>
                    </tr>
                </table>
                      <br />
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>

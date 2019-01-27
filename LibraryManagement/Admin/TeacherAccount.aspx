<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherAccount.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.TeacherAccount" %>

<asp:Content ID="CreateAccount" ContentPlaceHolderID="Main" Runat="Server">
      <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2 class="text-center"><span style="border-bottom:2px solid #21476A;padding-bottom:10px" >Create Teacher Account</span></h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  --> 
                <div class="col-md-12">
                <div class="col-md-3"></div>
                <div class="col-md-6 ">
                <table align="center">
                    <tr>
                        <td>
                            <asp:Label ID="LblTeaacherName" runat="server" Text="Name" ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtTeaacherName" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RFVTeaacherName" runat="server" ErrorMessage="Enter Teacher Name" ControlToValidate="TxtTeaacherName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTeacherUsName" runat="server" Text="User Name:" ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxTeacherUsName" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeacherUsName" runat="server" ErrorMessage="Enter Your User Name" ControlToValidate="TextBoxTeacherUsName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTeacherPass" runat="server" Text="Password: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtTeacherPass" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeacherPass" runat="server" ErrorMessage="Enter A Password" ControlToValidate="TxtTeacherPass" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTeacherConfirmPassword" runat="server" Text="Confirm Password: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtTeacherConPass" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeacherConPass" runat="server" ErrorMessage="Confirm Your Password" ControlToValidate="TxtTeacherConPass" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelDesignation" runat="server" Text="Designation: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                          
                            <asp:DropDownList ID="DropDownListTeacherDesignation" runat="server" Height="22px" Width="200px">
                                <asp:ListItem>Select Your Designation</asp:ListItem>
                                <asp:ListItem>Junior Lecturer</asp:ListItem>
                                <asp:ListItem>Senior Lecturer</asp:ListItem>
                                <asp:ListItem>Assistant Professor</asp:ListItem>
                                <asp:ListItem>Professor</asp:ListItem>
                                <asp:ListItem>Departmental Head</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Designation" ControlToValidate="DropDownListTeacherDesignation" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTeacherBranch" runat="server" Text="Branch: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>    
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="200px">
                                <asp:ListItem>Select Your Branch</asp:ListItem>
                                <asp:ListItem>Barisal</asp:ListItem>
                                <asp:ListItem>Chittagong</asp:ListItem>
                                <asp:ListItem>Dhaka</asp:ListItem>
                                <asp:ListItem>Khulna</asp:ListItem>
                                <asp:ListItem>Mymensingh</asp:ListItem>
                                <asp:ListItem>Rajshahi</asp:ListItem>
                                <asp:ListItem>Rangpur</asp:ListItem>
                                <asp:ListItem>Shylet</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Branch" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTeacherContact" runat="server" Text="Contact Number: " ForeColor="#21476A"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxTacherContact" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Your Contact Number" ControlToValidate="TextBoxTacherContact" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTeacherEmail" runat="server" Text="Email: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxTeacherEmail" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Your Email Number" ControlToValidate="TextBoxTeacherEmail" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>

                            <asp:Button ID="ButtonTeacherSubmit" runat="server" Text="Submit" ForeColor="#21476A" OnClick="ButtonTeacherSubmit_Click" />

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
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteUser.Master" CodeBehind="Register.aspx.cs" Inherits="LibraryManagement.Register" %>

<asp:Content ID="LogIn"  ContentPlaceHolderID="Main" Runat="Server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
  
    <div class="container-fluid clear ">
        <div class="col-md-12 navcolor">
        <h2 class="text-center col-md-12" style="color: #003366;"><span style="border-bottom:1px #003366 solid;margin-bottom:40px;">Sign Up Here!!!</span></h2>      
            <div class="col-md-12">
            <div class="col-md-3">
                
                </div>
            <div class="col-md-6" style="left: 0px; top: 0px">
                    <table class="col-md-12" style="margin-top:20px;">
                <tr class="col-md-12">
                    <td  class="col-md-6" style="Max-width: 210px;">
                        <asp:Label ID="Label1" runat="server" Text="Registration Number:" style="Max-width:134px"></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:TextBox ID="TxtRegno" runat="server" height="22px" style="Max-width:268px" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVregno" runat="server" ControlToValidate="TxtRegno" ErrorMessage="Write Your Registration Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6"  style="Max-width: 210px;">
                        <asp:Label ID="Label2" runat="server" Text="Name:" style="margin-left: 0px;Max-width:123px" ></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        
                         <asp:TextBox ID="TxtSName" runat="server" height="22px" style="Max-width:268px" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVSName" runat="server" ControlToValidate="TxtSName" ErrorMessage="Write Your Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6"  style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6"  style=" Max-width: 210px;">
                        <asp:Label ID="Label3" runat="server" Text="User Name:"></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:TextBox ID="TxtSUserNAme" runat="server" height="22px" style="Max-width:268px" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVSUserName" runat="server" ControlToValidate="TxtSUserNAme" ErrorMessage="Write Your Username" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        &nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        Password:</td>
                    <td class="col-md-6" >
                      <asp:TextBox ID="TxtSPass" runat="server" height="22px" style="Max-width:268px" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtSPass" ErrorMessage="Write A Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">
                        <asp:Label ID="Label11" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:TextBox ID="TxtSConPass" runat="server" height="22px" style="Max-width:268px"  Width="218px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtSPass" ControlToValidate="TxtSConPass" ErrorMessage="Password Does Not Match" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6"  style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label4" runat="server" Text="Branch :" style="Max-width:73px"></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:DropDownList ID="DropDownListBranch" runat="server" Height="23px" Width="218px">
                            <asp:ListItem>Select Your Branch</asp:ListItem>
                            <asp:ListItem>Barisal</asp:ListItem>
                            <asp:ListItem>Chittagang</asp:ListItem>
                            <asp:ListItem>Dhaka</asp:ListItem>
                            <asp:ListItem>Khulna</asp:ListItem>
                            <asp:ListItem>Mymensingh</asp:ListItem>
                            <asp:ListItem>Rajshahi</asp:ListItem>
                            <asp:ListItem>Rangpur</asp:ListItem>
                            <asp:ListItem>Shylet</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVBranch" runat="server" ControlToValidate="DropDownListBranch" ErrorMessage="Select Your Branch" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="DropDownListSection" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label5" runat="server" Text="Section:" style="Max-width:73px" ></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:DropDownList ID="DropDownListSection" runat="server" Height="23px" Width="218px">
                            <asp:ListItem>Select Your Section</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                            <asp:ListItem>H</asp:ListItem>
                            <asp:ListItem>I</asp:ListItem>
                            <asp:ListItem>J</asp:ListItem>
                            <asp:ListItem>K</asp:ListItem>
                            <asp:ListItem>L</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                            <asp:ListItem>O</asp:ListItem>
                            <asp:ListItem>P</asp:ListItem>
                            <asp:ListItem>Q</asp:ListItem>
                            <asp:ListItem>R</asp:ListItem>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>U</asp:ListItem>
                            <asp:ListItem>V</asp:ListItem>
                            <asp:ListItem>W</asp:ListItem>
                            <asp:ListItem>X</asp:ListItem>
                            <asp:ListItem>Y</asp:ListItem>
                            <asp:ListItem>Z</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVSSection" runat="server" ControlToValidate="DropDownListSection" ErrorMessage="Select Your Section" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="DropDownListSemester" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" style="left: -30px; top: -193px" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label6" runat="server" Text="Semester" style="Max-width:73px" ></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:DropDownList ID="DropDownListSemester" runat="server" Height="23px" Width="218px">
                            <asp:ListItem>Select Your Semester</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListSemester" ErrorMessage="Select Your Semester" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DropDownYOfAdmission" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label7" runat="server" Text="Gender:" style="Max-width:73px" ></asp:Label>
                    </td>
                    <td class="col-md-6" style="left: 365px; top: 368px; width: 199px"  >
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RDBSGndr" ErrorMessage="Select Your Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                        
                        <asp:RadioButtonList ID="RDBSGndr" runat="server" style="padding-left:50px; margin-left: 43px; Max-width:268px" height="22px"  Width="107px" >
                            <asp:ListItem>&nbsp;Male</asp:ListItem>
                            <asp:ListItem>&nbsp;Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label8" runat="server" Text="Year of Admission:" style="Max-width:125px" ></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:DropDownList ID="DropDownYOfAdmission" runat="server" Height="23px" Width="218px" required="Select Admission Year">
                            <asp:ListItem>Select A Year</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownYOfAdmission" ErrorMessage="Select Year Of Admission" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DropDownListBranch" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" style="left: -30px; top: -193px" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label9" runat="server" Text="Email:" style="Max-width:73px" ></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:TextBox ID="txtSEmail" runat="server" height="22px" style="Max-width:268px" width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtSEmail" ErrorMessage="Write Your Email Address" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style=" Max-width: 210px;">
                        <asp:Label ID="Label10" runat="server" Text="Contact Number:"></asp:Label>
                    </td>
                    <td class="col-md-6" >
                        <asp:TextBox ID="txtScontact" runat="server" Height="22px" style="margin-left: 0; Max-width:268px" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtScontact" ErrorMessage="Write Your Contact Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" >
                        &nbsp;</td>
                </tr>
                <tr class="col-md-12" >
                    <td class="col-md-6" style="Max-width: 210px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="TxtSConPass" ErrorMessage="Confirm Your Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CheckBoxList ID="CheckboxAgree" runat="server"   Height="29px" style="margin-left: 0px; Max-width:310px" Width="316px">
                            <asp:ListItem>&nbsp;Agree with our terms &amp; conditions</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="col-md-6" style="left: 0px; top: 0px" >
                        &nbsp;</td>
                </tr>
                      
                <tr class="col-md-12" >
                     
                    <td class="col-md-6" style="Max-width: 210px">&nbsp;</td>
                    <td class="col-md-6" style="left: 354px; top: 595px; width: 191px" >
                          <br />
                        <asp:Button ID="BtnRegSubmit" runat="server" Text="Submit" Height="37px" style="margin-left: 0; margin-bottom: 3px" OnClick="BtnRegSubmit_Click"  />
                    </td>
                </tr>
                  <tr class="col-md-12" >
                    <td  class="col-md-6" style="Max-width: 210px">
                        <br />
                         <br />
                        Back To <a href="Home.aspx">Home</a>
                    <br />
                         <br />    
                    </td>
                    <td class="col-md-6" style="left: -30px; top: -151px" >
                        <br />
                         <br />
                      
                      
                        Have an account ? <a href="SignIn.aspx">Sign In Here</a>
                         <br />
                         <br />
                    </td>
                </tr>
               
                </table>
            </div>
            <div class="col-md-3">
                           <asp:ValidationSummary class="text-right" ID="ValidationSummary1" runat="server" ForeColor="Red" />

            </div>
        </div>
      </div>
    </div>
</asp:Content>


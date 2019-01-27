<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.SignIn" %>

<asp:Content ID="LogIn" ContentPlaceHolderID="Main" Runat="Server">
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script> 
  
    <br/>
    <br />
      <br/>
  <br/>
    <div class="container-fluid">
        <div class="col-md-3" style="text-align: center; ">
           
        </div>
       <div class="col-md-6 navcolor">

               <table class="text-center" style="width: 100%">
                   <thead>
                        <tr>
                   <td><br /></td>
                   <td><br /></td>
               </tr>
                        <tr>
                   <td><br /></td>
                   <td><br /></td>
               </tr>
                <tr>
                    <td style="font-size: x-large">Sign in Here
                        <hr />
                    </td>
                </tr>
                       </thead>
            </table>       

           <br />
           <table class="nav-justified" align="center">
               <tr>
                   <td class="text-right" style="width: 455px">
                       <asp:Label ID="lblUSName" runat="server" Text="Username : &nbsp;"></asp:Label>
                       
                   </td>
                   
                   <td class="text-left" style="width: 537px">
                       <asp:TextBox ID="SignTxtUSName" runat="server" Width="281px" Height="31px"></asp:TextBox>
                      
                   </td>
               </tr>
               <tr>
                   <td><br /></td>
                   <td><br /></td>
               </tr>
               <tr>
                    <td class="text-right" style="width: 455px">
                       <asp:Label ID="lblPass" runat="server" Text="Password : &nbsp;"></asp:Label>
                   </td>
                   <td class="text-left" style="width: 537px">
                       <asp:TextBox ID="SignTxtPass" runat="server" Width="281px" Height="31px" TextMode="Password"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td><br /></td>
                   <td><br /></td>
               </tr>
               <tr>
                   <td class="text-right" style="width: 455px">
                       <asp:Label ID="lblRole" runat="server" Text="Role : &nbsp;"></asp:Label>
                   </td>
                   <td style="width: 537px">
                       <asp:RadioButtonList ID="RdbRole" runat="server" style="z-index: 1; margin-left: 0px" Width="350px" Height="25px">
                           <asp:ListItem>&nbsp;Teacher</asp:ListItem>
                           <asp:ListItem>&nbsp;Student</asp:ListItem>
                       </asp:RadioButtonList>
                   </td>
                   <td class="text-center">&nbsp;</td>

               </tr>
                <tr>
                   <td><br /></td>
                   <td><br /></td>
               </tr>
               <tr>
                   <td class="text-center" style="width: 455px">&nbsp;</td>
                   <td class="text-left" style="width: 537px">
                       <asp:Button ID="BtnSignin" runat="server" Text="Sign In" Width="87px" OnClick="BtnSignin_Click" />
                   </td>
               </tr>
               <tr>
                   <td><br /></td>
               </tr>
               <tr>
                   <td></td>
                   <td>Don't Have Any Account ? Sign Up <a href="Register.aspx">Here.</a></td>
                   <td></td>
               </tr>
                <tr>
                   <td><br /></td>
                   <td><br /></td>
               </tr>
           </table>
           <br />

                     

</div>
<div class="col-md-3"></div>
        <br/>
        <br/>
    </div>
      <br/>
        <br/>
      <br/>
      <br/>
</asp:Content>


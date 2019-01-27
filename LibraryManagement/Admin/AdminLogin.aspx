<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.AdminLogin" %>

<asp:Content ID="AdminLogIn" ContentPlaceHolderID="Main" Runat="Server">
    <br/>
    <br/>
    <br/>
    <div class="col-md-4"></div>
   <div class="col-md-4"><h1 class="text-center" style="padding-bottom:20px;color:#21476A; border-bottom:1px #21476A solid"> Log In Here.</h1></div>
    <div class="col-md-4"></div>
    <hr />
    <div class="col-md-12">
    <table class="text-center" align="center" style="margin-bottom:150px">
        <tr>
            <td class="text-left" style="color:#21476A; font-weight:bold">
                  <br/>
                
                 
                            <asp:Label ID="lblAdminUsrname" runat="server" Text="Username: &nbsp;"></asp:Label>
                <br/>
    
   
            </td>
             <td class="text-left" >
                 <br/>
                
                 
            <asp:TextBox ID="txtAdminUsrname" runat="server" Height="22px" Width="172px"></asp:TextBox>
                          <br/>
    
             </td>
             <td >
                 <br/>
                 
                  
                          <br/>
    
             </td>
        </tr>
         <tr>
             <td class="text-left" style="color:#21476A; font-weight:bold">
                 <asp:Label ID="lblAdminPass" runat="server" Text="Password: &nbsp;"></asp:Label>
                          <br/>
    
            </td>
             <td class="text-left" >
                   <asp:TextBox ID="txtAdminPass" runat="server" Height="22px" Width="172px" TextMode="Password"></asp:TextBox>
                                 <br/>
    

             </td>
             <td >
                          <br/>
    
             </td>
        </tr>
           <tr>
             <td  >         <br/>
    <br/></td>
             <td class="text-left" style="color:#21476A; font-weight:bold">
                <asp:Button ID="BtnAdminSubmit" runat="server" Text="Log In" OnClick="BtnAdminSubmit_Click"  />           <br/>
    <br/>
             </td>
             <td><br/>
    <br/>
    <br/></td>

        </tr>

    </table>
    </div>
    <br/>
    <br/>
    <br/>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lecture.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.Leture" %>

<asp:Content ContentPlaceHolderID="Main" ID="Lectures" runat="server">
   <div class="container-fluid"  style="background-color:#CFCCCE">
    <div class=" container">
        <div class="col-md-12"> 
             <br />
                 <br />
            <h1 class="text-center" style="color: #003366;">
                Lectures
            </h1>
             <br />
            <hr />
            <div class="text-center ">
                 <br />
                 <br />
                 <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


                <ItemTemplate>
                   <h1 style="color: #003366;"><span style="">
                    <asp:Label ID="lectureheaderLabel" runat="server" Text='<%# Eval("lectureheader") %>' /></h1> 
                    <br />
                   
                    <p class="text-justify"><asp:Label ID="LectureLabel" runat="server" Text='<%# Eval("Lecture") %>' />
                    <br />
<br /></span></p>
                </ItemTemplate>

            </asp:ListView>
                </div>

            <br />
             <br />
             <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="SELECT * FROM [lecture]"></asp:SqlDataSource>
        </div>
    </div>
</div>
</asp:Content>
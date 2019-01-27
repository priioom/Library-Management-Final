<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher-info.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.teacher_info" %>

<asp:Content ID="TeacherInfo" ContentPlaceHolderID="Main" runat="server">

            <style>
       .grid td, .grid th {
            text-align: center;
            padding: 3px;
            font-size: 14px;
            height: 20px;
        }
          .grid th{
            background-color:cadetblue;
        }
          .event{
              margin-left:10px;
              margin-right:10px;
              padding:0px 110px 0px 110px;
          }
    </style>

            <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12 text-center">
                     <h2>Teacher Info</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->   
                <div class="col-md-12 text-center event" style="left: 0px; top: 0px;">
                    <asp:GridView ID="GridView1" runat="server" CssClass="grid" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Tid" DataSourceID="SqlDataSource1" ShowFooter="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Teacherusername" SortExpression="Teacherusername">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Teacherusername") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Teacherusername") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TeacherEmail" SortExpression="TeacherEmail">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TeacherEmail") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("TeacherEmail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation" SortExpression="Designation" >
                                <EditItemTemplate>
 <asp:DropDownList ID="DropDownListTeacherDesignation" runat="server" Height="22px" Width="200px" SelectedValue='<%# Bind("Designation") %>'>
                                <asp:ListItem>Select Your Designation</asp:ListItem>
                                <asp:ListItem>Junior Lecturer</asp:ListItem>
                                <asp:ListItem>Senior Lecturer</asp:ListItem>
                                <asp:ListItem>Assistant Professor</asp:ListItem>
                                <asp:ListItem>Professor</asp:ListItem>
                                <asp:ListItem>Departmental Head</asp:ListItem>
                            </asp:DropDownList>                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Branch" SortExpression="Branch">
                                <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="200px" SelectedValue='<%# Bind("Branch") %>'>
                                <asp:ListItem>Select Your Branch</asp:ListItem>
                                <asp:ListItem>Barisal</asp:ListItem>
                                <asp:ListItem>Chittagong</asp:ListItem>
                                <asp:ListItem>Dhaka</asp:ListItem>
                                <asp:ListItem>Khulna</asp:ListItem>
                                <asp:ListItem>Mymensingh</asp:ListItem>
                                <asp:ListItem>Rajshahi</asp:ListItem>
                                <asp:ListItem>Rangpur</asp:ListItem>
                                <asp:ListItem>Shylet</asp:ListItem>
                            </asp:DropDownList>                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contactno" SortExpression="Contactno">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Contactno") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Contactno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>


                    <br />


                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" DeleteCommand="DELETE FROM [tbl_Teacher] WHERE [Tid] = @Tid" InsertCommand="INSERT INTO [tbl_Teacher] ([Name], [Designation], [Branch], [Contactno], [Teacherusername], [TeacherPassword], [TeacherEmail]) VALUES (@Name, @Designation, @Branch, @Contactno, @Teacherusername, @TeacherPassword, @TeacherEmail)" SelectCommand="SELECT * FROM [tbl_Teacher]" UpdateCommand="UPDATE [tbl_Teacher] SET [Name] = @Name, [Designation] = @Designation, [Branch] = @Branch, [Contactno] = @Contactno, [Teacherusername] = @Teacherusername, [TeacherPassword] = @TeacherPassword, [TeacherEmail] = @TeacherEmail WHERE [Tid] = @Tid">
                        <DeleteParameters>
                            <asp:Parameter Name="Tid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Designation" Type="String" />
                            <asp:Parameter Name="Branch" Type="String" />
                            <asp:Parameter Name="Contactno" Type="String" />
                            <asp:Parameter Name="Teacherusername" Type="String" />
                            <asp:Parameter Name="TeacherPassword" Type="String" />
                            <asp:Parameter Name="TeacherEmail" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Designation" Type="String" />
                            <asp:Parameter Name="Branch" Type="String" />
                            <asp:Parameter Name="Contactno" Type="String" />
                            <asp:Parameter Name="Teacherusername" Type="String" />
                            <asp:Parameter Name="TeacherPassword" Type="String" />
                            <asp:Parameter Name="TeacherEmail" Type="String" />
                            <asp:Parameter Name="Tid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    
                        <hr />
                </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</asp:Content>

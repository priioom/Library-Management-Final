<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book-info.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.book_info" %>

<asp:Content ID="BookInfo" ContentPlaceHolderID="Main" runat="server">
            <style>
       .grid td, .grid th {
            text-align: center;
          
            font-size: 14px;
            height: 20px;
        }
          .grid th{
            background-color:cadetblue;
        }
          .book{
              margin-left:10px;
              margin-right:10px;
              padding:0px 110px 0px 110px;
          }
          .pad{
                padding: 3px;
          }
          .image{
              margin:0px;
              padding:0px;
          }
    </style>
            <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2 class="text-center">Book Information</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="text-center book">

                    <asp:GridView ID="GridView1" runat="server" CssClass="grid" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="SqlDataSource1" Height="134px" Width="236px" >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="pad" ShowEditButton="True" >
<ControlStyle CssClass="pad"></ControlStyle>
                            </asp:CommandField>
                            <asp:BoundField DataField="BookName" HeaderText="BookName" ControlStyle-CssClass="pad" SortExpression="BookName" >
<ControlStyle CssClass="pad"></ControlStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Author" HeaderText="Author" ControlStyle-CssClass="pad" SortExpression="Author" >
<ControlStyle CssClass="pad"></ControlStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Publication" ControlStyle-CssClass="pad" HeaderText="Publication" SortExpression="Publication" >
<ControlStyle CssClass="pad"></ControlStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Subject" SortExpression="Subject">
                                <EditItemTemplate>
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
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookSubject" runat="server" ErrorMessage="Confirm Catagory" ControlToValidate="DropDownListBookSubject" ForeColor="Red"></asp:RequiredFieldValidator></td>

                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle CssClass="pad" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="No_of_copies" HeaderText="No_of_copies" ControlStyle-CssClass="pad"  SortExpression="No_of_copies" >
<ControlStyle CssClass="pad"></ControlStyle>
                            </asp:BoundField>
                                 <asp:TemplateField HeaderText="CoverPhoto"  ControlStyle-Width="100px" ControlStyle-Height="100px">

                             <ItemTemplate>
                                 <asp:Image ID="Image1" CssClass="image" runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Cover"))%>' />
                </ItemTemplate>

<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" DeleteCommand="DELETE FROM [tbl_Book] WHERE [Code] = @Code" InsertCommand="INSERT INTO [tbl_Book] ([BookName], [Author], [Publication], [Subject], [No_of_copies], [Cover]) VALUES (@BookName, @Author, @Publication, @Subject, @No_of_copies, @Cover)" SelectCommand="SELECT * FROM [tbl_Book]" UpdateCommand="UPDATE [tbl_Book] SET [BookName] = @BookName, [Author] = @Author, [Publication] = @Publication, [Subject] = @Subject, [No_of_copies] = @No_of_copies WHERE [Code] = @Code">
                        <DeleteParameters>
                            <asp:Parameter Name="Code" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BookName" Type="String" />
                            <asp:Parameter Name="Author" Type="String" />
                            <asp:Parameter Name="Publication" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="No_of_copies" Type="Int32" />
                            <asp:Parameter Name="Cover" Type="Object" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BookName" Type="String" />
                            <asp:Parameter Name="Author" Type="String" />
                            <asp:Parameter Name="Publication" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="No_of_copies" Type="Int32" />
                            <asp:Parameter Name="Code" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>


</div>
                    <!-- /. ROW  -->
                    </div>
                
    </div>
             <!-- /. PAGE INNER  -->
            
</asp:Content>

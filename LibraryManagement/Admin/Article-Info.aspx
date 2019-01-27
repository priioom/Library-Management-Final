<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Article-Info.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.Article_Info" %>

<asp:Content ContentPlaceHolderID="Main" runat="server" ID="ArticleInfo">
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
                padding: 10px;
          }
          .width{
              width:100px;
          }
          .image{
              height:220px;width:180px;
              margin:0px;
              padding:0px;
          }
          .color{
              color:black !important;
          }
    </style>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <br />

                    <h2 class="text-center" style="color:#214761;">Article Information</h2>
                                        <br />
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />
            <div class="col-md-12">
                <div class="row">
                    <asp:GridView ID="GridView1" CssClass="grid" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="SqlDataSource1" ShowFooter="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="heading" HeaderText="Article Heading" SortExpression="heading" />
                            <asp:TemplateField HeaderText="Article Description"  SortExpression="A_Description">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="pad" ForeColor="Black" Text='<%# Bind("A_Description") %>' TextMode="MultiLine"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("A_Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Article Photo"  >

                                <ItemTemplate>
                                    <asp:Image  ID="Image1"  runat="server" CssClass="image" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("A_Picture"))%>' />
                                </ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" DeleteCommand="DELETE FROM [tbl_Article] WHERE [Code] = @Code" InsertCommand="INSERT INTO [tbl_Article] ([heading], [A_Description], [A_Picture]) VALUES (@heading, @A_Description, @A_Picture)" SelectCommand="SELECT [heading], [A_Description], [A_Picture], [Code] FROM [tbl_Article]" UpdateCommand="UPDATE [tbl_Article] SET [heading] = @heading, [A_Description] = @A_Description WHERE [Code] = @Code">
                        <DeleteParameters>
                            <asp:Parameter Name="Code" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="heading" Type="String" />
                            <asp:Parameter Name="A_Description" Type="String" />
                            <asp:Parameter Name="A_Picture" Type="Object" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="heading" Type="String" />
                            <asp:Parameter Name="A_Description" Type="String" />
                            <asp:Parameter Name="Code" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <!-- /. ROW  -->
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student-info.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.student_info" %>

<asp:Content ID="StudentInfo" ContentPlaceHolderID="Main" runat="Server">

        <style>
     .grid td, .grid th {
            text-align: center;
            padding: 2px;
            font-size: 14px;
            height: 20px;
        }
          .grid th{
            background-color:cadetblue;
        }
          .student{
              margin:0px;
              padding-left:9px;
          }
    </style>

    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Student Information</h2>
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />

            <!-- /. ROW  -->
            <div class="col-md-12 text-center student" style="left: 0px; top: 0px;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="grid" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Bookid" DataSourceID="SqlDataSource1"  Width="745px" Style="margin-top: 52px" GridLines="Vertical" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                            <HeaderStyle HorizontalAlign="Center"/>
                        </asp:CommandField>
                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" HorizontalAlign="Center" Text='<%# Bind("Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" HorizontalAlign="Center" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="90px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Registration" SortExpression="Reg_no">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" HorizontalAlign="Center" Text='<%# Bind("Reg_no") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" HorizontalAlign="Center" runat="server" Text='<%# Bind("Reg_no") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="80px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Username" SortExpression="UserName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" HorizontalAlign="Center" Text='<%# Bind("UserName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" HorizontalAlign="Center" Text='<%# Bind("UserName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle  HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                            <EditItemTemplate>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RDBSGndr" ErrorMessage="Select Your Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                        
                        <asp:RadioButtonList ID="RDBSGndr" runat="server" style="padding-left:50px; margin-left: 43px; Max-width:268px" Width="107px" SelectedValue='<%# Bind("gender") %>' >
                            <asp:ListItem>&nbsp;Male</asp:ListItem>
                            <asp:ListItem>&nbsp;Female</asp:ListItem>
                        </asp:RadioButtonList>                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" HorizontalAlign="Center" Text='<%# Bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Justify" Width="80px" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Branch" SortExpression="Branch" >
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownListBranch" runat="server"  Width="218px" SelectedValue='<%# Bind("Branch") %>'>
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
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" HorizontalAlign="Center" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="80px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Section" SortExpression="Section">
                            <EditItemTemplate>
                        <asp:DropDownList ID="DropDownListSection" runat="server"  Width="218px" SelectedValue='<%# Bind("Section") %>'>
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
                        <asp:RequiredFieldValidator ID="RFVSSection" runat="server" ControlToValidate="DropDownListSection" ErrorMessage="Select Your Section" ForeColor="Red">*</asp:RequiredFieldValidator>                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" HorizontalAlign="Center" Text='<%# Bind("Section") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="80px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Semester" SortExpression="semester">
                            <EditItemTemplate>
<asp:DropDownList ID="DropDownListSemester" runat="server"  Width="218px" SelectedValue='<%# Bind("semester") %>'>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListSemester" ErrorMessage="Select Your Semester" ForeColor="Red">*</asp:RequiredFieldValidator>                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" HorizontalAlign="Center" Text='<%# Bind("semester") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="80px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" HorizontalAlign="Center" Text='<%# Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" HorizontalAlign="Center" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="200px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact" SortExpression="contactNo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" HorizontalAlign="Center" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" HorizontalAlign="Center" Text='<%# Bind("contactNo") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="80px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Admission(Y)" SortExpression="Yearofadm">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" HorizontalAlign="Center" Text='<%# Bind("Yearofadm") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" HorizontalAlign="Center" Text='<%# Bind("Yearofadm") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="80px" HorizontalAlign="Justify" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" DeleteCommand="DELETE FROM [tbl_student] WHERE [Bookid] = @Bookid" InsertCommand="INSERT INTO [tbl_student] ([Reg_no], [Branch], [Section], [semester], [Yearofadm], [Name], [UserName], [gender], [email], [contactNo]) VALUES (@Reg_no, @Branch, @Section, @semester, @Yearofadm, @Name, @UserName, @gender, @email, @contactNo)" SelectCommand="SELECT * FROM [tbl_student]" UpdateCommand="UPDATE [tbl_student] SET [Reg_no] = @Reg_no, [Branch] = @Branch, [Section] = @Section, [semester] = @semester, [Yearofadm] = @Yearofadm, [Name] = @Name, [UserName] = @UserName, [gender] = @gender, [email] = @email, [contactNo] = @contactNo WHERE [Bookid] = @Bookid">
                    <DeleteParameters>
                        <asp:Parameter Name="Bookid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Reg_no" Type="String" />
                        <asp:Parameter Name="Branch" Type="String" />
                        <asp:Parameter Name="Section" Type="String" />
                        <asp:Parameter Name="semester" Type="Int32" />
                        <asp:Parameter Name="Yearofadm" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="contactNo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Reg_no" Type="String" />
                        <asp:Parameter Name="Branch" Type="String" />
                        <asp:Parameter Name="Section" Type="String" />
                        <asp:Parameter Name="semester" Type="Int32" />
                        <asp:Parameter Name="Yearofadm" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="contactNo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>

</asp:Content>

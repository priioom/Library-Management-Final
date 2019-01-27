<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="event-info.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.event_info" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="EventInfo" ContentPlaceHolderID="Main" runat="server">
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
    </style>

    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>Event Information</h2>
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />


            <!-- /. ROW  -->
            <div class="col-md-12">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:GridView ID="GridView1" runat="server" CssClass="grid" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" ShowFooter="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Event Name" SortExpression="name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Event Description" SortExpression="EventDescription">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EventDescription") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("EventDescription") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sart Date" SortExpression="Sart_date">
                            <EditItemTemplate>

                                <asp:TextBox ID="TxtEventStartDate" runat="server" Height="22px" Width="200px" Text='<%# Bind("Sart_date") %>'></asp:TextBox>

                                <asp:CalendarExtender ID="TxtEventStartDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="TxtEventStartDate">
                                </asp:CalendarExtender>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Sart_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="End Date" SortExpression="End_date">
                            <EditItemTemplate>

                                <asp:TextBox ID="TxtEventEndDate" runat="server" Height="22px" Width="200px" Text='<%# Bind("End_date") %>'></asp:TextBox>
                                <asp:CalendarExtender ID="TxtEventEndDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="TxtEventEndDate">
                                </asp:CalendarExtender>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("End_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Starting Time" SortExpression="Time">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Time") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Time") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Manager Name" SortExpression="Manager_name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Manager_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Manager_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact Number" SortExpression="Contactno">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Contactno") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Contactno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Venue" SortExpression="venue">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("venue") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("venue") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" DeleteCommand="DELETE FROM [tbl_Event] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tbl_Event] ([name], [EventDescription], [Sart_date], [End_date], [Time], [Manager_name], [Contactno], [Email], [venue]) VALUES (@name, @EventDescription, @Sart_date, @End_date, @Time, @Manager_name, @Contactno, @Email, @venue)" SelectCommand="SELECT * FROM [tbl_Event]" UpdateCommand="UPDATE [tbl_Event] SET [name] = @name, [EventDescription] = @EventDescription, [Sart_date] = @Sart_date, [End_date] = @End_date, [Time] = @Time, [Manager_name] = @Manager_name, [Contactno] = @Contactno, [Email] = @Email, [venue] = @venue WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="EventDescription" Type="String" />
                        <asp:Parameter DbType="Date" Name="Sart_date" />
                        <asp:Parameter DbType="Date" Name="End_date" />
                        <asp:Parameter Name="Time" Type="String" />
                        <asp:Parameter Name="Manager_name" Type="String" />
                        <asp:Parameter Name="Contactno" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="venue" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="EventDescription" Type="String" />
                        <asp:Parameter DbType="Date" Name="Sart_date" />
                        <asp:Parameter DbType="Date" Name="End_date" />
                        <asp:Parameter Name="Time" Type="String" />
                        <asp:Parameter Name="Manager_name" Type="String" />
                        <asp:Parameter Name="Contactno" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="venue" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestedBookInfo.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.RequestedBookInfo" %>

<asp:Content ContentPlaceHolderID="Main" ID="RequestedBookInfo" runat="server">
    <style>
        .grid td, .grid th {
            text-align: center;
            padding: 3px;
            font-size: 14px;
            height: 20px;
        }

        .grid th {
            background-color: cadetblue;
        }

        .grid {
            text-align: center;
            margin-left: 30%;
        }

        .pad {
            padding-left: 30%;
            padding-top: 10px;
        }

            .pad li {
                list-style: none;
            }
    </style>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <br />
                     <br />
                    <h2 class="text-center" style="color: #003366;"><span>Requested Book </span></h2>
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />
            <div class="col-md-12">
                 <br />
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="BorrowId" DataSourceID="SqlDataSource1">

                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF; color: #333333;" class="grid">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </td>
                            <td>
                                <asp:Label ID="Teacher_idLabel" runat="server" Text='<%# Eval("Teacher_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Student_IDLabel" runat="server" Text='<%# Eval("Student_ID") %>' />

                            </td>
                            <td>
                                <asp:Label ID="BorrowIdLabel" runat="server" Text='<%# Eval("BorrowId") %>' />

                            </td>
                            <td>
                                <asp:Label ID="BorrowDateLabel" runat="server" Text='<%# Eval("BorrowDate") %>' />

                            </td>
                            <td>
                                <asp:Label ID="ReturnDateLabel" runat="server" Text='<%# Eval("ReturnDate") %>' />

                            </td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("BorrowId", "RequestedBookDetails.aspx?BorrowId={0}") %>' runat="server">Borrow Details</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" class="grid">
                                        <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">Teacher Name</th>
                                            <th runat="server">Student Name</th>
                                            <th runat="server">Borrow Id</th>

                                            <th runat="server">Borrow Date</th>

                                            <th runat="server">Return Date</th>
                                            <th runat="server">Details</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </td>
                            <td>
                                <asp:Label ID="Teacher_idLabel" runat="server" Text='<%# Eval("Teacher_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ReturnDateLabel" runat="server" Text='<%# Eval("ReturnDate") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BorrowDateLabel" runat="server" Text='<%# Eval("BorrowDate") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Student_IDLabel" runat="server" Text='<%# Eval("Student_ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BorrowIdLabel" runat="server" Text='<%# Eval("BorrowId") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" DeleteCommand="DELETE FROM [Borrow] WHERE [BorrowId] = @BorrowId" InsertCommand="INSERT INTO [Borrow] ([Teacher_id], [ReturnDate], [BorrowDate], [Student_ID]) VALUES (@Teacher_id, @ReturnDate, @BorrowDate, @Student_ID)" SelectCommand="	SELECT [Teacher_id], [ReturnDate], [BorrowDate], [Student_ID], [BorrowId] FROM [Borrow] order by [BorrowId] desc " UpdateCommand="UPDATE [Borrow] SET [Teacher_id] = @Teacher_id, [ReturnDate] = @ReturnDate, [BorrowDate] = @BorrowDate, [Student_ID] = @Student_ID WHERE [BorrowId] = @BorrowId">
                    <DeleteParameters>
                        <asp:Parameter Name="BorrowId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Teacher_id" Type="String" />
                        <asp:Parameter Name="ReturnDate" Type="String" />
                        <asp:Parameter Name="BorrowDate" Type="String" />
                        <asp:Parameter Name="Student_ID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Teacher_id" Type="String" />
                        <asp:Parameter Name="ReturnDate" Type="String" />
                        <asp:Parameter Name="BorrowDate" Type="String" />
                        <asp:Parameter Name="Student_ID" Type="String" />
                        <asp:Parameter Name="BorrowId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <ul class="pad">
                    <li runat="server" id="Pager">Pages:
                <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="ListView1" PageSize="12">
                    <Fields>
                        <asp:NumericPagerField ButtonType="Link" />
                    </Fields>
                </asp:DataPager>
                    </li>
                </ul>
                <br />


            </div>


            <!-- /. ROW  -->
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</asp:Content>

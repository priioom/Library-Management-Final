<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestedBookDetails.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.ReservedBook" %>

<asp:Content ContentPlaceHolderID="Main" runat="server" ID="ReservedBook">
    <style>
        .grid td, .grid th {
            text-align: center;
            font-size: 14px;
            height: 20px;
        }

        .grid th {
            background-color: cadetblue;
        }

        /*.book {
            margin-left: 10px;
            margin-right: 10px;
            padding: 0px 110px 0px 110px;
        }*/

        .pad {
            padding: 3px;
        }

        .image {
            margin: 0px;
            padding: 0px;
            height: 100px;
            width: 100%
        }
    </style>
    <div class="container">
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center" style="color: #214761;">Reserved Book</h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class=" text-center">

                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF; color: #333333;">
                                <td>
                                    <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("Student_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Student_IDLabel" runat="server" Text='<%# Eval("Teacher_id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Teacher_idLabel" runat="server" Text='<%# Eval("BookName") %>' />
                                </td>
                                <td>
                                    <asp:Image ID="ImageBorrowDateLabel" CssClass="image" runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Cover"))%>' />

                                </td>
                                <td>
                                    <asp:Label ID="ReturnDateLabel" runat="server" Text='<%# Eval("Author") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Publication") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CoverLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PublicationLabel" runat="server" Text='<%# Eval("BorrowDate") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("ReturnDate") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" class="grid">
                                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                                <th runat="server">Student Name</th>
                                                <th runat="server">Teacher Name</th>
                                                <th runat="server">Book Name</th>
                                                <th runat="server">Book</th>
                                                <th runat="server">Author Name</th>
                                                <th runat="server">Publication</th>
                                                <th runat="server">Subject</th>
                                                <th runat="server">Borrow Date</th>
                                                <th runat="server">Return Date</th>
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

                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="Sp_Join_Request" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="BorrowId" QueryStringField="BorrowId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>


                </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
    </div>
</asp:Content>

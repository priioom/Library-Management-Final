<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.BookList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="BookList" ContentPlaceHolderID="Main" runat="server">
    <style>
        .th {
            text-align: center;
            font-size: 14px;
            height: 20px;
        }

        .grid {
            background-color: #CFCCCE;
        }

        .book {
            margin-left: 10px;
            margin-right: 10px;
            padding: 0px 110px 0px 110px;
        }

        .pad {
            padding-left: 30%;
            padding-top: 10px;
        }

            .pad li {
                list-style: none;
            }

        .image {
            margin: 0px;
            padding: 0px;
            height: 200px;
            width: 200px;
        }

        .fixSize {
            padding-bottom: 40px;
        }

        .center {
            text-align: center;
            color: #003366;
        }

        .padSearch {
            margin-right: 42px;
        }
    </style>
    <div class="container-fluid  grid clearfix">
        <div class="col-md-12 ">
            <br />
            <br />
            <br />
            <div class="row">

                <h1 class="text-center center">Book List</h1>
                <hr />
                <div class="col-md-12">
                    <div id="search" class="padSearch" style="float: right; padding-bottom: 30px;">
                        <asp:TextBox ID="txtSearchMaster" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </div>
                </div>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True">

                    <ItemTemplate>
                        <div class="col-md-3 text-center fixSize">

                            <asp:Image ID="Image1" CssClass="image" runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Cover"))%>' />
                            <br />
                     
                            <h4 style="color: #5584A3;">
                                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' /></h4>


                            <p>
                                Author Name:
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                            </p>




                            <span>Books In Stock:
                                <asp:Label ID="No_of_copiesLabel" runat="server" Text='<%# Eval("No_of_copies") %>' /></span>
                            <br />
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("BookName", "~/Details.aspx?BookName={0}") %>'
                                Text="Details" runat="server"></asp:HyperLink>
                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink2" Style="color: #003366; background-color: aqua; font-weight: bold; padding: 5px; margin: 10px; border: 1px solid; text-decoration: none" NavigateUrl='<%# Eval("BookName", "~/OnlineReservation.aspx?BookName={0}") %>' Text="Borrow Now" runat="server"></asp:HyperLink>


                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="SELECT [BookName], [Author], [Cover], [No_of_copies] FROM [tbl_Book]"></asp:SqlDataSource>

                <asp:Label runat="server" Text="" ID="sama"></asp:Label>

                <asp:ListView ID="ListView2" runat="server" AllowPaging="True">

                    <ItemTemplate>
                        <div class="col-md-3 text-center fixSize">

                            <asp:Image ID="Image1" CssClass="image " runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Cover"))%>' />
                            <br />
                            <h3 style="text-align: center">Book Name </h3>
                            <h4 style="color: #5584A3;">
                                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' /></h4>


                            <p>
                                Author Name:
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                            </p>




                            <span>Books In Stock:
                                <asp:Label ID="No_of_copiesLabel" runat="server" Text='<%# Eval("No_of_copies") %>' /></span>
                            <br />
                            <asp:HyperLink ID="HyperLink1" NavigateUrl= '<%# Eval("BookName","~/Details.aspx?BookName={0}") %>'
                                Text="Details" runat="server"></asp:HyperLink>
                           
                            <br />                            <br />
             
                            <asp:HyperLink ID="HyperLink2" Style="color: #003366; background-color: aqua; font-weight: bold; padding: 5px; margin: 10px; border: 1px solid; text-decoration: none" NavigateUrl='<%# Eval("BookName", "~/OnlineReservation.aspx?BookName={0}") %>' Text="Borrow Now" runat="server"></asp:HyperLink>

                        </div>

                    </ItemTemplate>

                </asp:ListView>

            </div>
        </div>

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
        <br />
        <br />
    </div>




</asp:Content>

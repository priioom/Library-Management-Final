<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineReservation.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.OnlineReservation" %>

<asp:Content ContentPlaceHolderID="Main" runat="server" ID="Reservation">
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

                <h1 class="text-center center">Online Reservation</h1>

                <hr />
                <div class="col-md-12" runat="server" id="NotConfirmed">
                    <h1 class="text-center" style="color: red">You Did Not Reserve Any Book!!!</h1>
                </div>
                <div class="col-md-12" runat="server" id="Confirmed">
                    <h1 class="text-center" style="color: Green">Your Reservation Confirmed</h1>
                    <h3 class="text-center" style="color: Red">You Have to Return Your Book Within <span runat="server" id="ReturnDateSpan"></span> .</h3>
                </div>
                <asp:ListView ID="ListView1" runat="server">

                    <ItemTemplate>
                        <div class="col-md-3 text-center fixSize">

                            <asp:Image ID="Image1" CssClass="image " runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Cover"))%>' />
                            <br />

                            <h4 style="color: #5584A3;">
                                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' /></h4>


                            <p>
                                Author Name:
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                            </p>




                            <span>Books In Stock:
                                <asp:Label ID="No_of_copiesLabel" runat="server" Text='1' /></span>
                            <br />
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("BookName", "~/Details.aspx?BookName={0}") %>'
                                Text="Details" runat="server"></asp:HyperLink>
                            <br />
                            <br />

                            <asp:Button ID="Button2" runat="server" Text="Remove" OnClick="Button2_Click" CommandArgument='<%# Eval("BookName") %>' />
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-12 text-center">

                            <tr style="">
                                <td>
                                    Name: <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    <br />
                                </td>
                                <td>
                                    Email: <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    <br />
                                </td>
                                <td>
                                    Contact Number: <asp:Label ID="contactNoLabel" runat="server" Text='<%# Eval("contactNo") %>' />
                                    <br />
                                </td>
                            </tr>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <div class="col-md-12 text-center" style="margin-bottom: 60px;">
                    <asp:Button Style="color: #003366; font-weight: bold;" ID="Button1" runat="server" Text="Confirm Your Reservation" OnClick="Button1_Click" />
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>
        <br />
        <br />
        <br />


    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="Sp_UserInfo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="User" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="Sp_BookDetails" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookName" QueryStringField="BookName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
</asp:Content>

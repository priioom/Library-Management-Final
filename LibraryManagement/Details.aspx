<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.Details" %>

<asp:Content ID="Details" ContentPlaceHolderID="Main" runat="server">
    <style>
        .center {
            text-align: center;
            color: #003366;
        }

        .color {
            background-color: #CFCCCE;
        }
    </style>
    <div class="container-fluid color">
        <br />
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h1 class="center">Details Of The
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookName") %>' />
                </h1>
                <hr />
                <div class="container">
                    <div class="col-md-3"></div>
                    <div class="col-md-3">
                        <asp:Image ID="Image1" CssClass="image " runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Cover"))%>' />

                    </div>
                    <div class="col-md-3">
                        <h3 style="color: #5584A3;">Book Name:
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </h3>
                        <h4 style="color: #D34F73;">Author Name:
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                        </h4>
                        <h5>Publication:
                            <asp:Label ID="PublicationLabel" runat="server" Text='<%# Eval("Publication") %>' />
                        </h5>
                        <h6>Subject:
                            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />

                        </h6>
                        <p style="color: #D34F73;">
                            Book in Stock:
                            <asp:Label ID="No_of_copiesLabel" runat="server" Text='<%# Eval("No_of_copies") %>' />
                        </p>
                        <asp:HyperLink ID="HyperLink2" Style="color: #003366; background-color: aqua; font-weight: bold; padding: 5px; border: 1px solid; text-decoration: none" NavigateUrl='<%# Eval("BookName", "~/OnlineReservation.aspx?BookName={0}") %>' Text="Borrow Now" runat="server"></asp:HyperLink>

                    </div>
                    <div class="col-md-3"></div>

                </div>

            </ItemTemplate>


        </asp:ListView>
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="Sp_BookDetails" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter Name="BookName" QueryStringField="BookName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>


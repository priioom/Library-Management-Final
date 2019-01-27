<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" MasterPageFile="~/SiteUser.Master" Inherits="LibraryManagement.Home" %>

<asp:Content ID="slider" ContentPlaceHolderID="Main" runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <style>
        #cont {
            padding: 0px;
        }

        .slide {
            padding-bottom: 0px;
        }

        .back {
            background-color: #CFCCCE;
        }

        .header {
            color: #003366;
            padding: 40px 0px 10px 0px;
        }

        .subHead {
            color: #5584A3;
            padding: 20px 0px 10px 0px;
        }

        .eventback {
            background-color: white;
            margin: 0px;
            padding: 0px;
        }

        .image {
            
            width: 262px;
        }
    </style>
    <div class="container-fluid" id="cont">
        <div id="body">



            <!-- Slider Start Here -->
            <section class="slide">
                <div class="container-fluid slide_pad">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active" style="left: -1px; top: 0px; width: 100%">
                                <img class="img-responsive img1" src="images/5.jpg" alt="Library" />
                                <div class="carousel-caption">
                                    <p>
                                        <i class="txtslide">“The only thing that you absolutely have to know, is the location of the library.
?”  Albert Einstein</i>
                                    </p>
                                </div>
                            </div>
                            <div class="item ">
                                <img class="img-responsive img1" src="images/4.jpg"  alt="Library" />
                                <div class="carousel-caption">
                                    <p>
                                        <i class="txtslide" >“A library is like an island in the middle of a vast sea of ignorance, particularly if the library is very tall and the surrounding area has been flooded.” 
? Lemony Snicket, Horseradish</i>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <img class="img-responsive img1" src="../images/3.jpg" alt="Library" />
                                <div class="carousel-caption">
                                    <p><i class="txtslide">“The world is quiet here.”</i></p>
                                </div>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <%--<div class="col-md-12 back">--%>
    <div class="col-md-8 back">
        <h1 class="text-center header "><span  style="border-bottom:#003366 1px solid; padding:5px;">Spotlight</span></h1>

        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">

            <ItemTemplate>
                <div class="col-md-12">

                    <h2 class="text-center subHead">
                        <asp:Label ID="headingLabel" CssClass="subHead" runat="server" Text='<%# Eval("heading") %>' /></h2>
                    <br />
                    <div class="col-md-12">


                        <div class="col-md-4" style="padding-top: 20px;">

                            <asp:Image ID="Image1" CssClass="image" runat="server" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("A_Picture"))%>' />

                        </div>

                        <div class="col-md-8">
                            <p style="padding: 20px; letter-spacing: 2px;">
                                <asp:Label ID="A_DescriptionLabel" runat="server" Text='<%# Eval("A_Description") %>' />
                            </p>
                        </div>
                    </div>


                    <br />
                    <br />
                </div>
            </ItemTemplate>

        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="SELECT [heading], [A_Description], [A_Picture] FROM [tbl_Article]"></asp:SqlDataSource>
    </div>
    <div class="col-md-4  eventback ">
        <h2 class="header text-center"><span style="border-bottom:#003366 1px solid; padding:5px;">Upcoming Events</span></h2>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>

                <h3 class="subHead">
                    <asp:Label ID="nameLabel" style="padding: 0px 30px 0px 30px" runat="server" Text='<%# Eval("name") %>' /></h3>

                <p style="padding: 0px 30px 0px 30px">
                    Event Description:
                    <asp:Label ID="EventDescriptionLabel" runat="server" Text='<%# Eval("EventDescription") %>' />
                </p>

                <p style="padding: 0px 30px 0px 30px">
                    Sart Date:
                    <asp:Label ID="Sart_dateLabel" runat="server" Text='<%# Eval("Sart_date") %>' />
                </p>

                <p style="padding: 0px 30px 0px 30px">
                    End Date:
                    <asp:Label ID="End_dateLabel" runat="server" Text='<%# Eval("End_date") %>' />
                </p>

                <p style="padding: 0px 30px 0px 30px">
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </p>
                <p style="padding: 0px 30px 0px 30px">
                    Manager Name:
                    <asp:Label ID="Manager_nameLabel" runat="server" Text='<%# Eval("Manager_name") %>' />
                </p>
                <p style="padding: 0px 30px 0px 30px">
                    Contact Number:
                    <asp:Label ID="ContactnoLabel" runat="server" Text='<%# Eval("Contactno") %>' />
                    <p>
                        <p style="padding: 0px 30px 0px 30px">
                            Email Adress:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </p>
                        <p style="padding: 0px 30px 0px 30px">
                            Venue:
                    <asp:Label ID="venueLabel" runat="server" Text='<%# Eval("venue") %>' />
                            <p>
                                <br />
                                <br />
            </ItemTemplate>


        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_Library_Management_SystemConnectionString %>" SelectCommand="Sp_SelectEventInfo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
    <%--</div>--%>
    <!-- Slider Ends Here -->
</asp:Content>


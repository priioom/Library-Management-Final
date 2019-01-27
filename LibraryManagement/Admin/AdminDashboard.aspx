<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.AdminDashboard" %>

<asp:Content ID="Dashboard" ContentPlaceHolderID="Main" runat="Server">
    <link href="css/font-awesome.css" rel="stylesheet" />
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br />
                    <br />
                    <h2>ADMIN DASHBOARD</h2>
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />
            <div class="row">
                <div class="col-lg-12 ">
                  <%--  <div class="alert alert-info">
                        <strong>Welcome '<%# Eval("Admi") %>'!</strong>You Have No pending Task For Today.
                    </div>--%>

                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 ">
                    <br />
                 <%--   <div class="alert alert-danger">
                        <strong>Want More Icons Free ? </strong>Checkout fontawesome website and use any icon <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">Click Here</a>.
                    </div>--%>

                </div>
            </div>

            <!-- /. ROW  -->
            <div class="row text-center pad-top">
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="student-info.aspx">
                            <i class="fa fa-users fa-5x"></i>
                            <h4>Student Information</h4>
                        </a>
                    </div>


                </div>

                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="teacher-info.aspx">
                            <i class="fa fa-user fa-5x"></i>
                            <h4>Teacher Information</h4>
                        </a>
                    </div>


                </div>
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="event-info.aspx">
                            <i class="fa fa-lightbulb-o fa-5x"></i>
                            <h4>Event Information</h4>
                        </a>
                    </div>


                </div>
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="book-info.aspx">
                            <i class="fa fa-clipboard fa-5x"></i>
                            <h4>Book Information</h4>
                        </a>
                    </div>


                </div>
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="Article-Info.aspx">
                            <i class="fa fa-clipboard fa-5x"></i>
                            <h4>Article Information</h4>
                        </a>
                    </div>


                </div>
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="RequestedBookInfo.aspx">
                            <i class="fa fa-bell-o fa-5x"></i>
                            <h4>Requested Book</h4>
                        </a>
                    </div>


                </div>
            </div>
            <!-- /. ROW  -->
            <div class="row text-center pad-top">
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                </div>

                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                    <div class="div-square">
                        <a href="blank.html">
                            <i class="fa fa-circle-o-notch fa-5x"></i>
                            <h4>Report OF The Books</h4>
                        </a>
                    </div>


                </div>
                <div class="col-lg-4 col-md-4 col-sm-3 col-xs-6">
                </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" MasterPageFile="~/Admin/AdminMaster.Master" Inherits="LibraryManagement.Admin.AddEvent" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="AddEvent" ContentPlaceHolderID="Main" Runat="Server">
           <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                                                    <asp:Label ID="labelMsg" runat="server" Text=""></asp:Label>

                     <h2 class="text-center"><span  style="border-bottom:2px solid #21476A;padding-bottom:10px;color:#21476A;">Add A Event</span></h2>
                        
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           

                  <!-- /. ROW  --> 
                <div class="col-md-12">
                <div class="col-md-3"></div>
                <div class="col-md-6 ">
                <table align="center" style="font-weight:bold">
                    <tr>
                        <td>
                            <asp:Label ID="LblEventName" runat="server" Text="Event Name : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEventName" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RFVEventName" runat="server" ErrorMessage="Enter The Name Of The Event" ControlToValidate="TxtEventName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelEventDescription" runat="server" Text="Event Description : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEventDescription" runat="server" Height="133px" Width="200px" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventDescription" runat="server" ErrorMessage="Enter The Event Description" ControlToValidate="TextBoxEventDescription" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelEventStartDate" runat="server" Text="Event Date(Start) : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                            <asp:TextBox ID="TxtEventStartDate" runat="server" Height="22px" Width="200px"></asp:TextBox>
                            
                            <asp:CalendarExtender ID="TxtEventStartDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="TxtEventStartDate">
                            </asp:CalendarExtender>
                            
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventStartDate" runat="server" ErrorMessage="Enter The Starting Time Of The Event." ControlToValidate="TxtEventStartDate" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelEventEndDate" runat="server" Text="Event Date(End) : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEventEndDate" runat="server" Height="22px" Width="200px"></asp:TextBox>
                            <asp:CalendarExtender ID="TxtEventEndDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="TxtEventEndDate">
                            </asp:CalendarExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventEndDate" runat="server" ErrorMessage="Enter The Ending Time Of The Event" ControlToValidate="TxtEventEndDate" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="LabelEventTime" runat="server" Text="Event Time: " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEventTime" runat="server" Height="22px" Width="200px"></asp:TextBox>

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventTime" runat="server" ErrorMessage="Enter The Organizer Name" ControlToValidate="TextBoxEventTime" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelEventManagerName" runat="server" Text="Event Manager Name(Or Organization) : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEventManagerName" runat="server" Height="22px" Width="200px"></asp:TextBox>

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventManagerName" runat="server" ErrorMessage="Enter The Organizer Name" ControlToValidate="TextBoxEventManagerName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="LabelEventManagerContact" runat="server" Text="Contact Number : " ForeColor="#21476A"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEventManagerContact" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventManagerContact" runat="server" ErrorMessage="Enter The Contact Number Of The Organizer" ControlToValidate="TextBoxEventManagerContact" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelEventManagerEmail" runat="server" Text="Email : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEventManagerEmail" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventManagerEmail" runat="server" ErrorMessage="Enter Email Address Of The Manager" ControlToValidate="TextBoxEventManagerEmail" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                                        <tr>
                        <td>
                            <asp:Label ID="LabelEventVeneue" runat="server" Text="Event Veneue : " ForeColor="#21476A" Width="120px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEventVeneue" runat="server" Height="22px" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEventVeneue" runat="server" ErrorMessage="Enter The Veneue Of The Event" ControlToValidate="TextBoxEventVeneue" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>

                            <asp:Button ID="ButtonEventSubmit" runat="server" Text="Submit" ForeColor="#21476A" OnClick="ButtonEventSubmit_Click"  />
                        </td>
                        <td></td>
                    </tr>
                </table>
                    </div>
                <div class="col-md-3"></div>
                    </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</asp:Content>
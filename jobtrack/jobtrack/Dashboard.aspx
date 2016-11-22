<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="jobtrack.Dashboard" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row full-screen">
        <div runat="server">
            <div class="form-group">
                <p>
                    <asp:Literal runat="server" ID="StatusMessage" />
                </p>
            </div>

            <div class="container">
                <%--Dashboard Menu--%>
                <div class="row">

                    <div class="col-sm-10 col-lg-offset-6">
                        <div class="btn-group" role="group" aria-label="Dashboard Menu">
                            <asp:HyperLink ID="AddNewJob" CssClass="btn btn-default" NavigateUrl="~/AddNewJob.aspx" runat="server">Add New Job</asp:HyperLink>
                            <asp:HyperLink ID="StockLevels" CssClass="btn btn-default" NavigateUrl="~/StockLevels.aspx" runat="server">Stock Levels</asp:HyperLink>
                            <asp:HyperLink ID="CurrentOrder" CssClass="btn btn-default" NavigateUrl="~/CurrentOrder.aspx" runat="server">Current Order</asp:HyperLink>
                            <asp:HyperLink ID="ManageEmployees" CssClass="btn btn-default" NavigateUrl="~/ManageEmployees.aspx" runat="server">Manage Employees</asp:HyperLink>
                            <asp:HyperLink ID="GarageInfo" CssClass="btn btn-default" NavigateUrl="~/GarageInfo.aspx" runat="server">Garage Info</asp:HyperLink>

                        </div>
                    </div>
                </div>

                <%--Dashboard Jobs Overview--%>
                <div class="row" style="border: double 1px black">

                    <%--Jobs sorting  and managing--%>

                    <div class="col-sm-5">
                        <%--filter options row--%>
                        <div class="row">
                            <div class="btn-group" aria-label="Filter Jobs">
                                <button type="button" class="btn btn-default ">Registration No.</button>
                                <button type="button" class="btn btn-default">Date Taken</button>
                                <button type="button" class="btn btn-default">Current</button>
                                <button type="button" class="btn btn-default">Completed</button>
                            </div>
                        </div>
                        <%--list of all jobs row--%>
                        <div class="row">
                            <div class="row">

                                <asp:ListBox ID="lbxCurrentJobs" runat="server"></asp:ListBox>
                                <input type="search" name="registration search" />
                                <asp:Button ID="btnSearch" runat="server" Text="Search" />

                            </div>
                        </div>
                    </div>


                    <div class="col-sm-7 right">
                        <%--Manage options row--%>
                        <div class="row">
                            <div class="btn-group" aria-label="Manage Jobs">
                                <asp:HyperLink ID="hlAddNewJob" CssClass="btn btn-default" NavigateUrl="~/AddNewJob.aspx" runat="server"><span class="glyphicon glyphicon-plus-sign"></span> Add New Job</asp:HyperLink>

                                <asp:HyperLink ID="hlManageEmployees" CssClass="btn btn-default" NavigateUrl="~/ManageEmployees.aspx" runat="server"><span class="glyphicon glyphicon-user"></span> Manage Employees</asp:HyperLink>

                                <asp:HyperLink ID="hlModifyJob" CssClass="btn btn-default" NavigateUrl="~/JobDetails.aspx" runat="server"><span class="glyphicon glyphicon-wrench"></span> Job Details</asp:HyperLink>

                                <asp:LinkButton ID="lbtnMarkComplete" runat="server" CssClass="btn btn-success" OnClick="hlbMarkAsComplete_Click"><span class="glyphicon glyphicon-ok-circle"></span> Mark As Complete</asp:LinkButton>
                               
                                <asp:LinkButton ID="lbtnRemoveJob" runat="server" CssClass="btn btn-danger" OnClick="btnRemoveJob_Click"><span class="glyphicon glyphicon-trash"></span> Remove</asp:LinkButton>

                            </div>
                        </div>
                        <%--Job Details row--%>
                        <div class="row">
                            <%--job details left column--%>
                            <div class="col-sm-6">
                                <div class="row">
                                    Registration Number:
                                <asp:Label ID="lblRegNo" runat="server"></asp:Label>
                                </div>
                                <div class="row">
                                    Details:
                                <asp:Label ID="lblJobDetails" runat="server"></asp:Label>
                                </div>
                                <div class="row">
                                    Date taken:
                                <asp:Label ID="lblJobDate" runat="server"></asp:Label>
                                </div>
                            </div>

                            <%--job details right column--%>
                            <div class="col-sm-6 right">
                                <div class="row">
                                    Status:
                                <asp:Label ID="lblJobStatus" runat="server"></asp:Label>
                                </div>
                                <div class="row">
                                    COST:
                                <ul>
                                    <li>Parts
                                <asp:Label ID="lblPartsCost" runat="server">Parts</asp:Label>
                                    </li>
                                    <li>Labour
                                <asp:Label ID="lblLabourCost" runat="server">Labour</asp:Label>
                                    </li>
                                    <li>Discount
                                <asp:Label ID="lblDiscountApplied" runat="server">Discount</asp:Label>
                                    </li>
                                    <li>Total
                                <asp:Label ID="lblTotalCost" runat="server">Total</asp:Label>
                                    </li>
                                </ul>
                                </div>
                                <div class="row"></div>
                            </div>
                        </div>

                    </div>

                </div>





            </div>

        </div>

        <%--End of container--%>
    </div>

<<<<<<< HEAD
=======

    <asp:Literal runat="server" ID="welcomeMessage"></asp:Literal>
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
</asp:Content>

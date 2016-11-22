<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewJob.aspx.cs" Inherits="jobtrack.AddNewJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row full-screen">
        <div class="container">
            <%--Add Job Form--%>
            <div class="col-sm-10">
                <div class="form-horizontal" id="AddNewJobForm" runat="server">
                    <h3>Add New Job</h3>

                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-sm-3 control-label" AssociatedControlID="tbxCustomerName">Customer Name:</asp:Label>
                        <div class="col-sm-5">
                            <asp:TextBox CssClass="form-control" runat="server" ID="tbxCustomerName" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-sm-3 control-label" AssociatedControlID="tbxCustomerNo">Customer Contact No.:</asp:Label>
                        <div class="col-sm-5">
                            <asp:TextBox CssClass="form-control" runat="server" ID="tbxCustomerNo" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-sm-3 control-label" AssociatedControlID="tbxVehRegNo">Vehicle Reg. No.:</asp:Label>
                        <div class="col-sm-5">
                            <asp:TextBox CssClass="form-control" runat="server" ID="tbxVehRegNo" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-sm-3 control-label" AssociatedControlID="ddlVehicleType">Vehicle Type:</asp:Label>
                        <div class="col-sm-5">
<<<<<<< HEAD
                            <asp:DropDownList ID="ddlVehicleType" CssClass="form-control" runat="server">
=======
                            <asp:DropDownList ID="ddlVehicleType" runat="server">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
                                <asp:ListItem>Car</asp:ListItem>
                                <asp:ListItem>Motorbike</asp:ListItem>
                                <asp:ListItem>Van</asp:ListItem>
                                <asp:ListItem>Truck</asp:ListItem>
                                <asp:ListItem>Bus</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-sm-3 control-label" AssociatedControlID="ddlEmployeeName">Assigned employee:</asp:Label>
                        <div class="col-sm-5">
<<<<<<< HEAD
                            <asp:DropDownList ID="ddlEmployeeName" runat="server" CssClass="form-control">
=======
                            <asp:DropDownList ID="ddlEmployeeName" runat="server">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
                                <%--for each Mechanic Name read from db & display List Item--%>
                                <asp:ListItem>Bob</asp:ListItem>
                                <asp:ListItem>Derp</asp:ListItem>
                                <asp:ListItem>Jose</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-sm-3 control-label" AssociatedControlID="tbxJobDescription">Job Description:</asp:Label>
                        <div class="col-sm-5">
                            <asp:TextBox CssClass="form-control" runat="server" ID="tbxJobDescription" />
                        </div>
                    </div>
                    <div class="col-sm-2 col-sm-offset-3 btn-lg">
                        <asp:Button runat="server" CssClass="btn btn-success btn-md" ID="btnAddJob" Text="Add Job" />
                    </div>
                    <div class="col-sm-2 btn-lg">
                        <asp:Button runat="server" CssClass="btn btn-danger btn-md" ID="btnCancelJob" Text="Cancel" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

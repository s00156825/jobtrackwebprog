<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="jobtrack.AddEmployee" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row full-screen">
<<<<<<< HEAD

        <%--Add Employee Form--%>
        <div class="row">
            <div class="container col-sm-12 ">
                <div class="form-group">
                    <asp:Label runat="server" CssClass="col-sm-12 control-label" AssociatedControlID="tbxNewEmployeeName">Employee Full Name:</asp:Label>
                    <div class="col-sm-12">
                        <asp:TextBox CssClass="form-control" runat="server" ID="tbxNewEmployeeName"/>
                   
                         </div>

                    <asp:Label runat="server" CssClass="col-sm-12 control-label" AssociatedControlID="tbxNewEmployeePhoneNo">Employee Contact No:</asp:Label>
                    <div class="col-sm-12">
                        <asp:TextBox CssClass="form-control" runat="server" ID="tbxNewEmployeePhoneNo"/>
                    </div>

                    <div class="col-sm-12">
                        <asp:LinkButton ID="lbtnAddNewEmployee" runat="server" CssClass="btn btn-success" OnClick="lbtnAddNewEmployee_Click"><span class="glyphicon glyphicon-plus"></span> Add New Employee</asp:LinkButton>
                        <asp:LinkButton ID="lbtnCancel" runat="server" CssClass="btn btn-danger" OnClick="lbtnCancel_Click"><span class="glyphicon glyphicon-remove"></span> Cancel </asp:LinkButton>

                    </div>
                    <asp:Label ID="lblInsertionStatus" runat="server" Text="Label"></asp:Label>

                </div>
=======
        <div class="container">
            <%--Add Employee Form--%>
            <div class="row">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
            </div>
        </div>
    </div>



<<<<<<< HEAD
</asp:Content>
=======
</asp:Content>
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f

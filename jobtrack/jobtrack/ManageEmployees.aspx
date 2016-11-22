<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageEmployees.aspx.cs" Inherits="jobtrack.ManageEmployees" %>
<<<<<<< HEAD

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <script type="text/javascript">
        function isDelete() {
            return confirm("Do you want to delete this row ?");
        }
    </script>

    <div class="container">
        <%--add new employee button showing modal window--%>


        <div class="row">
            <%-- end of div container--%>

            <div class="col-sm-7">
                <asp:Label runat="server" CssClass="control-label" AssociatedControlID="gw_ShowEmployees">Current Employees:</asp:Label>

                <asp:GridView ID="gw_ShowEmployees" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gw_ShowEmployees_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
            <div class="col-sm-5">
                <asp:Label ID="lblSelectedEmpl" runat="server" Text="Label"></asp:Label>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [EmployeeID], [Name], [Phone] FROM [Employees]"></asp:SqlDataSource>
        </div>


        <div class="row">
            <%--add new employee button showing popup window--%>
            <asp:LinkButton ID="lbtnAddNewEmployee" runat="server" CssClass="btn btn-success" OnClick="lbtnAddNewEmployee_Click"><span class="glyphicon glyphicon-plus"></span> Add New Employee</asp:LinkButton>
            <asp:LinkButton ID="lbtnRemoveEmployee" runat="server" CssClass="btn btn-danger" OnClick="lbtnRemoveEmployee_Click"><span class="glyphicon glyphicon-trash"></span> Remove Employee</asp:LinkButton>
        </div>


        <%-- end of div container--%>
    </div>

=======
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
</asp:Content>

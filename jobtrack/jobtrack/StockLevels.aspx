<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockLevels.aspx.cs" Inherits="jobtrack.StockLevels" %>
<<<<<<< HEAD

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h3>Stock Levels<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [StockDepot]"></asp:SqlDataSource>
        </h3>
        <div class="row">
            <ul class="nav nav-tabs col-sm-10">
                <li role="presentation" class="active"><a href="#">Current Stock</a>
                    <%-- display current stock available below--%>

                    <div class="col-xs-6">
                        <asp:GridView ID="gridViewCurrentOrder" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Part_Category" HeaderText="Part_Category" SortExpression="Part_Category" />
                                <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                                <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                                <asp:BoundField DataField="Part_Count" HeaderText="Part_Count" SortExpression="Part_Count" />
                            </Columns>
                        </asp:GridView>
                    </div>

                    <div class="col-xs-6">
                        <h3>Add needed parts to the order:</h3>
                        <asp:DropDownList ID="ddlPartName" runat="server" DataSourceID="SqlDataSource1"></asp:DropDownList>
                        <asp:Label ID="Label1" AssociatedControlID="tbxNoOfPartsNeeded" runat="server" Text="No. needed:"></asp:Label>
                        <asp:TextBox ID="tbxNoOfPartsNeeded" runat="server" CssClass="form-control"></asp:TextBox>

                        <asp:HyperLink ID="hlAddToOrder" runat="server"><span class="glyphicon glyphicon-plus">Add to order</asp:HyperLink>
                    </div>
                </li>



                <li role="presentation"><a href="CurrentOrder.aspx">Current Order</a>
                    <%--  dont place anything here. Go To Current Order Page--%>
                </li>
                <li role="presentation"><a href="Dashboard.aspx">Dashboard</a>
                    <%--  dont place anything here. Go to Dashboard Page--%>
                </li>

            </ul>
        </div>
    </div>



    <%--End of container--%>
=======
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CurrentOrder.aspx.cs" Inherits="jobtrack.CurrentOrder" %>
<<<<<<< HEAD

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container tab-content">
        <h3>Current Order</h3>
        <div class="row">
            <ul class="nav nav-tabs">
                <li role="presentation"><a href="StockLevels.aspx">Current Stock</a>
                    <%-- dont place anything here. Go to StockLevels Page--%>
                </li>
                <li role="presentation" class="active"><a href="#">Current Order</a>
                    <%-- display current order below --%>

                    <div class="row">                     
                            <div class="col-xs-12 col-md-8">
                                <%--   populate with currently ordered parts list--%>
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </div>
                            <div class="col-xs-12 col-md-4">
                               <%--  program this button to open popup with table of all parts - tabs--%>
                                <asp:Button ID="btnAddPartsOpenPopUp" CssClass="btn btn-success" OnClick="btnAddPartsOpenPopUp_Click" runat="server" Text="Add Parts" />
                            </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-md-8">
                            <div class="col-xs-8 col-md-8">
                                <h4>Total Cost:</h4>
                            </div>
                            <div class="col-xs-4 col-md-4">
                                <asp:Label ID="lblOrdersTotalCost" runat="server" Text="e 954"></asp:Label>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-4">
                            <%--program this to open pop up that says order placed, also send order via email--%>
                            <asp:HyperLink Id="linkbtnPlaceOrder" CssClass="btn btn-success" NavigateUrl="~/PlaceOrder.aspx" runat="server">Place Order</asp:HyperLink>
                        </div>
                    </div>




                </li>
                <li role="presentation"><a href="Dashboard.aspx">Dashboard</a>
                    <%--  dont place anything here. Go to Dashboard--%>
                </li>


            </ul>
        </div>
    </div>


=======
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
</asp:Content>

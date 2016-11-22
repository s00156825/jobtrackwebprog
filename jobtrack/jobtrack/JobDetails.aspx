<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobDetails.aspx.cs" Inherits="jobtrack.JobDetails" %>
<<<<<<< HEAD

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-sm-10">
            <div class="form-horizontal" id="JobDetailsForm" runat="server">
                <h3>Job Details</h3>

                <div class="row">
                    <div class="col-sm-12 col-md-8">
                        <div class="row">
                            <asp:Label ID="lblRegNo" CssClass="lblRegNo" runat="server" Text="REG NO. Placeholder"></asp:Label>
                        </div>
                        <div class="row">
                            <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name Placeholder"></asp:Label>
                        </div>
                        <div class="row">
                            <asp:Label ID="lblCustPhoneNo" runat="server" Text="Customer Phone No Placeholder"></asp:Label>
                        </div>
                        <div class="row">
                            <asp:Label ID="lblDateTaken" runat="server" Text="Date Taken"></asp:Label>
                        </div>
                        <div class="row">
                            <asp:Label ID="lblVehType" runat="server" Text="Vehice Type"></asp:Label>
                        </div>
                    </div>

                    <%-- populate the grid view with the list of parts in the category filteres bu their choice--%>


                    <div class="col-sm-12 col-md-4">
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>
                            </div>
                            <div class="col-xs-4">
                                <asp:LinkButton ID="lbtnStatus" runat="server" CssClass="btn btn-success" Width="30px" Height="30px"><span class="glyphicon glyphicon-ok"></span> </asp:LinkButton>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label ID="lblAssignEmployee" runat="server" Text="Assigned Employee"></asp:Label>
                        </div>
                    </div>

                    <%-- right column--%>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-md-8 txtB_Label">

                        <asp:Label ID="lblJobDescription" runat="server">JOB DESCRIPTION   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </asp:Label>

                    </div>

                    <div class="col-sm-12 col-md-4">
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:Label ID="Label2" runat="server" Text="Add Parts"></asp:Label>
                            </div>
                            <div class="col-xs-4">
                                <asp:LinkButton ID="lbtnAddParts" runat="server" CssClass="btn btn-success" Width="30px" Height="30px"><span class="glyphicon glyphicon-plus"></span> </asp:LinkButton>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-8">
                                <asp:Label ID="lblHoursOfLbour" runat="server" Text="Hours of labour" AssociatedControlID="tbxNoOfHours"></asp:Label>
                            </div>
                            <div class="col-xs-4">
                                <asp:LinkButton ID="linkBtnUpdate" runat="server" CssClass="btn btn-success" Width="30px" Height="30px"><span class="glyphicon glyphicon-refresh"></span></asp:LinkButton>
                            </div>
                            <asp:TextBox ID="tbxNoOfHours" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <%-- populate the grid view with the list of parts in the category filteres bu their choice--%>
                    <div class="col-xs-8">
                        <div class="col-xs-8 col-md-8">
                            <div class="row">
                                <asp:Label ID="lblTotalCostDesc" runat="server" Text="TOTAL COST"></asp:Label>
                            </div>

                            <div class="row">
                                <asp:Label ID="lblHoursOfLabourDesc" runat="server" Text="labour cost"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:Label ID="lblCostOfPartDesc" runat="server" Text="parts cost"></asp:Label>
                            </div>

                        </div>
                        <div class="col-xs-4 col-md-4">
                            <div class="row">
                                <asp:Label ID="lblTotalCost" runat="server" Text="100"></asp:Label>

                            </div>
                            <div class="row">
                                <asp:Label ID="lblHoursOfLabour" runat="server" Text="40"></asp:Label>

                            </div>
                            <div class="row">
                                <asp:Label ID="lblCostOfParts" runat="server" Text="60"></asp:Label>

                            </div>
                        </div>
                    </div>
                    <%-- right column--%>
                    <div class="col-xs-4">

                        <asp:Button ID="Button1" runat="server" Text="save" />
                        <asp:Button ID="Button2" runat="server" Text="edit" />
                        <asp:Button ID="Button3" runat="server" Text="print" />
                        <asp:Button ID="Button4" runat="server" Text="send via email" />
                        <asp:Button ID="Button5" runat="server" Text="sent mobile notification" />
                    </div>
                </div>


            </div>
        </div>
    </div>



    <div>
        <ul class="nav nav-tabs" data-tabs="tabs">


            <asp:SqlDataSource ID="SqlDataSourceEngine" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part Description] AS Part_Description, [Part Price] AS Part_Price, [Part ID] AS Part_ID FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gwParts_engine" DefaultValue="Engine" Name="Part_Category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceSuspension" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part Description] AS Part_Description, [Part Price] AS Part_Price, [Part ID] AS Part_ID FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gwParts_suspension" DefaultValue="suspension" Name="Part_Category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceSteering" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part Description] AS Part_Description, [Part Price] AS Part_Price, [Part ID] AS Part_ID FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gwParts_steering" DefaultValue="Steering" Name="Part_Category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceTransmission" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part Description] AS Part_Description, [Part Price] AS Part_Price, [Part ID] AS Part_ID FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gwParts_transmission" DefaultValue="Transmission" Name="Part_Category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceExhaust" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part Description] AS Part_Description, [Part Price] AS Part_Price, [Part ID] AS Part_ID FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gwParts_exhaust" DefaultValue="Exhaust" Name="Part_Category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceBrakes" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part ID] AS Part_ID, [Part Description] AS Part_Description, [Part Price] AS Part_Price FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gwParts_brakes" DefaultValue="Brakes" Name="Part_Category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceExterior" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Part ID] AS Part_ID, [Part Description] AS Part_Description, [Part Price] AS Part_Price FROM [StockDepot] WHERE ([Part Category] = @Part_Category)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Exterior" Name="Part_Category" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <li role="presentation" class="active" id="tab_Suspension"><a href="#suspension" data-toggle="tab">Suspension</a></li>
            <li role="presentation"><a href="#exterior" data-toggle="tab" id="tab_Exterior">Exterior</a></li>
            <li role="presentation"><a href="#engine" data-toggle="tab" id="btn_Engine">Engine</a></li>
            <li role="presentation"><a href="#steering" data-toggle="tab" id="tab_Steering">Steering</a></li>
            <li role="presentation"><a href="#brakes" data-toggle="tab" id="tab_Brakes">Brakes</a></li>
            <li role="presentation"><a href="#transmission" data-toggle="tab" id="btn_Transmission">Transmission</a></li>
            <li role="presentation"><a href="#exhaust" data-toggle="tab" id="tab_Exhaust">Exhaust</a></li>
        </ul>

         <%-- populate the grid view with the list of parts in the category filteres by their choice--%>
        <div id="my-tab-content" class="tab-content">
            <div class="tab-pane active" id="suspension">
                <asp:GridView ID="gwParts_suspension" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceTransmission">
                    <Columns>
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" InsertVisible="False" ReadOnly="True" SortExpression="Part_ID" />
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>
            <div class="tab-pane active" id="exterior">
                <asp:GridView ID="gwParts_exterior" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceExterior" OnSelectedIndexChanged="gwParts_exterior_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" SortExpression="Part_ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>
            <div class="tab-pane active" id="engine">
                <asp:GridView ID="gwParts_engine" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceEngine">
                    <Columns>
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" InsertVisible="False" ReadOnly="True" SortExpression="Part_ID" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>
            <div class="tab-pane active" id="steering">
                <asp:GridView ID="gwParts_steering" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceSteering">
                    <Columns>
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" InsertVisible="False" ReadOnly="True" SortExpression="Part_ID" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>
            <div class="tab-pane active" id="brakes">
                <asp:GridView ID="gwParts_brakes" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceBrakes">
                    <Columns>
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" SortExpression="Part_ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>
            <div class="tab-pane active" id="transmission">
                <asp:GridView ID="gwParts_transmission" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceTransmission">
                    <Columns>
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" InsertVisible="False" ReadOnly="True" SortExpression="Part_ID" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>
            <div class="tab-pane active" id="exhaust">
                <asp:GridView ID="gwParts_exhaust" runat="server" AutoGenerateColumns="False" DataKeyNames="Part_ID" DataSourceID="SqlDataSourceExhaust" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Part_Description" HeaderText="Part_Description" SortExpression="Part_Description" />
                        <asp:BoundField DataField="Part_Price" HeaderText="Part_Price" SortExpression="Part_Price" />
                        <asp:BoundField DataField="Part_ID" HeaderText="Part_ID" InsertVisible="False" ReadOnly="True" SortExpression="Part_ID" />
                    </Columns>
                    <SelectedRowStyle CssClass="selectedRow" />
                </asp:GridView>
                <br />
                <br />
                <br />
            </div>
        </div>

      
       

        <asp:Button ID="btnAddToOrder" CssClass="btn btn-success" runat="server" Text="Add To Order" />
        <asp:Button ID="btnCances" CssClass="btn btn-danger" runat="server" Text="Cancel" />
    </div>

=======
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
>>>>>>> 2220a9e743f0919fba1b548c90491d82c5d4cf6f
</asp:Content>

<%@ Page Title="Plot Charts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlotCharts.aspx.cs" Inherits="GourmetPizza.Managers.PlotCharts" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <hr />

    <asp:Panel ID="Panel1" runat="server" CssClass="form-horizontal">


        <div class="container-fluid">
            <div class="row">
                <%--Ajax update panel for Chart 1: number of orders based on pizza type--%>
                <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="col-md-6">
                            <h4>Pizza Type Chart</h4>
                            <br />
                            <div class="row">

                                <asp:Label Text="Select Chart Types:" runat="server" CssClass="col-md-5" AssociatedControlID="DropDownList1" />

                                <%--Plotting types e.g. Column or Pie--%>
                                <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownLists_Chart1_SelectedIndexChanged" CssClass="col-md-6"></asp:DropDownList>

                            </div>
                            <div class="row">
                                <asp:Label Text="Select Dimension:" runat="server" CssClass="col-md-5" AssociatedControlID="DropDownList2" />
                                <%--2d or 3d--%>
                                <asp:DropDownList ID="DropDownList2" AutoPostBack="true" OnSelectedIndexChanged="DropDownLists_Chart1_SelectedIndexChanged" runat="server" CssClass="col-md-6">
                                    <asp:ListItem>2D</asp:ListItem>
                                    <asp:ListItem>3D</asp:ListItem>
                                </asp:DropDownList>


                            </div>
                            <br />
                            <div class="img-thumbnail">
                                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                                    <Titles>
                                        <asp:Title Text="The number of orders for each pizza type"></asp:Title>
                                    </Titles>
                                    <Series>
                                        <asp:Series Name="Series1" XValueMember="pizzatype" YValueMembers="Count"></asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                            <AxisX Title="Pizza Types"></AxisX>
                                            <AxisY Title="Number of Orders"></AxisY>
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <%--<div class="col-md-2"></div>--%>

                <%--Ajax update panel for Chart 2: number of customers who has the some birthday month--%>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="col-md-6">
                            <h4>Customers By Month-of-birth Chart</h4>
                            <br />
                            <div class="row">
                                <asp:Label Text="Select Chart Types:" runat="server" CssClass="col-md-5" AssociatedControlID="DropDownList3" />
                                <asp:DropDownList ID="DropDownList3" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownLists_Chart2_SelectedIndexChanged" CssClass="col-md-6"></asp:DropDownList>
                            </div>

                            <div class="row">
                                <asp:Label Text="Select Dimension:" runat="server" CssClass="col-md-5" AssociatedControlID="DropDownList4" />
                                <asp:DropDownList ID="DropDownList4" AutoPostBack="true" OnSelectedIndexChanged="DropDownLists_Chart2_SelectedIndexChanged" runat="server" CssClass="col-md-6">
                                    <asp:ListItem>2D</asp:ListItem>
                                    <asp:ListItem>3D</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <div class="img-thumbnail ">
                                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                                    <Series>
                                        <asp:Series Name="Series1" XValueMember="month" YValueMembers="count"></asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                            <AxisX Title="Month"></AxisX>
                                            <AxisY Title="Number of Customers"></AxisY>
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <%--get from DB number of pizzas for each type--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT pizzas.pizzatype, COUNT(*) AS Count FROM orders INNER JOIN pizzas ON orders.pizzaID = pizzas.pizzaID GROUP BY pizzas.pizzatype"></asp:SqlDataSource>

        <%--get from DB number of customers born each month--%>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT CONVERT(char(3), dob, 0) AS month, COUNT(*) AS count FROM customers AS c GROUP BY CONVERT(char(3), dob, 0)"></asp:SqlDataSource>

    </asp:Panel>
</asp:Content>

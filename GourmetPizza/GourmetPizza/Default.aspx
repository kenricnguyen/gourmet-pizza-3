﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GourmetPizza._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LoginView runat="server" ViewStateMode="Disabled">
        <AnonymousTemplate>
            <h2>Our Pizzas</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" GridLines="Vertical" DataSourceID="SqlDataSource1" ForeColor="Black" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4">

                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pizzatype" HeaderText="Pizza Type" SortExpression="pizzatype" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="inch9price" HeaderText="9 inch ($)" SortExpression="inch9price" />
                    <asp:BoundField DataField="inch11price" HeaderText="11 inch ($)" SortExpression="inch11price" />
                    <asp:BoundField DataField="inch13price" HeaderText="13 inch ($)" SortExpression="inch13price" />
                </Columns>
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle CssClass="cursor-pointer" BackColor="#F7F7DE" />


            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT [pizzatype], [description], [inch9price], [inch11price], [inch13price] FROM [pizzas]"></asp:SqlDataSource>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server">
            </asp:EntityDataSource>
        </AnonymousTemplate>

        <RoleGroups>
            <asp:RoleGroup Roles="customers">
                <ContentTemplate>
                    <div class="jumbotron">
                        <h1>Gourmet Pizza</h1>
                        <p class="lead">Your favourite pizzas made in Australia</p>
                        <p><a href="http://westernsydney.edu.au" class="btn btn-primary btn-lg">See more &raquo;</a></p>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <h2>View Personal Details</h2>
                            <p>
                                Where you can see all your personal details                                                
                            </p>
                            <p>
                                <a class="btn btn-default" href="http://westernsydney.edu.au">See more &raquo;</a>
                            </p>
                        </div>
                        <div class="col-md-4">
                            <h2>Orders</h2>
                            <p>
                                Make an Order or look up My Orders for past orders made.
                            </p>
                            <p>
                                <a class="btn btn-default" href="http://westernsydney.edu.au">See more &raquo;</a>
                            </p>
                        </div>
                        <div class="col-md-4">
                            <h2>Other Links</h2>
                            <p>
                                You also have access to Home, About, Contact and Logout links.
                        All are located at the top of the page
                            </p>
                            <p>
                                <a class="btn btn-default" href="http://westernsydney.edu.au">See more &raquo;</a>
                            </p>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:RoleGroup>

            <asp:RoleGroup Roles="managers">
                <ContentTemplate>
                    <div class="jumbotron">
                        <h1>Gourmet Pizza - Management Portal</h1>
                        <p class="lead">Your favourite pizzas made in Australia</p>
                        <p><a href="http://westernsydney.edu.au" class="btn btn-primary btn-lg">See more &raquo;</a></p>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <h2>Edit Pizzas</h2>
                            <h3>This page will allow managers to:</h3>
                            <p>
                                <ul>
                                    <li>List, delete and insert pizzas</li>
                                    <li>Edit all fields of the pizas table in the database except the primary key 'pizzaID'</li>
                                </ul>
                            </p>
                            <p>
                                <a class="btn btn-default" href="http://westernsydney.edu.au">See more &raquo;</a>
                            </p>
                        </div>
                        <div class="col-md-4">
                            <h2>Plot Charts</h2>
                            <h3>This page will allow managers to plot the following two statisical charts:</h3>
                            <p>
                                <ul>
                                    <li>Chart 1: on the number of orders for each pizza type</li>
                                    <li>Chart 2: on the number of customers born in each month. On the chart, the month names instead of month numbers should be displayed</li>
                                </ul>
                            </p>
                            <p>
                                <a class="btn btn-default" href="http://westernsydney.edu.au">See more &raquo;</a>
                            </p>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>


</asp:Content>

<%@ Page Title="Edit Pizzas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditPizzas.aspx.cs" Inherits="GourmetPizza.Managers.EditPizzas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <hr />
    <br />

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="pizzaID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem"  OnItemCommand="PizzasListView_OnItemCommand">
        <EditItemTemplate>
            <div class="row">
                <div class="col-md-1">
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="form-control" />
                </div>
                <div class="col-md-1">
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="form-control" />
                </div>
                <div class="col-md-1">
                    <asp:Label ID="pizzaIDLabel1" runat="server" Text='<%# Eval("pizzaID") %>' />
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="pizzatypeTextBox" runat="server" Text='<%# Bind("pizzatype") %>' />
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="inch9priceTextBox" runat="server" Text='<%# Bind("inch9price") %>' />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="inch11priceTextBox" runat="server" Text='<%# Bind("inch11price") %>' />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="inch13priceTextBox" runat="server" Text='<%# Bind("inch13price") %>' />
                </div>
            </div>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <div class="row" runat="server">
                <div class="col-md-1">
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="form-control" />
                </div>
                <div class="col-md-1">
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="form-control" />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="pizzaIDTextBox" runat="server" Text='<%# Bind("pizzaID") %>' />
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="pizzatypeTextBox" runat="server" Text='<%# Bind("pizzatype") %>' />
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="inch9priceTextBox" runat="server" Text='<%# Bind("inch9price") %>' />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="inch11priceTextBox" runat="server" Text='<%# Bind("inch11price") %>' />
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="inch13priceTextBox" runat="server" Text='<%# Bind("inch13price") %>' />
                </div>
            </div>

        </InsertItemTemplate>
        <ItemTemplate>
            <div class="row">
                <div class="col-md-1">
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="form-control" />
                </div>
                <div class="col-md-1">
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="form-control" />
                </div>
                <div class="col-md-1">
                    <asp:Label ID="pizzaIDLabel" runat="server" Text='<%# Eval("pizzaID") %>' />
                </div>
                <div class="col-md-2">
                    <asp:Label ID="pizzatypeLabel" runat="server" Text='<%# Eval("pizzatype") %>' />
                </div>
                <div class="col-md-3">
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                </div>
                <div class="col-md-1">
                    <asp:Label ID="inch9priceLabel" runat="server" Text='<%# Eval("inch9price") %>' />
                </div>
                <div class="col-md-1">
                    <asp:Label ID="inch11priceLabel" runat="server" Text='<%# Eval("inch11price") %>' />
                </div>
                <div class="col-md-1">
                    <asp:Label ID="inch13priceLabel" runat="server" Text='<%# Eval("inch13price") %>' />
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="container">
                <div id="itemPlaceholderContainer" class="row">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Label Text="Pizza ID" runat="server" />
                    </div>
                    <div class="col-md-2">
                        <asp:Label Text="Pizza Type" runat="server" />
                    </div>
                    <div class="col-md-3">
                        <asp:Label Text="Description" runat="server" />
                    </div>
                    <div class="col-md-1">
                        <asp:Label Text="Inch 9 price" runat="server" />
                    </div>
                    <div class="col-md-1">
                        <asp:Label Text="Inch 11 price" runat="server" />
                    </div>
                    <div class="col-md-1">
                        <asp:Label Text="Inch 13 price" runat="server" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <asp:PlaceHolder ID="itemplaceholder" runat="server" />
                </div>
                <br />
                <%--<div class="row">
                    <div style="text-align:center ">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="form-control" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="form-control" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </div>--%>
            </div>
        </LayoutTemplate>

        <SelectedItemTemplate>
            <div class="row">
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Label ID="pizzaIDLabel" runat="server" Text='<%# Eval("pizzaID") %>' />
                <asp:Label ID="pizzatypeLabel" runat="server" Text='<%# Eval("pizzatype") %>' />
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <asp:Label ID="inch9priceLabel" runat="server" Text='<%# Eval("inch9price") %>' />
                <asp:Label ID="inch11priceLabel" runat="server" Text='<%# Eval("inch11price") %>' />
                <asp:Label ID="inch13priceLabel" runat="server" Text='<%# Eval("inch13price") %>' />
            </div>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" DeleteCommand="DELETE FROM [pizzas] WHERE [pizzaID] = @pizzaID" InsertCommand="INSERT INTO [pizzas] ([pizzaID], [pizzatype], [description], [inch9price], [inch11price], [inch13price]) VALUES (@pizzaID, @pizzatype, @description, @inch9price, @inch11price, @inch13price)" SelectCommand="SELECT * FROM [pizzas]" UpdateCommand="UPDATE [pizzas] SET [pizzatype] = @pizzatype, [description] = @description, [inch9price] = @inch9price, [inch11price] = @inch11price, [inch13price] = @inch13price WHERE [pizzaID] = @pizzaID">
        <DeleteParameters>
            <asp:Parameter Name="pizzaID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="pizzaID" Type="Int32" />
            <asp:Parameter Name="pizzatype" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="inch9price" Type="Double" />
            <asp:Parameter Name="inch11price" Type="Double" />
            <asp:Parameter Name="inch13price" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="pizzatype" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="inch9price" Type="Double" />
            <asp:Parameter Name="inch11price" Type="Double" />
            <asp:Parameter Name="inch13price" Type="Double" />
            <asp:Parameter Name="pizzaID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
</asp:Content>

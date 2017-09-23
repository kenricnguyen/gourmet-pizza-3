<%@ Page Title="Edit Pizzas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditPizzas.aspx.cs" Inherits="GourmetPizza.Managers.EditPizzas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <hr />
    <br />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="pizzaID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" OnItemInserted="ListView1_ItemInserted" OnItemUpdated="ListView1_ItemUpdated">
                <EditItemTemplate>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="form-control" />
                        </div>
                        <div class="col-md-1">
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="form-control" />
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="pizzaIDLabel1" runat="server" Text='<%# Eval("pizzaID") %>' CssClass="form-control" />
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="pizzatypeTextBox" runat="server" Text='<%# Bind("pizzatype") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="pizzatypeTextBox" FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" -_'" />
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" TargetControlID="descriptionTextBox" FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" -,." />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="inch9priceTextBox" runat="server" Text='<%# Bind("inch9price") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" TargetControlID="inch9priceTextBox" FilterType="Numbers,Custom" ValidChars="." />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="inch11priceTextBox" runat="server" Text='<%# Bind("inch11price") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" TargetControlID="inch11priceTextBox" FilterType="Numbers,Custom" ValidChars="." />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="inch13priceTextBox" runat="server" Text='<%# Bind("inch13price") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="inch13priceTextBox" FilterType="Numbers,Custom" ValidChars="." />
                        </div>
                    </div>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <hr />
                    <br />
                    <div class="row" runat="server">
                        <div class="col-md-1">
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="form-control" />
                        </div>
                        <div class="col-md-1">
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="form-control" />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="pizzaIDTextBox" runat="server" Text='<%# Bind("pizzaID") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="pizzaIDTextBox" FilterType="Numbers" />
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="pizzatypeTextBox" runat="server" Text='<%# Bind("pizzatype") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="pizzatypeTextBox" FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" -_'" />
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="descriptionTextBox" FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" -,." />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="inch9priceTextBox" runat="server" Text='<%# Bind("inch9price") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="inch9priceTextBox" FilterType="Numbers,Custom" ValidChars="." />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="inch11priceTextBox" runat="server" Text='<%# Bind("inch11price") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="inch11priceTextBox" FilterType="Numbers,Custom" ValidChars="." />
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="inch13priceTextBox" runat="server" Text='<%# Bind("inch13price") %>' CssClass="form-control" />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="inch13priceTextBox" FilterType="Numbers,Custom" ValidChars="." />
                        </div>
                    </div>

                </InsertItemTemplate>
                <ItemTemplate>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" UseSubmitBehavior="true" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="form-control" />

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
                                <h4>Pizza ID </h4>
                            </div>
                            <div class="col-md-2">
                                <h4>Pizza Type</h4>
                            </div>
                            <div class="col-md-3">
                                <h4>Description</h4>
                            </div>
                            <div class="col-md-1">
                                <h4>Inch 9 price</h4>
                            </div>
                            <div class="col-md-1">
                                <h4>Inch 11 price</h4>
                            </div>
                            <div class="col-md-1">
                                <h4>Inch 13 price</h4>
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

                <%--                <SelectedItemTemplate>
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
                </SelectedItemTemplate>--%>
            </asp:ListView>
            <asp:Label ID="lblResult" runat="server" Visible="false" CssClass="text-danger"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
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
</asp:Content>

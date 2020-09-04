<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirm.aspx.cs" Inherits="NickGilbertPizza.OrderConfirm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Order Confirm</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>form {
        color:white;
        }</style>
</head>
<body class="has-drawer">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <ul class="nav navbar-nav" id="navBar">
                <li><a href="Home.aspx" data-localize="nav.home">Home</a></li>
                <li><a href="Order.aspx" data-localize="nav.order">Shop Iphones</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-localize="nav.userInfo">User Information</span><span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx" data-localize="nav.userBasic">Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx" data-localize="nav.userDelivery">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx" data-localize="nav.login">Login </a></li>
                <li><a href="Registration.aspx" data-localize="nav.register">Become a member</a></li>
            </ul>
        </nav>

    </header>
    <div id="drawerMenu" class="drawer dw-xs-8 fold">
        <div class="drawer-controls visible-xs-block">
            <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg" style="font-size: 50px; padding: 0px 10px 0px 10px">≡</a>
        </div>
        <div class="drawer-contents">
            <div class="drawer-heading">
                <h2 class="drawer-title" data-localize="menu.title">Menu</h2>
            </div>
             <ul class="drawer-nav">
                <li  class="active"><a href="Home.aspx" data-localize="menu.home">Home</a></li>
                <li ><a href="Order.aspx" data-localize="menu.order">Shop Iphones</a></li>
                <li ><a href="Login.aspx" data-localize="menu.login">Login </a></li>
                <li ><a href="Registration.aspx" data-localize="menu.register">Become a member</a></li>
            </ul>
            <div class="drawer-body">
                <p data-localize="menu.body">
                    This page is for BSU Pizza store, you can order variety flavors of pizza on our website.
                    Also, this page is the sample for presentation.
                </p>
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Dr. Jeff Zhang and Mr. Aaron Feng</small>
            </div>
        </div>
    </div>
    <div class="container">
    <form id="form1" class="form-horizontal" runat="server">
    <br />
        <br />
        <br />
        <br />
        <div class="row"> <!-- Start row -->
        <div class="col-sm-offset-3">
            <asp:Label ID="Label2" runat="server" Text="Your Shopping Cart is showing below:" Font-Size="X-Large"></asp:Label></div>
            </div> <!-- Close row -->
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceNewShopping" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="PhoneSize" HeaderText="PhoneSize" SortExpression="PhoneSize" />
                <asp:BoundField DataField="PhoneStyle" HeaderText="PhoneStyle" SortExpression="PhoneStyle" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceNewShopping" runat="server" ConnectionString="<%$ ConnectionStrings:pizzaDB2019 %>" SelectCommand="SELECT [UserName], [PhoneSize], [PhoneStyle], [Color], [Price] FROM [NewShoppingCart] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />

                <div class="form-group"> <!-- Start AddressType -->
                    <asp:Label ID="Label1" runat="server" Text="AddressType:" CssClass="col-sm-4 control-label" for="TextBoxAddressType"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxAddressType" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class= ="col-sm-4">
                 <!-- Add Dropdown list late on -->
                    </div>
                </div> <!-- Close AddressType -->
                   
                <div class="form-group"> <!-- Start AddressLine1 -->
<asp:Label ID="Label3" runat="server" Text="AddressLine1:" CssClass="control-label col-sm-4" for="TextBoxAddressLine1"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxAddressLine1" class="form-control" runat="server"></asp:TextBox>
                        </div>
           <div class= ="col-sm-4">  </div>

                </div>     <!-- Close AddressLine1 -->                         
<div class="form-group"> <!-- Start AddressLine2 -->

<asp:Label ID="Label4" runat="server" Text="AddressLine2:" CssClass="control-label col-sm-4" for="TextBoxAddressLine2"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxAddressLine2" class="form-control" runat="server"></asp:TextBox>
                        </div>
                   <div class="col-sm-4">  </div>

                </div> <!-- Close AddressLine2 -->

                     <div class="form-group"> <!-- Start Zip -->

<asp:Label ID="Label5" runat="server" Text="ZipCode:" CssClass="control-label col-sm-4" for="TextBoxZipCode"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxZipCode" class="form-control" runat="server"></asp:TextBox>
                        </div> 
                    <div class="col-sm-4">  </div>

                </div> <!-- Close Zip -->
 
                     <div class="form-group"> <!-- Start Phone -->

<asp:Label ID="Label6" runat="server" Text="Phone:" CssClass="control-label col-sm-4" for="TextBoxPhone"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxPhone" class="form-control" runat="server"></asp:TextBox>
                        </div>
         <div class="col-sm-4">  </div>

                </div><!-- Close Phone -->

    <div class="col-sm-offset-3"> <!-- Start Checkout button -->

        <asp:Button ID="ButtonCheckOut" runat="server" class="btn btn-primary btn-lg" Text="CheckOut" OnClick="ButtonCheckOut_Click" />
        </div> <!-- Close Checkout button --> 
    </form>
      </div> <!-- close container -->

    <script src="js/drawer.js"></script>
    <script>$('#drawerMenu').drawer({ toggle: false });</script>
</body>
</html>

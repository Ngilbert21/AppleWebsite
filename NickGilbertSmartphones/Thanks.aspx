﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thanks.aspx.cs" Inherits="NickGilbertPizza.Thanks" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/introjs.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/liquid-slider.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        footer p {
        color:white;
        }
    </style>
</head>
<body class="has-drawer">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <ul class="nav navbar-nav" id="navBar">
                <li><a href="Home.aspx" data-localize="nav.home">Home</a></li>
                <li><a href="Order.aspx" data-localize="nav.orderPizza">Shop iPhones</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-localize="nav.userInfo"><span>User Information</span><span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx" >Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login </a></li>
                <li><a href="Registration.aspx">Become a member</a></li>
            </ul>
            <div class="pull-right">
                <a href="#" id="en">English</a>&emsp;
                <a href="#" id="sp">Spanish</a>&emsp;
                <a href="#" id="ch">Chinese</a>&emsp;
                <a href="#" id="help" onclick="startIntro();">Help</a>
            </div>
        </nav>
    </header>
    <div id="drawerMenu" class="drawer dw-xs-8 fold">
        <div class="drawer-controls visible-xs-block">
            <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg" style="font-size: 20px; padding: 0px 5px 0px 5px"> &equiv;</a>
        </div>
        <div class="drawer-contents">
            <div class="drawer-heading">
                <h2 class="drawer-title">Menu</h2>
            </div>
            <ul class="drawer-nav">
                <li  class="active"><a href="Home.aspx" >Home</a></li>
                <li ><a href="Order.aspx" >Shop Iphones</a></li>
                <li ><a href="Login.aspx">Login </a></li>
                <li ><a href="Registration.aspx">Become a member</a></li>
            </ul>
            <div class="drawer-body">
                <p>
                    This page is for BSU Pizza store, you can order variety flavors of pizza on our website.
                    Also, this page is the sample for presentation.
                </p>
                <p><a href="#" onclick="en.click()">English</a></p>
                   <p><a href="#" onclick="sp.click()">Spanish</a></p>
                  <p><a href="#" onclick="ch.click()">Chinese</a></p>
                <p><a href="#" onclick="startIntro();">Help</a></p>
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Dr. Jeff Zhang</small>
            </div>
        </div>
    </div>

    <form id="formThankYou" runat="server">
        <div>
            <h1 style="color:red">Thanks for your purchase, your high tech Apple device is on its way!</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Delivery_ID" DataSourceID="SqlDataSourceAddress" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Delivery_ID" HeaderText="Delivery ID" InsertVisible="False" ReadOnly="True" SortExpression="Delivery_ID" />
                    <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                    <asp:BoundField DataField="Address_Type" HeaderText="Address_Type" SortExpression="Address_Type" />
                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
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
            <asp:SqlDataSource ID="SqlDataSourceAddress" runat="server" ConnectionString="<%$ ConnectionStrings:pizzaDB2019 %>" SelectCommand="SELECT [Delivery_ID], [AddressLine1], [Address_Type], [ZipCode], [Phone], [UserName] FROM [Delivery_Address] WHERE ([UserName] = @UserName)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Close" OnClick="Button1_Click" />
    </form>
</body>
</html>

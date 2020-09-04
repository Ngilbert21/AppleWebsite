<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NickGilbertPizza.Home" %>

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
                <li><a href="Order.aspx" data-localize="nav.orderPizza">Shop Apple iPhones</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-localize="nav.userInfo"><span>User Information</span><span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx" data-localize="nav.basicInfo" >Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx" data-localize="nav.deliveryInfo">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx" data-localize="nav.login">Login </a></li>
                <li><a href="Registration.aspx" data-localize="nav.becomeMember">Become a member</a></li>
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
                <li ><a href="Order.aspx" >Shop Apple iPhones</a></li>
                <li ><a href="Login.aspx">Login </a></li>
                <li ><a href="Registration.aspx">Become a member</a></li>
            </ul>
            <div class="drawer-body">
                <p>
                    This page is for the BSU Apple iPhone store, you can order various different iPhones and have them delivered to you.
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

<form id="form1" runat="server">
    <asp:Label ID="LabelWelcome" runat="server" Text="Welcome to BSU Apple iPhone Store" Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="20pt" ForeColor="#FF3399" data-localize="welcome"></asp:Label>
            <section class="liquid-slider text-center" id="main-slider">
                <div>
                    <img src="images/iphonexr.jpg" />
                </div>
                <div>
                    <img src="images/apple.jpg" />
                </div>
                <div>
                    <img src="images/apple2.jpg" />
                </div>
                <div>
                    <img src="images/apple4.jpg" />
                </div>
            </section>
<footer>
        <p data-localize="para.first">This page is for the BSU Apple iPhone store, you can order various different iPhones and have them delivered to you.</p>
        <p data-localize="para.second">Also, this page is the sample for presentation. </p>
          <a href="#" data-toggle="modal" data-target="#contact" role="button" data-localize="para.contact">Contact</a>
</footer>
<div id="contact" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" aria-label="Close the window" data-dismiss="modal">&times;</button>
     <h4 class="modal-title">Contact</h4>

                </div>
                <div class="modal-body"> <!-- close body-->
                    <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="control-label" for="TextBoxName"></asp:Label>
    <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
     <asp:TextBox ID="TextBoxContact" runat="server"  TextMode="MultiLine" ></asp:TextBox>

                </div>
                <div class="modal-footer">
                    <asp:Label runat="server" ID="LabelMessage" ForeColor="Red" Visible="False"></asp:Label>
     <asp:Button ID="ButtonContact" runat="server" Text="Send" CssClass="btn btn-success" OnClick="ButtonContact_Click" />
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
</div>

</form>
</body>
    <script src="js/slider/jquery.liquid-slider.min.js"></script>
    <script src="js/jquery.localize.min.js"></script>
    <script src="js/intro.js"></script>
    <script src="js/drawer.js"></script>
    <script src="js/bsuPizza.js"></script>

    </html>
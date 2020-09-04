<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NickGilbertPizza.Login" %>

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
                <li ><a href="Order.aspx" >Order Pizza</a></li>
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
    <form id="FormLogin" runat="server" class="form-horizontal col-sm-offset-3 col-sm-6">
        
        <h3> You must register first, you can click below link to register</h3>
        <div class="form-group"> <!-- start userName group -->
            <div class="input-group">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-user"></span>
                </span>
                <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div><!-- close input group -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" 
                    ErrorMessage="User name required!" ControlToValidate="TextBoxUsername" 
                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        
        </div> <!-- close userName -->

        <div class="form-group"> <!-- start password group -->
            <div class="input-group">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-lock"></span>
                </span>
               
                <asp:TextBox ID="TextBoxPassword"  TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        </div><!-- close input group -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                    ErrorMessage="Password required!" ControlToValidate="TextBoxPassword" 
                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        
        </div> <!-- close password -->
        <hr />
        <a href="Registration.aspx">Create an account first!</a>

        <div class="form-group">
            <asp:Button ID="ButtonLogin" runat="server" Text="Login" class="btn btn-success" OnClick="ButtonLogin_Click" />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Text="" Visible="false"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButtonResetPassowrd" runat="server" Visible="false" Enabled="false" PostBackUrl="~/ResetPassword.aspx">
                Forgot password</asp:LinkButton>

        </div> <!-- close button and labels-->
    </form>
</body>
    <script src="js/slider/jquery.liquid-slider.min.js"></script>
    <script src="js/jquery.localize.min.js"></script>
    <script src="js/intro.js"></script>
    <script src="js/drawer.js"></script>
    <script src="js/bsuPizza.js"></script>
</html>


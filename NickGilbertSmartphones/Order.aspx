<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="NickGilbertPizza.Order" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Order</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        form {
            color: white;
        }
        .Pizza {
            position:absolute;
            z-index:0;
            width:329px;
            top:-50px;
            left: 15px;
            height: 330px;
        }
        .GrilledChicken {
        position:absolute;
        z-index:1;
        width:350px;
        left:50px;
        }
        .Pepproni {
            position:absolute;
            z-index:2;
                    width:300px;
        left:100px;
        top:50px;
        }
        .Steak {
            position:absolute;
            z-index:3;
                    width:350px;
                    left:50px;
                    top:60px;
        }
    </style>

</head>
<body class="has-drawer container">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Order.aspx">Shop iPhones</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Information <span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx">Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login </a></li>
                <li><a href="Registration.aspx">Become a member</a></li>
            </ul>
        </nav>
    </header>
    <div id="drawerMenu" class="drawer dw-xs-8 fold">
        <div class="drawer-controls visible-xs-block">
            <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg" style="font-size: 50px; padding: 0px 10px 0px 10px">≡</a>
        </div>
        <div class="drawer-contents">
            <div class="drawer-heading">
                <h2 class="drawer-title">Menu</h2>
            </div>
            <ul class="drawer-nav">
                <li role="presentation" class="active"><a href="Home.aspx">Home</a></li>
                <li role="presentation"><a href="Order.aspx">Shop iPhones</a></li>
            </ul>
            <div class="drawer-body">
                <p>
                    This page is for the BSU Apple iPhone store, you can order various different iPhones and have them delivered to you.
                    Also, this page is the sample for presentation.
                </p>
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Dr. Jeff Zhang and Aaron Feng</small>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 hidden-sm hidden-xs">
        <asp:Image ID="ImagePizza" runat="server" ImageUrl="~/images/apple5.jpg" CssClass="Pizza" />
        <asp:Image ID="ImageChicken" runat="server" ImageUrl="~/images/GrilledChicken.png" CssClass="GrilledChicken" Visible="False" />
        <asp:Image ID="ImagePepperoni" runat="server" ImageUrl="~/images/Pepperoni.png" CssClass="Pepproni" Visible="False" />
        <asp:Image ID="ImageSteak" runat="server" ImageUrl="~/images/Steak.png" CssClass="Steak" Visible="False" />
                <asp:Label id="LabelPrice" runat="server" style="position:absolute; left:150px; top:350px" Font-Size="16pt" ForeColor="White"></asp:Label>
            </div>
            <div class="col-md-6">
     <form runat="server" class="form-horizontal" id="FormOrder">
                     <div class="form-group">
        <asp:Label ID="Label1" runat="server" class="control-label col-sm-4" Text="Choose iPhone Model:"></asp:Label>
                     <div class="col-sm-8">
        <asp:DropDownList ID="DropDownListPhoneStyle" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownListPizzaSize_SelectedIndexChanged" >
            <asp:ListItem Value="399" Selected="True">Iphone 8</asp:ListItem>
            <asp:ListItem Value="749">Iphone XR</asp:ListItem>
            <asp:ListItem Value="999">Iphone XS</asp:ListItem>
            <asp:ListItem Value="1099">Iphone XS Max</asp:ListItem>
        </asp:DropDownList>
                         </div>
                         </div>
                       <div class="form-group">
        <asp:Label ID="Label2" runat="server" class="control-label col-sm-4" Text="Choose iPhone Color:"></asp:Label>
                            <div class="col-sm-8">
        <asp:DropDownList ID="DropDownListPhoneColor" runat="server" class="form-control">
            <asp:ListItem Value="White">White</asp:ListItem>
            <asp:ListItem Value="Red">Red</asp:ListItem>
            <asp:ListItem Value="Black">Black</asp:ListItem>
            <asp:ListItem Value="Silver">Silver</asp:ListItem>
        </asp:DropDownList>
    </div>
                         </div>
        <asp:Label ID="Label3" runat="server" class="control-label col-sm-4" Text="Choose Size:"></asp:Label>
       <%-- <asp:CheckBoxList ID="CheckBoxListToppings" runat="server" AutoPostBack="True"  ForeColor="White" OnSelectedIndexChanged="CheckBoxListToppings_SelectedIndexChanged">
            <asp:ListItem Value="1">64GB</asp:ListItem>
            <asp:ListItem Value="1">256GB</asp:ListItem>
            <asp:ListItem Value="1">512GB</asp:ListItem>
        </asp:CheckBoxList>--%>
         <%--<asp:RadioButton Value="0" ID="RadioButton1" runat="server" GroupName="Size" Text="64GB" />--%>
         <asp:RadioButtonList ID="RadioButtonList1" runat="server">
             <asp:ListItem Value="0">64 GB</asp:ListItem>
             <asp:ListItem Value="150">256 GB</asp:ListItem>
             <asp:ListItem Value="350">512 GB</asp:ListItem>
         </asp:RadioButtonList>
         <%--<asp:RadioButton Value="150" ID="RadioButton2" runat="server" GroupName="Size" Text="256GB" />
         <asp:RadioButton Value="350" ID="RadioButton3" runat="server" GroupName="Size" Text="512GB" />--%>
        <asp:Button ID="ButtonNext" runat="server" Text="Order"  class="btn btn-lg btn-primary col-sm-offset-4" OnClick="ButtonNext_Click" />
    </form>
            </div>
        </div>
    </div>
</body>
       <script src="js/drawer.js"></script>
    <script src="js/bsuPizza.js"></script>

</html>

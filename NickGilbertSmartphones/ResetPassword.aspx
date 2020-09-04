<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="NickGilbertPizza.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="FormResetPassword" runat="server" class="form-horizontal col-sm-offset-3 col-sm-6">

<h3> Reset Passowrd</h3>
        <div class="form-group"> <!-- Start userName group -->
            <div class="input-group">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-user"></span>
                </span>
                <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control"></asp:TextBox>
                </div><!-- close input group -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" 
                    ErrorMessage="User name required!" ControlToValidate="TextBoxUserName" 
                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                      
            </div> <!-- close userName group -->

        <div class="form-group"> <!-- Start Eamil group -->
            <div class="input-group">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-envelope"></span>
                </span>
               
                <asp:TextBox ID="TextBoxEmail"  runat="server" class="form-control"></asp:TextBox>
            </div><!-- close input group -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                    ErrorMessage="Email required!" ControlToValidate="TextBoxEmail" 
                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" 
                ErrorMessage="You must Enter Valid email address" ForeColor="Red" ControlToValidate="TextBoxEmail" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             
        </div> <!-- close Email group -->
        <hr />
          <div class="form-group"> <!-- Start button group -->
            <asp:Button ID="ButtonResetPassword" runat="server" 
                Text="Reset Passowrd" class="btn btn-primary btn-lg" OnClick="ButtonResetPassword_Click" />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Text="" Visible="false"></asp:Label>
            <br />
          
        </div> <!-- Start button group -->
      
    </form>
</body>
</html>


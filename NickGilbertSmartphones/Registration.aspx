<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="NickGilbertPizza.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="formRegistration" runat="server" class="form-horizontal">
        <div class="form-group"><!-- First Name Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxFName" runat="server" CssClass="form-control"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ErrorMessage="First Name is required!" ForeColor="Red" 
                    ControlToValidate="TextBoxFName">

                </asp:RequiredFieldValidator>
            </div><!-- Close Validator-->
        </div><!-- Close First Name Group -->

        <div class="form-group"><!-- Start Last Name Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelLName" runat="server" Text="Last Name"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxLName" runat="server" CssClass="form-control"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" 
                    ErrorMessage="Last Name is required!" ForeColor="Red" ControlToValidate="TextBoxLName">

                </asp:RequiredFieldValidator>
            </div><!-- Close Validator-->
        </div><!-- Close Last Name Group -->

        <div class="form-group"><!-- Start User Name Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelUserName" runat="server" Text="User Name"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="User Name is required!" 
                    ControlToValidate="TextBoxUserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div><!-- Close Validator-->
        </div><!-- Close User Name Group -->

        <div class="form-group"><!-- Start Email Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelEmail" runat="server" Text="E-mail"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is required!" 
                    ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" 
                    ErrorMessage="You must enter valid email address!" 
                    ControlToValidate="TextBoxEmail" 
                    ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div><!-- Close Validator-->
        </div><!-- Close Email Group -->

        <div class="form-group"><!-- Country Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelCountry" runat="server" Text="Country"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:DropDownList ID="DropDownListCountry" runat="server" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem> United States </asp:ListItem>
                    <asp:ListItem> China </asp:ListItem>
                    <asp:ListItem> India </asp:ListItem>

                </asp:DropDownList>
            </div><!-- close Dropdown-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" 
                    runat="server" ErrorMessage="Country is required" 
                    ControlToValidate="DropDownListCountry" ForeColor="Red"></asp:RequiredFieldValidator>
            </div><!-- Close Validator-->
        </div><!-- Close Country Name Group -->

        <div class="form-group"><!-- Start Password Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is required!" 
                    ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server" ErrorMessage="You must enter exactly six letter or numbers" 
                    ValidationExpression="[a-zA-z0-9]{6}" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RegularExpressionValidator>
            </div><!-- Close Validator-->
        </div><!-- Close Password Group -->

        <div class="form-group"><!-- First Confirm Password Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
                    runat="server" ErrorMessage="Confirm Password is required!" 
                    ForeColor="Red" ControlToValidate="TextBoxConfirmPassword"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidatorConfirmPassword" 
                    runat="server" ErrorMessage="Both password must be same!" 
                    ForeColor="Red" ControlToValidate="TextBoxConfirmPassword" ControlToCompare="TextBoxPassword"></asp:CompareValidator>
            </div><!-- Close Validator-->
        </div><!-- Close Confirm Password Group -->

        <div class="form-group"><!-- Start Age Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelAge" runat="server" Text="Age"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxAge" runat="server" CssClass="form-control"></asp:TextBox>
            </div><!-- close textbox-->
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" 
                    runat="server" ErrorMessage="Age is required!" 
                    ControlToValidate="TextBoxAge" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidatorAge" runat="server" 
                    ErrorMessage="You must be at least 18 years old!" 
                    MinimumValue="18" MaximumValue="110" Type="Integer" ControlToValidate="TextBoxAge" ForeColor="Red"></asp:RangeValidator>
            </div><!-- Close Validator-->
        </div><!-- Close Age Group -->

        <div class="form-group"><!-- Start Gender Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelGender" runat="server" Text="Gender"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4 radio-inline">
                <asp:RadioButton ID="RadioButtonFemale" runat="server" GroupName="Gender" Text="Female" />
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Gender" Text="Male" />
            </div><!-- close radio button-->
            
        </div><!-- Close Gender Group -->

        <div class="form-group"><!-- Start Button Group -->
            <div class="col-sm-4 control-label">
                <asp:Label ID="LabelWelcome" runat="server" Text="Welcome"></asp:Label>
            </div><!-- close label-->
            <div class="col-sm-4">
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
                    CssClass="btn btn-primary" OnClick="ButtonSubmit_Click" />
                &nbsp; &nbsp; &nbsp;
                <input type="reset" class="btn btn-warning" />
            </div><!-- close Radio button-->
            
        </div><!-- Close Button Group -->
    </form>
</body>
</html>

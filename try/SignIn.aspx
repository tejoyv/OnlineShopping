<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       <link rel="stylesheet" type="text/css" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="background-color:palegoldenrod">
   
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar fixed-top navbar navbar-light" style="background-color: #e3f2fd;>
  <a class="navbar-brand" href="Default.aspx" style="padding-top: 1px;color: yellow;
  "> SeleQtions</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" style="padding-right: 10px;">
        <a class="nav-link" href="Default.aspx">Home<span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item " style="padding-right: 10px;">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Products
        </a>
        <ul class="dropdown-menu" style="background-color:whitesmoke">
          <li class="dropdown-header" style="color:blue">Men</li>
            <li role="separator" class="divider" style="text-align:center"></li>
            <li style="text-align:center;color:gold"><a href="#">Shirts</a></li>
            <li style="text-align:center"><a href="#">Pants</a></li>
            <li class="dropdown-header" style="color:blue">Women</li>
            <li style="text-align:center"><a href="#">Tops</a></li>
            <li style="text-align:center"><a href="#">Leggings</a></li>
        </ul>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
    </ul>
     <span class="navbar-text">
      <a class="nav-link active" href="SignIn.aspx">Login</a>
    </span>
  </div>
</nav>  
</div><br /><br /><br /><br />
        <div class="container" style="margin-left:580px; margin-top: 41px;">
            <div class="form-horizontal">
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login</h2>
               
                <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Username" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required !" cssClass="text-danger" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-md-2 control-label"></asp:Label>
                     <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required !" cssClass="text-danger" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                <div class="col-md-2"></div>
                     <div class="col-md-6">
                         <asp:CheckBox ID="CheckBox1" runat="server" />
                         <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me?"></asp:Label>
                     </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                      &nbsp  &nbsp &nbsp  <asp:Button ID="Login" runat="server" class="btn btn-success" Text="Login" OnClick="Login_Click" />
                     &nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Sign Up" />
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                </div>
               </div>
            </div>
        </div>
        <br /><br /><br /><br /><br /><br />
        <footer class="w3-padding-32 w3-black w3-center footer-pos">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
  </div>
  <p>Developed by <a href="#" target="_blank" class="w3-hover-text-green">Tejoy Vachhrajani</a></p>
</footer>
    </form>
</body>
</html>

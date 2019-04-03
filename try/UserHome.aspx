<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
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
      <a class="nav-link active" href="Default.aspx">Logout</a>
    </span>
  </div>
</nav>  
</div><br /><br /><br /><br />
        <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
    </form>
</body>
</html>

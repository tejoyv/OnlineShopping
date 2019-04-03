<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!--Swiper-->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.min.js"></script>
    <link rel="stylesheet" type="text/css" href="swiper.css">
</head>
<body>
    <form id="form1" runat="server">
 <nav class="navbar navbar-expand-lg navbar fixed-top navbar navbar-light" style="background-color: #e3f2fd;>
  <a class="navbar-brand" href="Default.aspx" style="padding-top: 1px;color: yellow;
  "> SeleQtions</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active active" style="padding-right: 10px;">
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
      <li class="nav-item">
        <a class="nav-link" href="SignUp.aspx">SignUp</a>
      </li>
    </ul>
     <span class="navbar-text">
      <a class="nav-link" href="SignIn.aspx">Login</a>
    </span>
  </div>
</nav>
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.bewakoof.com/uploads/grid/app/30march-hotter-than-the-summer-web-banner-men-1553931899.jpg" class="d-block w-100" alt="..."/>
    </div>
    <div class="carousel-item">
      <img src="https://images.bewakoof.com/uploads/grid/app/cool-pin-web-banner-30thmarch-women-1553931901.jpg" class="d-block w-100" alt="..."/>
    </div>
    <div class="carousel-item">
      <img src="https://images.bewakoof.com/uploads/grid/app/bottomwear-desktop-banner-1553598691.jpg" class="d-block w-100" alt="..."/>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br /><br />
<br /><br />
        <br />

        <h2 style="text-align:center;color:coral">Discover the whole new range of fashion</h2>
        <br /><br /><br />

        <div>
            <div>
                <span>
                    <a href=""><img src="/images/men.jpg" width="200" height="200" style="border-radius:80px;margin-left:450px;margin-right:200px;"/></a>
                    <a href=""><img src="/images/women.jpg" width="200" height="200" style="border-radius:80px"/></a>
                    </span>
            </div>
            <br />
            <span style="margin-left:530px;font-size:large">Men</span><span style="margin-left:365px;font-size:large">Women</span>
            
        </div>
        <br /><br /><br />
        <h2 style="text-align:center;color:coral">Bestseller for Men</h2>
        <br /><br /><br />
        <br />
        <!-- Swiper -->
  <div class="swiper-container swiper1">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img src="/images/2.jpg" /></div>
      <div class="swiper-slide"><img src="https://img1.junaroad.com/uiproducts/15898224/pri_175_p-1547459826.jpg" /></div>
        <div class="swiper-slide"><img src="https://img0.junaroad.com/uiproducts/15890611/pri_175_p-1547203713.jpg" /></div>
       <div class="swiper-slide"><img src="https://img0.junaroad.com/uiproducts/15870586/pri_175_p-1546681278.jpg" /></div>
      <div class="swiper-slide"><img src="https://img2.junaroad.com/uiproducts/15950343/pri_175_p-1549277356.jpg" /></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination swiper-pagination1"></div>
  </div>
        
        <br /><br /><br />
        <h2 style="text-align:center;color:coral">Bestseller for Women</h2>
        <br /><br /><br />
        <br />
        <!-- Swiper -->
        <div class="swiper-container swiper2">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img src="https://img0.junaroad.com/uiproducts/15957171/pri_175_p-1549456850.jpg" /></div>
      <div class="swiper-slide"><img src="https://img0.junaroad.com/uiproducts/14664416/pri_175_p-1515581576.jpg" /></div>
        <div class="swiper-slide"><img src="https://img0.junaroad.com/uiproducts/15957176/pri_175_p-1549456851.jpg" /></div>
       <div class="swiper-slide"><img src="https://img2.junaroad.com/uiproducts/16050653/pri_175_p-1551952688.jpg" /></div>
      <div class="swiper-slide"><img src="https://img2.junaroad.com/uiproducts/15066965/pri_175_p-1524493335.jpg" /></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination swiper-pagination2"></div>
  </div>

  <!-- Swiper JS -->
  <script src="../dist/js/swiper.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper1 = new Swiper('.swiper1', {
      slidesPerView: 3,
      spaceBetween: 30,
      freeMode: true,
      pagination: {
        el: '.swiper-pagination1',
        clickable: true,
      },
      });
      var swiper2 = new Swiper('.swiper2', {
      slidesPerView: 3,
      spaceBetween: 30,
      freeMode: true,
      pagination: {
        el: '.swiper-pagination2',
        clickable: true,
      },
    });
  </script>
        <br /><br /><br />
        <footer class="w3-padding-32 w3-black w3-center w3-margin-top">
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

<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="padding-top:50px;">
    <div>
        <div style="max-width:480px" class="thumbnail">
 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/ProductImages/9/Wrangler Shirt01.jpeg" class="d-block w-100" alt="..."/>
    </div>
    <div class="carousel-item">
      <img src="images/ProductImages/9/Wrangler Shirt02.jpeg" class="d-block w-100" alt="..."/>
    </div>
    <div class="carousel-item">
      <img src="images/ProductImages/9/Wrangler Shirt03.jpeg" class="d-block w-100" alt="..."/>
    </div>
       <div class="carousel-item">
      <img src="images/ProductImages/9/Wrangler Shirt04.jpeg" class="d-block w-100" alt="..."/>
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

    <div class="col-md-7">
        <div class="divDet1">
        <h3 class="proNameView">Wrangler Brown Shirt</h3>
        <span class="proOgPriceView">Rs.1000</span><span class="proPriceDiscountView">120 off</span>
        <p class="proPriceView">Rs. 880</p>
    </div>
        <div>
            <h5 class="h5Size">SIZE</h5>
        </div>
        <div>
            <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="S" Text="S"></asp:ListItem>
                <asp:ListItem Value="M" Text="M"></asp:ListItem>
                <asp:ListItem Value="L" Text="L"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
   </div>
      <div class="divDet1">
          <asp:Button ID="btnAddToCart" CssClass="mainButton" runat="server" Text="Add to Cart" />
      </div>  
    <div>
        <h5 class="h5Size">Product Details</h5>
        <p>
            Brown casual shirt,has a spread collar,button placket,long sleeves,curved hem.
        </p>
        <h5 class="h5Size">Material and Care</h5>
        <p>
            100% cotton machine wash.
        </p>
    </div>
            </div>
        </div>
        </div>
</asp:Content>


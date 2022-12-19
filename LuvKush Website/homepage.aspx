<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="LuvKush_Website.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">
    <%--Top banner slideshow--%>
    <section>
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/kids-banner (1).jpg" class="img-fluid"/>
      <%--<div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>--%>
    </div>
    <div class="carousel-item">
        <img src="images/final-banner-1.jpg" />
      <%--<div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>--%>
    </div>
    <div class="carousel-item">
        <img src="images/homebanner02%20(1).jpg" />
      <%--<div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>--%>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </section>

    <%--Features--%>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2><b>Our Features</b></h2>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <center>
                        <i class="fa-solid fa-truck-fast fa-4x"></i>
                        <h6>Timely Delivery</h6>
                    </center>
                </div>

                <div class="col-md-3 col-sm-6">
                    <center>
                        <i class="fa-solid fa-sack-dollar fa-4x"></i>
                        <h6>Exclusive Offers</h6>
                    </center>
                </div>

                <div class="col-md-3 col-sm-6">
                    <center>
                        <i class="fa-solid fa-headset fa-4x"></i>
                        <h6>Customer Service</h6>
                    </center>
                </div>

                <div class="col-md-3 col-sm-6">
                    <center>
                        <i class="fa-solid fa-square-check fa-4x"></i>
                        <h6>Quality Product</h6>
                    </center>
                </div>
            </div>

        </div>
    </section>
    <%--category--%>
    <section class="mx-auto my-auto">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <center><img src="images/portrait-cute-little-boy-stylish-jeans-clothes-looking-camera-studio.jpg" 
                        style="width:500px;"/>
                        <center><h5>Boys</h5></center></center>
                </div>
                <div class="col-md-6">
                    <centre>
                        <img src="images/stylish-little-smiling-girl-posing-dress-isolated-white-studio-background-caucasian-blonde-female-model-human-emotions-facial-expression-childhood-showing-empty-space-bar.jpg"
                        style="width:500px;"/>
                        <center><h5>Girls</h5></center>
                    </centre>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

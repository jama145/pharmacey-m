<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard.aspx.vb" Inherits="fullprojec.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

       <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">

    <!--====== Animate CSS ======-->
    <link rel="stylesheet" href="assets/css/animate.css">

    <!--====== Magnific Popup CSS ======-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <!--====== Slick CSS ======-->
    <link rel="stylesheet" href="assets/css/slick.css">

    <!--====== Line Icons CSS ======-->
    <link rel="stylesheet" href="assets/css/LineIcons.css">

    <!--====== Font Awesome CSS ======-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!--====== Default CSS ======-->
    <link rel="stylesheet" href="assets/css/default.css">

    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="assets/css/style.css">
    <style>

        .fonts {
            color: blue;
            font-size: 50px;
            font-family: 'Century Gothic'
        }
    </style>
    <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            height: 10%;
            width: 100%;

             text-align: center;
            background-color: #0c4291;
            color: white;
            text-align: center;
     
        }
       p{
           padding-top: 20px;
          
        }
   
  .text1{
    padding-left:100px;
     margin-left:120px;
     text-align:center;
     color:blue;
     font-family:'Century Gothic'
     
  }
 H2{
  padding-left:107px;
     margin-left:140px;
     text-align:right;
     
  }
    </style>
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Mogdishu Pharmacy
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
    <link href="../stysheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
  <div class="wrapper ">
        <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
   <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
       Mogdishu pharmacy
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
            <a class="nav-link" href="./dashboard.aspx">
               <img src="../img/dashboard.png" width="35" height="35" />  &nbsp;  &nbsp;   Dashboard
           
            </a>
            
          </li>
               
          <li class="nav-item ">
            <a class="nav-link" href="./Medicines.aspx">
                <img src="../img/medicine.png" width="35" height="35" />    &nbsp;  &nbsp; Medicine
           
            </a>
           
           
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Companys.aspx">
            <img src="../img/company.png" width="33" height="33" />    &nbsp;  &nbsp; Company
           
            </a>
           
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Employees.aspx">
              <img src="../img/staff.png" width="35" height="35" />   &nbsp;  &nbsp;  Employee
           
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Sales.aspx">
             <img src="../img/sales.png" width="34" height="34" />   &nbsp;  &nbsp;  Sales
           
            </a>
          </li>
         <ul class="nav">
          <li class="nav-item   ">
            <a class="nav-link" href="./DefaultLogin.aspx">
               <img src="../img/Logout.png" width="35" height="35" />  &nbsp;  &nbsp;    Logout
           
            </a>
            
          
          </li>
         
        </ul>
      </div>
    </div>
      
    <div class="preloader">
        <div class="loader">
            <div class="ytp-spinner">
                <div class="ytp-spinner-container">
                    <div class="ytp-spinner-rotator">
                        <div class="ytp-spinner-left">
                            <div class="ytp-spinner-circle"></div>
                        </div>
                        <div class="ytp-spinner-right">
                            <div class="ytp-spinner-circle"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--====== PRELOADER PART ENDS ======-->
    <!--====== HEADER PART START ======-->

  

       <%-- <div id="home" class="header-hero bg_cover" style="background-image: url(assets/images/pharma.jpg)">
           </div>--%>
      <div class="container-fluid"></div>
                <div class="row ">
                    <div class="col-lg-12 mr-20">
                            <img src="assets/images/pharma.jpg" alt="hero">
                        </div> <!-- header hero image -->
                    </div>
                </div> <!-- row -->
           

    <!--====== HEADER PART ENDS ======-->
    <!--====== BRAMD PART ENDS ======-->
    <!--====== SERVICES PART START ======-->
        <br />
           <br />
    <section id="features" class="services-area pt-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="section-title text-center pb-40">
                        <h3 class="title">Our Service</h3>
                        <br />
                        <div class="line m-auto"></div>

                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->
            <div class="row justify-content-center ">
                <div class="col-lg-4 col-md-7 col-sm-8">
                    <div class="single-services text-center mt-30  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="services-icon">
                            <img class="shape" src="assets/images/staff.png" width="100" height="100" alt="shape">
                            <img class="shape-1" src="assets/images/staff.png" width="100" height="100" alt="shape">
                            <i class=""></i>
                        </div>
                        <div class="services-content mt-30">
                            <h4 class="services-title"><a href="#">Staff</a></h4>
                            <p class="text">The honorable workers who are with us are incomparable  employee empowerment can satisfy customers.</p>
                            <a class="more" href="#">Learn More <i class="lni-chevron-right"></i></a>
                        </div>
                    </div> <!-- single services -->
                </div>
                <div class="col-lg-4 col-md-7 col-sm-8">
                    <div class="single-services text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
                        <div class="services-icon">
                            <img class="shape" src="assets/images/company.png"  width="100" height="100" alt="shape">
                            <img class="shape-1" src="assets/images/company.png"  width="100" height="100" alt="shape">
                            <i class=""></i>
                        </div>
                        <div class="services-content mt-30">
                            <h4 class="services-title"><a href="#">Company</a></h4>
                            <p class="text">There are customers who sell medicines in bulk and we welcome new customers.</p>
                            <a class="more" href="#">Learn More <i class="lni-chevron-right"></i></a>
                        </div>
                    </div> <!-- single services -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>


    <!--====== SERVICES PART ENDS ======-->
    <!--====== ABOUT PART START ======-->

    <section id="about" class="about-area pt-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="section-title">
                            <h2 class="title"> about service</h2>
                            <div class="justify-content-between"></div>

                        </div> <!-- section title -->
                        <p class="text1">

                            The services we provide are: pharmaceutical products that we sell in bulk form.
                            Our medicines are quality and appreciated by our customers
                    </div> <!-- about content -->
                </div>
                <div class="col-lg-6">
                    <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                        <img src="assets/images/bg.jpg" alt="about">
                    </div> <!-- about image -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
        <div class="about-shape-1">
            <img src="assets/images/about-shape-1.svg" alt="shape">
        </div>
    </section>

    <!--====== ABOUT PART ENDS ======-->
    <!--====== ABOUT PART START ======-->

    <section class="about-area pt-70">
        <div class="about-shape-2">
            <img src="assets/images/about-shape-2.svg" alt="shape">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 order-lg-last">

                </div>
                <div class="col-lg-6 order-lg-first">

                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>


    <!--====== ABOUT PART START ======-->

    <section class="about-area pt-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">

                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
            <div class="about-shape-1">
                <img src="assets/images/about-shape-1.svg" alt="shape">
            </div>
    </section>

    <!--====== ABOUT PART ENDS ======-->
    <!--====== ABOUT PART ENDS ======-->
    <!--====== VIDEO COUNTER PART START ======-->

    <section id="facts" class="video-counter pt-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="video-content mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                        <img class="dots" src="assets/images/dots.svg" alt="dots">
                        <div class="video-wrapper">
                            <div class="video-image">
                                <img src="assets/images/video.png" alt="video">
                            </div>
                            <div class="video-icon">
                                <a href="https://www.youtube.com/watch?v=r44RKWyfcFw" class="video-popup"><i class="lni-play"></i></a>
                            </div>
                        </div> <!-- vide]o wrapper -->
                    </div> <!-- video content -->
                </div>

                <div class="col-lg-6">
                    <div class="counter-wrapper mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
                        <div class="counter-content">
                            <div class="section-title">
                                <div class="line"></div>
                                <h3 class="title">latest activities <span> </span></h3>
                            </div> <!-- section title -->
                            <p class="text">As mentioned above, our activities are clear. Below we can see the latest developments.</p>
                        </div> <!-- counter content -->
                        <div class="row no-gutters">
                            <div class="col-4">
                                <div class="single-counter counter-color-1 d-flex align-items-center justify-content-center">
                                    <div class="counter-items text-center">
                                        
                                            <span class="count"><span class="counter">125</span>K</span>
                                        <p class="text">Medicines</p>
                                    </div>
                                </div> <!-- single counter -->
                            </div>
                            <div class="col-4">
                                <div class="single-counter counter-color-2 d-flex align-items-center justify-content-center">
                                    <div class="counter-items text-center">
                                        <span class="count"><span class="counter">50</span></span>
                                        <p class="text">Employees</p>
                                    </div>
                                </div> <!-- single counter -->
                            </div>
                            <div class="col-4">
                                <div class="single-counter counter-color-3 d-flex align-items-center justify-content-center">
                                    <div class="counter-items text-center">
                                        <span class="count"><span class="counter">10</span>k</span>
                                        <p class="text">Customers</p>
                                    </div>
                                </div> <!-- single counter -->
                            </div>
                        </div> <!-- row -->
                    </div> <!-- counter wrapper -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>

    <!--====== VIDEO COUNTER PART ENDS ======-->
    <!--====== TEAM PART START ======-->
    <!--====== TEAM PART ENDS ======-->
    <!--====== TESTIMONIAL PART START ======-->
    <!--====== TESTIMONIAL PART ENDS ======-->
    <!--====== BLOG PART START ======-->
    <!--====== BLOG PART ENDS ======-->
    <!--====== FOOTER PART START ======-->
    <br />
    <br />
    <br />
    <br />
    <div class="footer" >
        
    </div>


    <!--====== BACK TOP TOP PART START ======-->

    <a href="#" class="back-to-top"><i class="lni-chevron-up"></i></a>

    <!--====== BACK TOP TOP PART ENDS ======-->
    <!--====== PART START ======-->
    <!--
        <section class="">
            <div class="container">
                <div class="row">
                    <div class="col-lg-"></div>
                </div>
            </div>
        </section>
    -->
    <!--====== PART ENDS ======-->
    <!--====== Jquery js ======-->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>

    <!--====== Bootstrap js ======-->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--====== Plugins js ======-->
    <script src="assets/js/plugins.js"></script>

    <!--====== Slick js ======-->
    <script src="assets/js/slick.min.js"></script>

    <!--====== Ajax Contact js ======-->
    <script src="assets/js/ajax-contact.js"></script>

    <!--====== Counter Up js ======-->
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>

    <!--====== Magnific Popup js ======-->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>

    <!--====== Scrolling Nav js ======-->
    <script src="assets/js/jquery.easing.min.js"></script>
    <script src="assets/js/scrolling-nav.js"></script>

    <!--====== wow js ======-->
    <script src="assets/js/wow.min.js"></script>

    <!--====== Particles js ======-->
    <script src="assets/js/particles.min.js"></script>

    <!--====== Main js ======-->
    <script src="assets/js/main.js"></script>



    </form>
</body>
</html>

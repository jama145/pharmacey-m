<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Medicines.aspx.vb" Inherits="fullprojec.Medicines" %>

<!DOCTYPE html>


<head runat="server">
     <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
 
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
         mogdisho pharcay
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="./dashboard.aspx">
                <img src="../img/dashboard.png" width="35" height="35" />  &nbsp;  &nbsp;   Dashboard
           
            </a>
          </li>
            
            
          <li class="nav-item active ">
            <a class="nav-link" href="./Medicines.aspx">
          <img src="../img/medicine.png" width="35" height="35" />  &nbsp;  &nbsp;   Medicine
           
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./companys.aspx">
               <img src="../img/company.png" width="33" height="33" />  &nbsp;  &nbsp;   Company
           
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
            <li class="nav-item ">
            <a class="nav-link" href="./DefaultLogin.aspx">
              <img src="../img/Logout.png" width="34" height="34" />   &nbsp;  &nbsp;  Logout
           
            </a>
          </li>
         
       
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:void(0)">Medicine</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
              
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search..." ></asp:TextBox>
               <%-- <button type="submit" class="btn btn-default btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>--%>

                   <div class="submit">
                       <asp:Button ID="submit" runat="server" Text="" class="btn btn-default btn-round btn-just-icon" />
                 
                 <%-- <i class="material-icons">search</i>--%>
                  <div class="ripple-container" ></div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="javascript:void(0)">Mike John responded to your email</a>
                  <a class="dropdown-item" href="javascript:void(0)">You have 5 new tasks</a>
                  <a class="dropdown-item" href="javascript:void(0)">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="javascript:void(0)">Another Notification</a>
                  <a class="dropdown-item" href="javascript:void(0)">Another One</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
       
       
          
              <div class="card w-500 h-400">
                <div class="card-header card-header-primary">
                  <h4 class="card-title   align-content-center">Medicine Information</h4>

                </div>
                <div class="card-body w-300 ">
                   
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Medicine ID</label>
                           
                                    <asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Medicine Name</label>
                         
                                     <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Quantity</label>
                                    
                                     <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"> </asp:TextBox>
                                </div>
                            </div>


                              </div>
                       
                              <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Manufactor</label>
                                   
                                    <asp:TextBox ID="TextBoxManufacture" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                      

                      
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Production Date</label>
                                    
                                    <asp:TextBox ID="TextBoxProductionDate" runat="server" CssClass="form-control"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Expire Date</label>
                                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
                        
                                </div>
                            </div>
                         

                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Paying Price</label>
                                    
                                    <asp:TextBox ID="txtprice" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Selling Price</label>
                              
                                    <asp:TextBox ID="txtsell" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                             <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating"> medicinetotal </label>
                                     
                                    
                                    <asp:TextBox ID="txtTotal" runat="server"  CssClass="form-control" Enabled="true" autopostBack="false"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>
                    <asp:Label ID="lblresult" runat="server" Visible="False"></asp:Label>
                        <div class="row">
                            <div class=" col-3">
                             
                                <asp:Button ID="Button4" runat="server" Text="Insert "  cssclass="btn btn-primary pull-right btn-round" />
                                <div class="clearfix"></div>
                            </div>
                              <div class=" col-3">
                             
                                  <asp:Button ID="Button3" runat="server" Text="Update "  cssclass="btn btn-primary pull-right btn-round" />
                                 <div class="clearfix"></div>
                            </div>
                            <div class=" col-3">
                             
                                <asp:Button ID="Button1" runat="server" Text="Delete "  cssclass="btn btn-primary pull-right btn-round" />
                                <div class="clearfix"></div>
                            </div>
                            <div class=" col-3">
                                 <asp:Button ID="Button2" runat="server" Text="Clear "  cssclass="btn btn-primary pull-right btn-round" />
                                <div class="clearfix"></div>
                            </div>

                        </div>


                </div>
              </div>
            
          <asp:GridView ID="gridmedicine" runat="server" AutoGenerateSelectButton="True" BackColor="White" CellPadding="7" GridLines="None" Width="889px"></asp:GridView>
        
      </div>
       
     
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="https://unpkg.com/default-passive-events"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=2.1.0"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
    </form>
</body>
</html>

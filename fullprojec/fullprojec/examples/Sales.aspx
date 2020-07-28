﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Sales.aspx.vb" Inherits="fullprojec.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
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
    <style type="text/css">
        .auto-style2 {
            -webkit-transition-property: top, bottom, width;
            transition-property: top, bottom, width;
            -webkit-transition-duration: .2s, .2s, .35s;
            transition-duration: .2s, .2s, .35s;
            -webkit-transition-timing-function: linear, linear, ease;
            transition-timing-function: linear, linear, ease;
            -webkit-overflow-scrolling: touch;
            left: 0px;
            top: 0px;
            width: 260px;
            height: 452px;
        }
    </style>
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
            Mogdishu Pharmacy
        </a></div>
      <div class="auto-style2">
        <ul class="nav">
          <li class="nav-item ">
            <a class="nav-link" href="./dashboard.aspx">
             <img src="../img/dashboard.png" width="35" height="35" />   &nbsp;  &nbsp;  Dashboard
           
            </a>
          </li>
           
            
          <li class="nav-item ">
            <a class="nav-link" href="./Medicines.aspx">
              <img src="../img/medicine.png" width="35" height="35" />  &nbsp;  &nbsp;   Medicine
           
            </a>
          </li>
             <li class="nav-item ">
            <a class="nav-link" href="./Companys.aspx">
               <img src="../img/company.png" width="33" height="33" />  &nbsp;  &nbsp;   Company
           
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Employees.aspx">
             <img src="../img/staff.png" width="35" height="35" />   &nbsp;  &nbsp;  Employee
           
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="./Sales.aspx">
              <img src="../img/sales.png" width="34" height="34" />   &nbsp;  &nbsp;  Sales
           
            </a>
          </li>
            <li class="nav-item ">
            <a class="nav-link" href="./DefaultLogin.aspx">
              <img src="../img/Logout.png" width="35" height="35" />  &nbsp;  &nbsp;   Logout
           
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
     
      <!-- End Navbar -->-

            <div id="body">
 <div class="content">
        <div class="container-fluid">
          
           
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title   align-content-center">Sales Information</h4>

                </div>
                <div class="card-body">
                
                        
                        <div class="row">
                              <div class="col-md-4">
                                <div class="form-group">ID</label>
                                
                                    <asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                       
                            <div class="col-md-4">
                                <div class="form-group">Customer Name</label>
                                
                                    <asp:TextBox ID="TextBoxname" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Customer name" ControlToValidate="TextBoxname" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <div class="form-group">Medicine_Name</label>
                                
                                    <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control" Height="16px" Width="138px" AutoPostBack="True"  >
                                        <asp:ListItem>relief</asp:ListItem>
                                        <asp:ListItem>paracemol</asp:ListItem>
                                        <asp:ListItem>aspirin</asp:ListItem>
                                        <asp:ListItem>panadol</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Sales person</label>
                                     <asp:TextBox ID="TextBoxseles" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Sales person" ControlToValidate="TextBoxseles" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Quantity</label>
                                      <asp:TextBox ID="TextBoxuent" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter quantity" ControlToValidate="TextBoxuent" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Price</label>
                                    <asp:TextBox ID="TextBoxprice" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Price" ForeColor="Red" ControlToValidate="TextBoxprice"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                             <div class="col-md-6">
                           <div class="form-group">
                                    <label class="bmd-label-floating">Total</label>
                                     <asp:TextBox ID="TextBoxtotal" runat="server" CssClass="form-control"></asp:TextBox>
                               
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Paid</label>
                                      <asp:TextBox ID="TextBoxpaid" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Remaining Balance</label>
                                     <asp:TextBox ID="TextBoxremin" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                           <div class="form-group">
                                    <label class="bmd-label-floating">peyment_date</label>
                                     <asp:TextBox ID="TextBoxpay" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>





                  
                 
                      
                  <asp:Label ID="Label1" runat="server"></asp:Label>
                  <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                  

               



                    
                        </div>
                 
                      
                  <asp:Label ID="lblresult" runat="server"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
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

                              <asp:Button ID="Button2" runat="server" Text="Clear "  cssclass="btn btn-primary pull-right btn-round" style="left: -60px; top: -1px; width: 145px" />
                                <div class="clearfix"></div>
                            </div>

                        </div>
             
                        </div>
            </div>

                </div>
             
            
          
         
           <asp:GridView ID="GridView1" runat="server" CellPadding="7" ForeColor="#333333" GridLines="None" Width="1029px" AutoGenerateSelectButton="True" BackColor="White">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
             </div>
       <%-- </div>--%>
   
      </div>
    <%--  <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
          </nav>
            <div class="copyright float-right" id="date">
            , made with <i class="material-icons">favorite</i> by
     
          </div>
        </div>
      </footer>
      <script>
        const x = new Date().getFullYear();
        let date = document.getElementById('date');
        date.innerHTML = '&copy; ' + x + date.innerHTML;
      </script>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple active" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
        </li>
        <li class="button-container github-star" style="margin-left: 38px">
        </li>
      </ul>
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
    });--%>
  </script>
    </form>
</body>
</html>

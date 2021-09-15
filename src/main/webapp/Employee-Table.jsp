<%--
  Created by IntelliJ IDEA.
  User: NITRO5
  Date: 9/7/2021
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <title>DWMPC || Employee Table</title>
  <meta name="description" content="Waste Management System." />
  <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
  <meta name="Next-gen" content="hencework"/>

  <!-- Favicon -->
  <link rel="shortcut icon" href="icon.ico">
  <link rel="icon" href="icon.ico" type="image/x-icon">

  <!-- bootstrap-select CSS -->
  <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>


  <!-- Data table CSS -->
  <link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>


  <!-- Custom CSS -->
  <link href="dist/css/style.css" rel="stylesheet" type="text/css">

  <style>
    .dt-buttons{
      display: none;
    }
  </style>

</head>

<body>
<!--Preloader-->
<div class="preloader-it">
  <div class="la-anim-1"></div>
</div>
<!--/Preloader-->
<div class="wrapper theme-1-active pimary-color-gold">

  <!-- Top Menu Items -->
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="mobile-only-brand pull-left">
      <div class="nav-header pull-left">
        <div class="logo-wrap">
          <a href="${pageContext.request.contextPath}/index.jsp">
            <img class="brand-img" src="img/logo2.png" alt="brand"/>
          </a>
        </div>
      </div>
      <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
      <a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-search"></i></a>
      <a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>
      <form id="search_form" role="search" class="top-nav-search collapse pull-left">
        <div class="input-group">
          <input type="text" name="example-input1-group2" class="form-control" placeholder="Search">
          <span class="input-group-btn">
						<button type="button" class="btn  btn-default"  data-target="#search_form" data-toggle="collapse" aria-label="Close" aria-expanded="true"><i class="zmdi zmdi-search"></i></button>
						</span>
        </div>
      </form>
    </div>
    <div id="mobile_only_nav" class="mobile-only-nav pull-right">
      <ul class="nav navbar-right top-nav pull-right">
        <li>
          <a id="open_right_sidebar" href="#"><i class="zmdi zmdi-settings top-nav-icon"></i></a>
        </li>
        <li class="dropdown app-drp">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>
          <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
            <li>
              <div class="app-nicescroll-bar">
                <ul class="app-icon-wrap pa-10">
                  <li>
                    <a href="weather.html" class="connection-item">
                      <i class="zmdi zmdi-cloud-outline txt-info"></i>
                      <span class="block">weather</span>
                    </a>
                  </li>
                  <li>
                    <a href="inbox.html" class="connection-item">
                      <i class="zmdi zmdi-email-open txt-success"></i>
                      <span class="block">e-mail</span>
                    </a>
                  </li>
                  <li>
                    <a href="calendar.html" class="connection-item">
                      <i class="zmdi zmdi-calendar-check txt-primary"></i>
                      <span class="block">calendar</span>
                    </a>
                  </li>
                  <li>
                    <a href="vector-map.html" class="connection-item">
                      <i class="zmdi zmdi-map txt-danger"></i>
                      <span class="block">map</span>
                    </a>
                  </li>
                  <li>
                    <a href="chats.html" class="connection-item">
                      <i class="zmdi zmdi-comment-outline txt-warning"></i>
                      <span class="block">chat</span>
                    </a>
                  </li>
                  <li>
                    <a href="contact-card.html" class="connection-item">
                      <i class="zmdi zmdi-assignment-account"></i>
                      <span class="block">contact</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li>
              <div class="app-box-bottom-wrap">
                <hr class="light-grey-hr ma-0"/>
                <a class="block text-center read-all" href="javascript:void(0)"> more </a>
              </div>
            </li>
          </ul>
        </li>
        <li class="dropdown full-width-drp">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-more-vert top-nav-icon"></i></a>
          <ul class="dropdown-menu mega-menu pa-0" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
            <li class="product-nicescroll-bar row">
              <ul class="pa-20">
                <li class="col-md-3 col-xs-6 col-menu-list">
                  <a href="javascript:void(0);"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i><span class="right-nav-text">Dashboard</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                  <hr class="light-grey-hr ma-0"/>
                  <ul>
                    <li>
                      <a href="${pageContext.request.contextPath}/index.jsp">Analytical</a>
                    </li>
                    <li>
                      <a href="index2.html">Demographic</a>
                    </li>
                    <li>
                      <a href="index3.html">Project</a>
                    </li>
                    <li>
                      <a href="index4.html">Hospital</a>
                    </li>
                    <li>
                      <a href="index5.html">HRM</a>
                    </li>
                    <li>
                      <a href="index6.html">Real Estate</a>
                    </li>
                    <li>
                      <a href="profile.html">profile</a>
                    </li>
                  </ul>
                </li>
                <li class="col-md-3 col-xs-6 col-menu-list">
                  <a href="javascript:void(0);">
                    <div class="pull-left">
                      <i class="zmdi zmdi-shopping-basket mr-20"></i><span class="right-nav-text">E-Commerce</span>
                    </div>
                    <div class="pull-right"><span class="label label-gold">hot</span>
                    </div>
                    <div class="clearfix"></div>
                  </a>
                  <hr class="light-grey-hr ma-0"/>
                  <ul>
                    <li>
                      <a href="e-commerce.html">Dashboard</a>
                    </li>
                    <li>
                      <a href="product.html">Products</a>
                    </li>
                    <li>
                      <a href="product-detail.html">Product Detail</a>
                    </li>
                    <li>
                      <a href="add-products.html">Add Product</a>
                    </li>
                    <li>
                      <a href="product-orders.html">Orders</a>
                    </li>
                    <li>
                      <a href="product-cart.html">Cart</a>
                    </li>
                    <li>
                      <a href="product-checkout.html">Checkout</a>
                    </li>
                  </ul>
                </li>
                <li class="col-md-6 col-xs-12 preview-carousel">
                  <a href="javascript:void(0);"><div class="pull-left"><span class="right-nav-text">latest products</span></div><div class="clearfix"></div></a>
                  <hr class="light-grey-hr ma-0"/>
                  <div class="product-carousel owl-carousel owl-theme text-center">
                    <a href="#">
                      <img src="img/chair.jpg" alt="chair">
                      <span>Circle chair</span>
                    </a>
                    <a href="#">
                      <img src="img/chair2.jpg" alt="chair">
                      <span>square chair</span>
                    </a>
                    <a href="#">
                      <img src="img/chair3.jpg" alt="chair">
                      <span>semi circle chair</span>
                    </a>
                    <a href="#">
                      <img src="img/chair4.jpg" alt="chair">
                      <span>wooden chair</span>
                    </a>
                    <a href="#">
                      <img src="img/chair2.jpg" alt="chair">
                      <span>square chair</span>
                    </a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="dropdown alert-drp">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-notifications top-nav-icon"></i><span class="top-nav-icon-badge">5</span></a>
          <ul  class="dropdown-menu alert-dropdown" data-dropdown-in="bounceIn" data-dropdown-out="bounceOut">
            <li>
              <div class="notification-box-head-wrap">
                <span class="notification-box-head pull-left inline-block">notifications</span>
                <a class="txt-danger pull-right clear-notifications inline-block" href="javascript:void(0)"> clear all </a>
                <div class="clearfix"></div>
                <hr class="light-grey-hr ma-0"/>
              </div>
            </li>
            <li>
              <div class="streamline message-nicescroll-bar">
                <div class="sl-item">
                  <a href="javascript:void(0)">
                    <div class="icon bg-green">
                      <i class="zmdi zmdi-flag"></i>
                    </div>
                    <div class="sl-content">
												<span class="inline-block capitalize-font  pull-left truncate head-notifications">
												New subscription created</span>
                      <span class="inline-block font-11  pull-right notifications-time">2pm</span>
                      <div class="clearfix"></div>
                      <p class="truncate">Your customer subscribed for the basic plan. The customer will pay $25 per month.</p>
                    </div>
                  </a>
                </div>
                <hr class="light-grey-hr ma-0"/>
                <div class="sl-item">
                  <a href="javascript:void(0)">
                    <div class="icon bg-yellow">
                      <i class="zmdi zmdi-trending-down"></i>
                    </div>
                    <div class="sl-content">
                      <span class="inline-block capitalize-font  pull-left truncate head-notifications txt-warning">Server #2 not responding</span>
                      <span class="inline-block font-11 pull-right notifications-time">1pm</span>
                      <div class="clearfix"></div>
                      <p class="truncate">Some technical error occurred needs to be resolved.</p>
                    </div>
                  </a>
                </div>
                <hr class="light-grey-hr ma-0"/>
                <div class="sl-item">
                  <a href="javascript:void(0)">
                    <div class="icon bg-blue">
                      <i class="zmdi zmdi-email"></i>
                    </div>
                    <div class="sl-content">
                      <span class="inline-block capitalize-font  pull-left truncate head-notifications">2 new messages</span>
                      <span class="inline-block font-11  pull-right notifications-time">4pm</span>
                      <div class="clearfix"></div>
                      <p class="truncate"> The last payment for your G Suite Basic subscription failed.</p>
                    </div>
                  </a>
                </div>
                <hr class="light-grey-hr ma-0"/>
                <div class="sl-item">
                  <a href="javascript:void(0)">
                    <div class="sl-avatar">
                      <img class="img-responsive" src="img/avatar.jpg" alt="avatar"/>
                    </div>
                    <div class="sl-content">
                      <span class="inline-block capitalize-font  pull-left truncate head-notifications">Sandy Doe</span>
                      <span class="inline-block font-11  pull-right notifications-time">1pm</span>
                      <div class="clearfix"></div>
                      <p class="truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                    </div>
                  </a>
                </div>
                <hr class="light-grey-hr ma-0"/>
                <div class="sl-item">
                  <a href="javascript:void(0)">
                    <div class="icon bg-red">
                      <i class="zmdi zmdi-storage"></i>
                    </div>
                    <div class="sl-content">
                      <span class="inline-block capitalize-font  pull-left truncate head-notifications txt-danger">99% server space occupied.</span>
                      <span class="inline-block font-11  pull-right notifications-time">1pm</span>
                      <div class="clearfix"></div>
                      <p class="truncate">consectetur, adipisci velit.</p>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li>
              <div class="notification-box-bottom-wrap">
                <hr class="light-grey-hr ma-0"/>
                <a class="block text-center read-all" href="javascript:void(0)"> read all </a>
                <div class="clearfix"></div>
              </div>
            </li>
          </ul>
        </li>
        <li class="dropdown auth-drp">
          <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="img/user1.png" alt="user_auth" class="user-auth-img img-circle"/><span class="user-online-status"></span></a>
          <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
            <li>
              <a href="profile.html"><i class="zmdi zmdi-account"></i><span>Profile</span></a>
            </li>
            <li>
              <a href="#"><i class="zmdi zmdi-card"></i><span>my balance</span></a>
            </li>
            <li>
              <a href="inbox.html"><i class="zmdi zmdi-email"></i><span>Inbox</span></a>
            </li>
            <li>
              <a href="#"><i class="zmdi zmdi-settings"></i><span>Settings</span></a>
            </li>
            <li class="divider"></li>
            <li class="sub-menu show-on-hover">
              <a href="#" class="dropdown-toggle pr-0 level-2-drp"><i class="zmdi zmdi-check text-success"></i> available</a>
              <ul class="dropdown-menu open-left-side">
                <li>
                  <a href="#"><i class="zmdi zmdi-check text-success"></i><span>available</span></a>
                </li>
                <li>
                  <a href="#"><i class="zmdi zmdi-circle-o text-warning"></i><span>busy</span></a>
                </li>
                <li>
                  <a href="#"><i class="zmdi zmdi-minus-circle-outline text-danger"></i><span>offline</span></a>
                </li>
              </ul>
            </li>
            <li class="divider"></li>
            <li>
              <a href="#"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
  <!-- /Top Menu Items -->

  <!-- Left Sidebar Menu -->
  <div class="fixed-sidebar-left">
    <ul class="nav navbar-nav side-nav nicescroll-bar">
      <li class="navigation-header">
        <span>Main</span>
        <i class="zmdi zmdi-more"></i>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#dashboard_dr"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i><span class="right-nav-text">Dashboard</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="dashboard_dr" class="collapse collapse-level-1">
          <li>
            <a href="${pageContext.request.contextPath}/index.jsp">Analytical</a>
          </li>
          <li>
            <a href="index2.html">Demographic</a>
          </li>
          <li>
            <a href="index3.html">Project</a>
          </li>
          <li>
            <a href="index4.html">Hospital</a>
          </li>
          <li>
            <a href="index5.html">HRM</a>
          </li>
          <li>
            <a href="index6.html">Real Estate</a>
          </li>
          <li>
            <a href="profile.html">profile</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr"><div class="pull-left"><i class="zmdi zmdi-shopping-basket mr-20"></i><span class="right-nav-text">E-Commerce</span></div><div class="pull-right"><span class="label label-gold">hot</span></div><div class="clearfix"></div></a>
        <ul id="ecom_dr" class="collapse collapse-level-1">
          <li>
            <a href="e-commerce.html">Dashboard</a>
          </li>
          <li>
            <a href="product.html">Products</a>
          </li>
          <li>
            <a href="product-detail.html">Product Detail</a>
          </li>
          <li>
            <a href="add-products.html">Add Product</a>
          </li>
          <li>
            <a href="product-orders.html">Orders</a>
          </li>
          <li>
            <a href="product-cart.html">Cart</a>
          </li>
          <li>
            <a href="product-checkout.html">Checkout</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="zmdi zmdi-apps mr-20"></i><span class="right-nav-text">Apps </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="app_dr" class="collapse collapse-level-1">
          <li>
            <a href="chats.html">chats</a>
          </li>
          <li>
            <a href="calendar.html">calendar</a>
          </li>
          <li>
            <a href="weather.html">weather</a>
          </li>
          <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#email_dr">Email<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            <ul id="email_dr" class="collapse collapse-level-2">
              <li>
                <a href="inbox.html">inbox</a>
              </li>
              <li>
                <a href="inbox-detail.html">detail email</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#contact_dr">Contacts<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            <ul id="contact_dr" class="collapse collapse-level-2">
              <li>
                <a href="contact-list.html">list</a>
              </li>
              <li>
                <a href="contact-card.html">cards</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="file-manager.html">File Manager</a>
          </li>
          <li>
            <a href="todo-tasklist.html">To Do/Tasklist</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="widgets.html"><div class="pull-left"><i class="zmdi zmdi-flag mr-20"></i><span class="right-nav-text">widgets</span></div><div class="pull-right"><span class="label label-warning">8</span></div><div class="clearfix"></div></a>
      </li>
      <li><hr class="light-grey-hr mb-10"/></li>
      <li class="navigation-header">
        <span>component</span>
        <i class="zmdi zmdi-more"></i>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#ui_dr"><div class="pull-left"><i class="zmdi zmdi-smartphone-setup mr-20"></i><span class="right-nav-text">UI Elements</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="ui_dr" class="collapse collapse-level-1 two-col-list">
          <li>
            <a href="panels-wells.html">Panels & Wells</a>
          </li>
          <li>
            <a href="modals.html">Modals</a>
          </li>
          <li>
            <a href="sweetalert.html">Sweet Alerts</a>
          </li>
          <li>
            <a href="notifications.html">notifications</a>
          </li>
          <li>
            <a href="typography.html">Typography</a>
          </li>
          <li>
            <a href="buttons.html">Buttons</a>
          </li>
          <li>
            <a href="accordion-toggle.html">Accordion / Toggles</a>
          </li>
          <li>
            <a href="tabs.html">Tabs</a>
          </li>
          <li>
            <a href="progressbars.html">Progress bars</a>
          </li>
          <li>
            <a href="skills-counter.html">Skills & Counters</a>
          </li>
          <li>
            <a href="pricing.html">Pricing Tables</a>
          </li>
          <li>
            <a href="nestable.html">Nestables</a>
          </li>
          <li>
            <a href="dorpdown.html">Dropdowns</a>
          </li>
          <li>
            <a href="bootstrap-treeview.html">Tree View</a>
          </li>
          <li>
            <a href="carousel.html">Carousel</a>
          </li>
          <li>
            <a href="range-slider.html">Range Slider</a>
          </li>
          <li>
            <a href="grid-styles.html">Grid</a>
          </li>
          <li>
            <a href="bootstrap-ui.html">Bootstrap UI</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-edit mr-20"></i><span class="right-nav-text">Forms</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="form_dr" class="collapse collapse-level-1 two-col-list">
          <li>
            <a href="form-element.html">Basic Forms</a>
          </li>
          <li>
            <a href="form-layout.html">form Layout</a>
          </li>
          <li>
            <a href="form-advanced.html">Form Advanced</a>
          </li>
          <li>
            <a href="form-mask.html">Form Mask</a>
          </li>
          <li>
            <a href="form-picker.html">Form Picker</a>
          </li>
          <li>
            <a href="form-validation.html">form Validation</a>
          </li>
          <li>
            <a href="form-wizard.html">Form Wizard</a>
          </li>
          <li>
            <a href="form-x-editable.html">X-Editable</a>
          </li>
          <li>
            <a href="cropperjs.html">Cropperjs</a>
          </li>
          <li>
            <a href="form-file-upload.html">File Upload</a>
          </li>
          <li>
            <a href="dropzone.html">Dropzone</a>
          </li>
          <li>
            <a href="bootstrap-wysihtml5.html">Bootstrap Wysihtml5</a>
          </li>
          <li>
            <a href="tinymce-wysihtml5.html">Tinymce Wysihtml5</a>
          </li>
          <li>
            <a href="summernote-wysihtml5.html">summernote</a>
          </li>
          <li>
            <a href="typeahead-js.html">typeahead</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"><i class="zmdi zmdi-chart-donut mr-20"></i><span class="right-nav-text">Charts </span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="chart_dr" class="collapse collapse-level-1 two-col-list">
          <li>
            <a href="flot-chart.html">Flot Chart</a>
          </li>
          <li>
            <a href="echart.html">Echart Chart</a>
          </li>
          <li>
            <a href="morris-chart.html">Morris Chart</a>
          </li>
          <li>
            <a href="chart.js.html">chartjs</a>
          </li>
          <li>
            <a href="chartist.html">chartist</a>
          </li>
          <li>
            <a href="easy-pie-chart.html">Easy Pie Chart</a>
          </li>
          <li>
            <a href="sparkline.html">Sparkline</a>
          </li>
          <li>
            <a href="peity-chart.html">Peity Chart</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#table_dr"><div class="pull-left"><i class="zmdi zmdi-format-size mr-20"></i><span class="right-nav-text">Tables</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="table_dr" class="collapse collapse-level-1 two-col-list">
          <li>
            <a href="basic-table.html">Basic Table</a>
          </li>
          <li>
            <a href="bootstrap-table.html">Bootstrap Table</a>
          </li>
          <li>
            <a href="data-table.html">Data Table</a>
          </li>
          <li>
            <a href="export-table.html">Export Table</a>
          </li>
          <li>
            <a href="responsive-data-table.html">RSPV DataTable</a>
          </li>
          <li>
            <a href="responsive-table.html">Responsive Table</a>
          </li>
          <li>
            <a href="editable-table.html">Editable Table</a>
          </li>
          <li>
            <a href="foo-table.html">Foo Table</a>
          </li>
          <li>
            <a href="jsgrid-table.html">Jsgrid Table</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#icon_dr"><div class="pull-left"><i class="zmdi zmdi-iridescent mr-20"></i><span class="right-nav-text">Icons</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="icon_dr" class="collapse collapse-level-1">
          <li>
            <a href="fontawesome.html">Fontawesome</a>
          </li>
          <li>
            <a href="themify.html">Themify</a>
          </li>
          <li>
            <a href="linea-icon.html">Linea</a>
          </li>
          <li>
            <a href="simple-line-icons.html">Simple Line</a>
          </li>
          <li>
            <a href="pe-icon-7.html">Pe-icon-7</a>
          </li>
          <li>
            <a href="glyphicons.html">Glyphicons</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#maps_dr"><div class="pull-left"><i class="zmdi zmdi-map mr-20"></i><span class="right-nav-text">maps</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="maps_dr" class="collapse collapse-level-1">
          <li>
            <a href="vector-map.html">Vector Map</a>
          </li>
          <li>
            <a href="google-map.html">Google Map</a>
          </li>
        </ul>
      </li>
      <li><hr class="light-grey-hr mb-10"/></li>
      <li class="navigation-header">
        <span>featured</span>
        <i class="zmdi zmdi-more"></i>
      </li>
      <li>
        <a class="active" href="javascript:void(0);" data-toggle="collapse" data-target="#pages_dr"><div class="pull-left"><i class="zmdi zmdi-google-pages mr-20"></i><span class="right-nav-text">Special Pages</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="pages_dr" class="collapse collapse-level-1 two-col-list">
          <li>
            <a class="active-page" href="blank.html">Blank Page</a>
          </li>
          <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#auth_dr">Authantication pages<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            <ul id="auth_dr" class="collapse collapse-level-2">
              <li>
                <a href="login.html">Login</a>
              </li>
              <li>
                <a href="signup.html">Register</a>
              </li>
              <li>
                <a href="forgot-password.html">Recover Password</a>
              </li>
              <li>
                <a href="reset-password.html">reset Password</a>
              </li>
              <li>
                <a href="locked.html">Lock Screen</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#invoice_dr">Invoice<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            <ul id="invoice_dr" class="collapse collapse-level-2">
              <li>
                <a href="invoice.html">Invoice</a>
              </li>
              <li>
                <a href="invoice-archive.html">Invoice Archive</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#error_dr">error pages<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            <ul id="error_dr" class="collapse collapse-level-2">
              <li>
                <a href="404.html">Error 404</a>
              </li>
              <li>
                <a href="500.html">Error 500</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="gallery.html">Gallery</a>
          </li>
          <li>
            <a href="timeline.html">Timeline</a>
          </li>
          <li>
            <a href="faq.html">FAQ</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="documentation.html"><div class="pull-left"><i class="zmdi zmdi-book mr-20"></i><span class="right-nav-text">documentation</span></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#dropdown_dr_lv1"><div class="pull-left"><i class="zmdi zmdi-filter-list mr-20"></i><span class="right-nav-text">multilevel</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="dropdown_dr_lv1" class="collapse collapse-level-1">
          <li>
            <a href="#">Item level 1</a>
          </li>
          <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#dropdown_dr_lv2">Dropdown level 2<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            <ul id="dropdown_dr_lv2" class="collapse collapse-level-2">
              <li>
                <a href="#">Item level 2</a>
              </li>
              <li>
                <a href="#">Item level 2</a>
              </li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </div>
  <!-- /Left Sidebar Menu -->

  <!-- Right Sidebar Menu -->
  <div class="fixed-sidebar-right">
    <ul class="right-sidebar">
      <li>
        <div  class="tab-struct custom-tab-1">
          <ul role="tablist" class="nav nav-tabs" id="right_sidebar_tab">
            <li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" id="chat_tab_btn" href="#chat_tab">chat</a></li>
            <li role="presentation" class=""><a  data-toggle="tab" id="messages_tab_btn" role="tab" href="#messages_tab" aria-expanded="false">messages</a></li>
            <li role="presentation" class=""><a  data-toggle="tab" id="todo_tab_btn" role="tab" href="#todo_tab" aria-expanded="false">todo</a></li>
          </ul>
          <div class="tab-content" id="right_sidebar_content">
            <div  id="chat_tab" class="tab-pane fade active in" role="tabpanel">
              <div class="chat-cmplt-wrap">
                <div class="chat-box-wrap">
                  <div class="add-friend">
                    <a href="javascript:void(0)" class="inline-block txt-grey">
                      <i class="zmdi zmdi-more"></i>
                    </a>
                    <span class="inline-block txt-dark">users</span>
                    <a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-plus"></i></a>
                    <div class="clearfix"></div>
                  </div>
                  <form role="search" class="chat-search pl-15 pr-15 pb-15">
                    <div class="input-group">
                      <input type="text" id="example-input1-group2" name="example-input1-group2" class="form-control" placeholder="Search">
                      <span class="input-group-btn">
												<button type="button" class="btn  btn-default"><i class="zmdi zmdi-search"></i></button>
												</span>
                    </div>
                  </form>
                  <div id="chat_list_scroll">
                    <div class="nicescroll-bar">
                      <ul class="chat-list-wrap">
                        <li class="chat-list">
                          <div class="chat-body">
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Clay Masse</span>
                                  <span class="time block truncate txt-grey">No one saves us but ourselves.</span>
                                </div>
                                <div class="status away"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user1.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Evie Ono</span>
                                  <span class="time block truncate txt-grey">Unity is strength</span>
                                </div>
                                <div class="status offline"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user2.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Madalyn Rascon</span>
                                  <span class="time block truncate txt-grey">Respect yourself if you would have others respect you.</span>
                                </div>
                                <div class="status online"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user3.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Mitsuko Heid</span>
                                  <span class="time block truncate txt-grey">I’m thankful.</span>
                                </div>
                                <div class="status online"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Ezequiel Merideth</span>
                                  <span class="time block truncate txt-grey">Patience is bitter.</span>
                                </div>
                                <div class="status offline"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user1.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Jonnie Metoyer</span>
                                  <span class="time block truncate txt-grey">Genius is eternal patience.</span>
                                </div>
                                <div class="status online"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user2.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Angelic Lauver</span>
                                  <span class="time block truncate txt-grey">Every burden is a blessing.</span>
                                </div>
                                <div class="status away"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user3.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Priscila Shy</span>
                                  <span class="time block truncate txt-grey">Wise to resolve, and patient to perform.</span>
                                </div>
                                <div class="status online"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                            <a href="javascript:void(0)">
                              <div class="chat-data">
                                <img class="user-img img-circle" src="img/user4.png" alt="user"/>
                                <div class="user-data">
                                  <span class="name block capitalize-font">Linda Stack</span>
                                  <span class="time block truncate txt-grey">Our patience will achieve more than our force.</span>
                                </div>
                                <div class="status away"></div>
                                <div class="clearfix"></div>
                              </div>
                            </a>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="recent-chat-box-wrap">
                  <div class="recent-chat-wrap">
                    <div class="panel-heading ma-0">
                      <div class="goto-back">
                        <a  id="goto_back" href="javascript:void(0)" class="inline-block txt-grey">
                          <i class="zmdi zmdi-chevron-left"></i>
                        </a>
                        <span class="inline-block txt-dark">ryan</span>
                        <a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-more"></i></a>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                    <div class="panel-wrapper collapse in">
                      <div class="panel-body pa-0">
                        <div class="chat-content">
                          <ul class="nicescroll-bar pt-20">
                            <li class="friend">
                              <div class="friend-msg-wrap">
                                <img class="user-img img-circle block pull-left" src="img/user.png" alt="user"/>
                                <div class="msg pull-left">
                                  <p>Hello Jason, how are you, it's been a long time since we last met?</p>
                                  <div class="msg-per-detail text-right">
                                    <span class="msg-time txt-grey">2:30 PM</span>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                            </li>
                            <li class="self mb-10">
                              <div class="self-msg-wrap">
                                <div class="msg block pull-right"> Oh, hi Sarah I'm have got a new job now and is going great.
                                  <div class="msg-per-detail text-right">
                                    <span class="msg-time txt-grey">2:31 pm</span>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                            </li>
                            <li class="self">
                              <div class="self-msg-wrap">
                                <div class="msg block pull-right">  How about you?
                                  <div class="msg-per-detail text-right">
                                    <span class="msg-time txt-grey">2:31 pm</span>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                            </li>
                            <li class="friend">
                              <div class="friend-msg-wrap">
                                <img class="user-img img-circle block pull-left" src="img/user.png" alt="user"/>
                                <div class="msg pull-left">
                                  <p>Not too bad.</p>
                                  <div class="msg-per-detail  text-right">
                                    <span class="msg-time txt-grey">2:35 pm</span>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        <div class="input-group">
                          <input type="text" id="input_msg_send" name="send-msg" class="input-msg-send form-control" placeholder="Type something">
                          <div class="input-group-btn emojis">
                            <div class="dropup">
                              <button type="button" class="btn  btn-default  dropdown-toggle" data-toggle="dropdown" ><i class="zmdi zmdi-mood"></i></button>
                              <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="javascript:void(0)">Action</a></li>
                                <li><a href="javascript:void(0)">Another action</a></li>
                                <li class="divider"></li>
                                <li><a href="javascript:void(0)">Separated link</a></li>
                              </ul>
                            </div>
                          </div>
                          <div class="input-group-btn attachment">
                            <div class="fileupload btn  btn-default"><i class="zmdi zmdi-attachment-alt"></i>
                              <input type="file" class="upload">
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div id="messages_tab" class="tab-pane fade" role="tabpanel">
              <div class="message-box-wrap">
                <div class="msg-search">
                  <a href="javascript:void(0)" class="inline-block txt-grey">
                    <i class="zmdi zmdi-more"></i>
                  </a>
                  <span class="inline-block txt-dark">messages</span>
                  <a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-search"></i></a>
                  <div class="clearfix"></div>
                </div>
                <div class="set-height-wrap">
                  <div class="streamline message-box nicescroll-bar">
                    <a href="javascript:void(0)">
                      <div class="sl-item unread-message">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Clay Masse</span>
                          <span class="inline-block font-11  pull-right message-time">12:28 AM</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject"> message sent via your monster market profile</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsu messm quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                    <a href="javascript:void(0)">
                      <div class="sl-item">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user1.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Evie Ono</span>
                          <span class="inline-block font-11  pull-right message-time">1 Feb</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject">Pogody theme support</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                    <a href="javascript:void(0)">
                      <div class="sl-item">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user2.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Madalyn Rascon</span>
                          <span class="inline-block font-11  pull-right message-time">31 Jan</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject">Congratulations from design nominees</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                    <a href="javascript:void(0)">
                      <div class="sl-item unread-message">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user3.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Ezequiel Merideth</span>
                          <span class="inline-block font-11  pull-right message-time">29 Jan</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject"> item support message</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                    <a href="javascript:void(0)">
                      <div class="sl-item unread-message">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user4.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Jonnie Metoyer</span>
                          <span class="inline-block font-11  pull-right message-time">27 Jan</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject">Help with beavis contact form</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                    <a href="javascript:void(0)">
                      <div class="sl-item">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Priscila Shy</span>
                          <span class="inline-block font-11  pull-right message-time">19 Jan</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject">Your uploaded theme is been selected</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                    <a href="javascript:void(0)">
                      <div class="sl-item">
                        <div class="sl-avatar avatar avatar-sm avatar-circle">
                          <img class="img-responsive img-circle" src="img/user1.png" alt="avatar"/>
                        </div>
                        <div class="sl-content">
                          <span class="inline-block capitalize-font   pull-left message-per">Linda Stack</span>
                          <span class="inline-block font-11  pull-right message-time">13 Jan</span>
                          <div class="clearfix"></div>
                          <span class=" truncate message-subject"> A new rating has been received</span>
                          <p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div  id="todo_tab" class="tab-pane fade" role="tabpanel">
              <div class="todo-box-wrap">
                <div class="add-todo">
                  <a href="javascript:void(0)" class="inline-block txt-grey">
                    <i class="zmdi zmdi-more"></i>
                  </a>
                  <span class="inline-block txt-dark">todo list</span>
                  <a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-plus"></i></a>
                  <div class="clearfix"></div>
                </div>
                <div class="set-height-wrap">
                  <!-- Todo-List -->
                  <ul class="todo-list nicescroll-bar">
                    <li class="todo-item">
                      <div class="checkbox checkbox-default">
                        <input type="checkbox" id="checkbox01"/>
                        <label for="checkbox01">Record The First Episode</label>
                      </div>
                    </li>
                    <li>
                      <hr class="light-grey-hr"/>
                    </li>
                    <li class="todo-item">
                      <div class="checkbox checkbox-pink">
                        <input type="checkbox" id="checkbox02"/>
                        <label for="checkbox02">Prepare The Conference Schedule</label>
                      </div>
                    </li>
                    <li>
                      <hr class="light-grey-hr"/>
                    </li>
                    <li class="todo-item">
                      <div class="checkbox checkbox-warning">
                        <input type="checkbox" id="checkbox03" checked/>
                        <label for="checkbox03">Decide The Live Discussion Time</label>
                      </div>
                    </li>
                    <li>
                      <hr class="light-grey-hr"/>
                    </li>
                    <li class="todo-item">
                      <div class="checkbox checkbox-success">
                        <input type="checkbox" id="checkbox04" checked/>
                        <label for="checkbox04">Prepare For The Next Project</label>
                      </div>
                    </li>
                    <li>
                      <hr class="light-grey-hr"/>
                    </li>
                    <li class="todo-item">
                      <div class="checkbox checkbox-danger">
                        <input type="checkbox" id="checkbox05" checked/>
                        <label for="checkbox05">Finish Up AngularJs Tutorial</label>
                      </div>
                    </li>
                    <li>
                      <hr class="light-grey-hr"/>
                    </li>
                    <li class="todo-item">
                      <div class="checkbox checkbox-purple">
                        <input type="checkbox" id="checkbox06" checked/>
                        <label for="checkbox06">Finish Infinity Project</label>
                      </div>
                    </li>
                    <li>
                      <hr class="light-grey-hr"/>
                    </li>
                  </ul>
                  <!-- /Todo-List -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
  <!-- /Right Sidebar Menu -->



  <!-- Main Content -->
  <div class="page-wrapper">
    <div class="container">
      <!-- Title -->
      <div class="row heading-bg">
        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
          <h5 class="txt-dark"></h5>
        </div>
        <!-- Breadcrumb -->
        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/index.jsp">Dashboard</a></li>
            <li class="active"><span>Employee Table</span></li>
          </ol>
        </div>
        <!-- /Breadcrumb -->
      </div>
      <!-- /Title -->

      <div class="row">

        <!-- Bordered Table -->
        <div class="col-sm-12">
          <div class="panel panel-warning card-view">
            <div class="panel-heading">
              <div class="pull-left">
                <h6 class="panel-title txt-light">Vehicle Details</h6>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="panel-wrapper collapse in">
              <div class="panel-body">
                <div class="table-wrap mt-40">
                  <div class="table-responsive">

                    <table  id="example"  data-paging="true" class="table table-striped display  pb-30">
                      <thead>
                      <tr>
                        <th>ID</th>
                        <th >First Name</th>
                        <th>Last Name</th>
                        <th>Job Title</th>
                        <th>Qualification</th>
                        <th>Training in waste Management</th>
                        <th>Contact</th>
                        <th class="text-nowrap">Action</th>


                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="Employee" items="${All_Employee}">
                        <c:set var="countEmployee" value="${countEmployee+1}" scope="page"/>

                        <tr>
                          <td class="Employee_Id">${Employee.company_Personnel_Id}</td>
                          <td class="First_Name">${Employee.first_Name}</td>
                          <td class="Last_Name">${Employee.last_Name}</td>
                          <td class="Job_Title">${Employee.job_Title}</td>
                          <td class="Qualification">${Employee.qualification}</td>
                          <td class="training">${Employee.trained_In_Waste_Management}</td>
                          <td class="Contact">${Employee.contact}</td>
                          <td class="text-nowrap"><span class="pencil-Edit" id="${countEmployee}" style="" data-toggle="modal" onclick="toggleModal(this, id)" data-target="#Officer-Registration-modal"> <a  class="mr-25" data-toggle="tooltip" data-original-title="Edit"> <i class="fa fa-pencil text-inverse m-r-10"></i> </a></span> <a data-toggle="tooltip" data-original-title="Close"> <i class="fa fa-close text-danger"></i> </a> </td>
                        </tr>
                      </c:forEach>

                      </tbody>
                    </table>


                  </div>

                  <div id="Officer-Registration-modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <h5 class="modal-title" id="myLargeModalLabel">Editing Employee Information for ${Company_info.company_Name}</h5>
                        </div>
                        <form action="ServletDwmpc" method="post">
                          <div class="modal-body">
                            <input type="hidden" id="command" name="command" class="hidden" value="RegisteringEmployee"/>
                            <input type="hidden" id="action" name="action"  class="hidden" value="EditingEmployee"/>
                            <input type="hidden" name="Company Id" class="hidden" value="${Company_info.company_Id}"/>
                            <input type="hidden" id="Employee_Id" name="Employee Id" class="hidden" value=""/>

                            <div class="form-group">
                              <div class="row">
                                <div class="col-md-6 col-xs-12 mt-40">
                                  <label class="control-label mb-10" for="First_Name"> First Name(required):</label>
                                  <input type="text" id="First_Name" name="First Name"  class="form-control required"   required/>
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-6 col-xs-12 mt-40">
                                  <label class="control-label mb-10" for="Last_Name"> Last Name(required):</label>
                                  <input type="text" id="Last_Name" name="Last Name"  class="form-control required"   required/>
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="row">
                                <div class="col-md-6 col-xs-12">
                                  <label class="control-label mb-10" for="Job_Title"> Job Title(required):</label>
                                  <input type="text" class="form-control" id="Job_Title" name="Position/job Title" placeholder="Job Title">
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-6 col-xs-12">
                                  <label class="control-label mb-10" for="Qualification"> Qualification(required):</label>
                                  <input type="text" class="form-control" id="Qualification" name="Qualification" placeholder="Qualification" required>
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label mb-10" for="Contact">Contact(required):</label>
                              <input type="text" id="Contact" name="Contact" data-mask="+267 99 999 999" value=""  class="form-control required"  required/>
                            </div>
                            <div class="form-group">
                              <label for="training" class="col-sm-3 control-label">Training in waste Management(required):</label>
                              <select class="selectpicker" id= "training" name="training" data-style="form-control btn-default btn-outline">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                              </select>
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Save Changes</span></button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>

                  <script>
                    let tableRowElement;
                    function toggleModal(element) {

                      tableRowElement = element.parentElement.parentElement;

                      const First_Name = tableRowElement.getElementsByClassName('First_Name')[0].innerHTML;
                      const Last_Name = tableRowElement.getElementsByClassName('Last_Name')[0].innerHTML;
                      const Job_Title = tableRowElement.getElementsByClassName('Job_Title')[0].innerHTML;
                      const Qualification = tableRowElement.getElementsByClassName('Qualification')[0].innerHTML;
                      const training = tableRowElement.getElementsByClassName('training')[0].innerHTML;
                      const Contact = tableRowElement.getElementsByClassName('Contact')[0].innerHTML;
                      const Employee_Id = tableRowElement.getElementsByClassName('Employee_Id')[0].innerHTML;

                      document.getElementById('First_Name').value = First_Name;
                      document.getElementById('Last_Name').value = Last_Name;
                      document.getElementById('Job_Title').value=Job_Title;
                      document.getElementById('Qualification').value = Qualification;
                      document.getElementById('training').value = training;
                      $("#training").selectpicker("refresh");
                      document.getElementById('Employee_Id').value = Employee_Id;
                      document.getElementById('Contact').value = Contact;


                    }


                  </script>

                </div>

                </br>
                <div style="float: right" class="row">
                  <button type="button" onclick="location.href='Employee-form.jsp';" data-toggle="modal" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Add New Employee</span></button>
                </div>
              </div>

            </div>

          </div>
        </div>
        <!-- /Bordered Table -->

      </div>

      <!-- Footer -->
      <footer class="footer container-fluid pl-30 pr-30">
        <div class="row">
          <div class="col-sm-12">
            <p>2018 &copy; Zapily. Pampered by Hencework</p>
          </div>
        </div>
      </footer>
      <!-- /Footer -->
    </div>
  </div>
  <!-- /Main Content -->

</div>
<!-- /#wrapper -->

<!-- JavaScript -->

<!-- /#wrapper -->

<!-- JavaScript -->

<!-- jQuery -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>


<!-- Bootstrap Core JavaScript -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
<script src="dist/js/modal-data.js"></script>

<!-- Piety JavaScript -->
<script src="vendors/bower_components/peity/jquery.peity.min.js"></script>
<script src="dist/js/peity-data.js"></script>

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- Owl JavaScript -->
<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>

<!-- Data table JavaScript -->
<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="vendors/bower_components/jszip/dist/jszip.min.js"></script>
<script src="vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
<script src="vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>

<script src="vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="dist/js/export-table-data.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js" defer></script>



</body>

</html>


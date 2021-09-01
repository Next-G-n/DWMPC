<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>DWMPC</title>
	<meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework"/>

	<!-- jquery-steps css -->
	<link rel="stylesheet" href="../vendors/bower_components/jquery.steps/demo/css/jquery.steps.css">


	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="icon" href="icon.ico" type="image/x-icon">
	
	<!-- Data table CSS -->
	<link href="../vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
	
	<!-- Toast CSS -->
	<link href="../vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
	
	<!-- bootstrap-select CSS -->
	<link href="../vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>	
	
	<!-- Calendar CSS -->
	<link href="../vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <!-- bootstrap-touchspin CSS -->
    <link href="../vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css"/>


    <!-- Custom CSS -->
	<link href="dist/css/style.css" rel="stylesheet" type="text/css">
	<style>
		#example_paginate, #example_info{
			display: none;
		}
	</style>
</head>

<body>
	<!-- Preloader -->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!-- /Preloader -->
    <div class="wrapper theme-1-active pimary-color-green">
		<!-- Top Menu Items -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="mobile-only-brand pull-left">
				<div class="nav-header pull-left">
					<div class="logo-wrap">
						<a href="${pageContext.request.contextPath}/ltr/index.jsp">
							<img class="brand-img" src="../img/logo2.png" alt="brand"/>
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
											<a href="inbox.jsp" class="connection-item">
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
												<a href="${pageContext.request.contextPath}/ltr/index.jsp">Analytical</a>
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
											<div class="pull-right"><span class="label label-green">hot</span>
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
												<img src="../img/chair.jpg" alt="chair">
												<span>Circle chair</span>
											</a>
											<a href="#">
												<img src="../img/chair2.jpg" alt="chair">
												<span>square chair</span>
											</a>
											<a href="#">
												<img src="../img/chair3.jpg" alt="chair">
												<span>semi circle chair</span>
											</a>
											<a href="#">
												<img src="../img/chair4.jpg" alt="chair">
												<span>wooden chair</span>
											</a>
											<a href="#">
												<img src="../img/chair2.jpg" alt="chair">
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
												<img class="img-responsive" src="../img/avatar.jpg" alt="avatar"/>
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
						<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../img/user1.png" alt="user_auth" class="user-auth-img img-circle"/><span class="user-online-status"></span></a>
						<ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
							<li>
								<a href="profile.html"><i class="zmdi zmdi-account"></i><span>Profile</span></a>
							</li>
							<li>
								<a href="#"><i class="zmdi zmdi-card"></i><span>my balance</span></a>
							</li>
							<li>
								<a href="inbox.jsp"><i class="zmdi zmdi-email"></i><span>Inbox</span></a>
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
					<a class="active" href="javascript:void(0);" data-toggle="collapse" data-target="#dashboard_dr"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i><span class="right-nav-text">Dashboard</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
					<ul id="dashboard_dr" class="collapse collapse-level-1">
						<li>
							<a href="${pageContext.request.contextPath}/ltr/index.jsp">Analytical</a>
						</li>
						<li>
							<a href="index2.html">Demographic</a>
						</li>
						<li>
							<a href="index3.html">Project</a>
						</li>
						<li>
							<a class="active-page" href="index4.html">Hospital</a>
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
					<a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr"><div class="pull-left"><i class="zmdi zmdi-shopping-basket mr-20"></i><span class="right-nav-text">E-Commerce</span></div><div class="pull-right"><span class="label label-green">hot</span></div><div class="clearfix"></div></a>
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
									<a href="inbox.jsp">inbox</a>
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
					<a href="javascript:void(0);" data-toggle="collapse" data-target="#ui_dr"><div class="pull-left"><i class="zmdi zmdi-smartphone-setup mr-20"></i><span class="right-nav-text">Skip Hire PTY</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
					<ul id="ui_dr" class="collapse collapse-level-1 two-col-list">
						<li class="active" role="presentation">
							<a  data-toggle="tab"  role="tab" href="#Company_info" href="#Company_info2" aria-expanded="true">Information</a>
						</li>
						<li >
							<a aria-expanded="false"  data-toggle="tab" role="tab"  href="#Vehicle_info">Vehicles</a>
						</li>
						<li>
							<a  data-toggle="tab"  role="tab"  aria-expanded="false">Attachments</a>
						</li>
						<li>
							<a href="#">Employees</a>
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
					<a href="javascript:void(0);" data-toggle="collapse" data-target="#pages_dr"><div class="pull-left"><i class="zmdi zmdi-google-pages mr-20"></i><span class="right-nav-text">Special Pages</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
					<ul id="pages_dr" class="collapse collapse-level-1 two-col-list">
						<li>
							<a href="blank.html">Blank Page</a>
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
																	<img class="user-img img-circle"  src="../img/user.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user1.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user2.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user3.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user1.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user2.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user3.png" alt="user"/>
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
																	<img class="user-img img-circle"  src="../img/user4.png" alt="user"/>
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
																	<img class="user-img img-circle block pull-left"  src="../img/user.png" alt="user"/>
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
																	<img class="user-img img-circle block pull-left"  src="../img/user.png" alt="user"/>
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
														<img class="img-responsive img-circle" src="../img/user.png" alt="avatar"/>
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
														<img class="img-responsive img-circle" src="../img/user1.png" alt="avatar"/>
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
														<img class="img-responsive img-circle" src="../img/user2.png" alt="avatar"/>
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
														<img class="img-responsive img-circle" src="../img/user3.png" alt="avatar"/>
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
														<img class="img-responsive img-circle" src="../img/user4.png" alt="avatar"/>
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
														<img class="img-responsive img-circle" src="../img/user.png" alt="avatar"/>
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
														<img class="img-responsive img-circle" src="../img/user1.png" alt="avatar"/>
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
			<div class="container pt-25">
				<!-- Row -->
				<div  class=" row">
					<div id="Company_info"  class="tab-pane fade in active tab-content col-lg-9 col-md-6 col-sm-12 col-xs-12">
						<div class=" panel panel-warning card-view" role="tabpanel">
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-light">Company Information</h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<div  class="panel-wrapper collapse in">
								<div  class="panel-body  pagination-lg">
									<table class="table table-bordered m-0">
										<thead>
										<tr>
											<th style="width: 20%;"></th>
											<th>Description</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td><code>Region</code> </td>
											<td class="Region">Southern District</td>
										</tr>

										<tr>
											<td><code>Email</code></td>
											<td class="Email">WasteCorp@gov.ac.bw</td>
										</tr>
										<tr>
											<td><code>Street Address</code> </td>
											<td class="Street-Address">P O box 20912</td>
										</tr>
										<tr>
											<td><code>Street Address 2</code> </td>
											<td class="Street-Address2"></td>
										</tr>

										<tr>
											<td><code>Company Status</code></td>
											<td class="Company-status">Local Government Institution</td>
										</tr>
										<tr>
											<td><code>Location</code></td>
											<td class="Location">Kanye, 155278, Plot Mofati</td>
										</tr>
										<tr>
											<td><code>Contact</code> </td>
											<td class="Contact">+267 75 763 535,+267 757 3535</td>
										</tr>

										<tr>
											<td><code>Fax</code></td>
											<td class="Fax">+267 348 7658</td>
										</tr>
										</tbody>
									</table>

									<button type="button" onclick="toggleModal() " data-target="#Company-information-modal" data-toggle="modal"  style="float: right" class="btn btn-primary btn-anim btn-rounded"><i class="fa fa-pencil"></i><span class="btn-text">Edit</span></button>
									<button type="button" onclick="location.href='companyForm.jsp';" data-target="#Company-information-modal" data-toggle="modal"  style="float: right; margin-right: 5px" class="btn btn-primary btn-anim btn-rounded"><i class="fa  fa-building-o"></i><span class="btn-text">Add New Company</span></button>
								</div>
							</div>
						</div>

					</div>

					<div id="Company-information-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h5 class="modal-title">Editing Company Information for $Name</h5>
								</div><form>
								<div class="modal-body">

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label for="Company-name" class="control-label mb-10">Company Name (required):</label>
                                                <input type="text" class="form-control" id="Company-name" required>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10">Status of applicant(required):</label>
                                                <select id="Company-status" class="selectpicker" data-style="form-control btn-default btn-outline">
                                                    <option value="Company">Company</option>
                                                    <option value="Non-Governmental Organisation">Non-Governmental Organisation</option>
                                                    <option value="Local Government Institution">Local Government Institution</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Street-address">Street Address (required):</label>
                                                <input id="Street-Address" type="text" name="Street_Address" class="form-control required" value="" required/>

                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">

                                                <label class="control-label mb-10" for="Street-address2">Street Address 2 (Optional):</label>
                                                <input id="Street-Address2" type="text" name="Street_Address2" class="form-control" value=""/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Region">Region (required):</label>
                                                <input id="Region" type="text" name="Region"  class="form-control required" value="" required/>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="City">City/Town/Village (required):</label>
                                                <input id="City" type="text" name="City" list="location_suggestions" class="form-control required" value="" required/>
                                                <datalist id="location_suggestions">

                                                    <option value="Phiring">
                                                    <option value="Phologolo">
                                                    <option value="Boitshoko">
                                                    <option value="Selemela ">
                                                    <option value="Madirelo ">
                                                    <option value="Tutume">
                                                    <option value="Sebina">
                                                    <option value="Phuduhudu  ">
                                                    <option value="Inalegolo  ">
                                                    <option value="Hukuntsi  ">
                                                    <option value="Tshane  ">
                                                    <option value="Kang  ">
                                                    <option value="kgale View">
                                                    <option value="Maleshe  ">
                                                    <option value="Maralaleng  ">
                                                    <option value="Kokotsha  ">
                                                    <option value="Maubelo  ">
                                                    <option value="Khwawa  ">
                                                    <option value="Draaihoek  ">
                                                    <option value="Bray  ">
                                                    <option value="Bokspits  ">
                                                    <option value="Vaalhoek  ">
                                                    <option value="Gachibana  ">
                                                    <option value="Bogogobo  ">
                                                    <option value="Tsabong  ">
                                                    <option value="Middlepits  ">
                                                    <option value="Kolonkwane  ">
                                                    <option value="Werda  ">
                                                    <option value="Qabo  ">
                                                    <option value="Qabo  ">
                                                    <option value="Kacgae  ">
                                                    <option value="New Xanagas">
                                                    <option value="Groote Laagte">
                                                    <option value="Ncojane  ">
                                                    <option value="Makunda">
                                                    <option value="Charles Hil">
                                                    <option value="West Hanahai">
                                                    <option value=" Chobokwane">
                                                    <option value="Karakobis">
                                                    <option value="Tsootsha">
                                                    <option value="Dekar">
                                                    <option value="Ghanzi">
                                                    <option value="Morutsha  ">
                                                    <option value="Katamaga">
                                                    <option value="Daonara">
                                                    <option value="Xaxaba">
                                                    <option value="Pandamatenga">
                                                    <option value="Satau">
                                                    <option value="Pakarungu ">
                                                    <option value="Muchinje">
                                                    <option value="Mabele">
                                                    <option value="Lesoma  ">
                                                    <option value="Lesoma  ">
                                                    <option value="Kazungala  ">
                                                    <option value="Kasane  ">
                                                    <option value="Kachikau  ">
                                                    <option value="Kajaja  ">
                                                    <option value="Etsha 1  ">
                                                    <option value="Eretsha  ">
                                                    <option value="Mogomotho  ">
                                                    <option value="Xhauga  ">
                                                    <option value="Samochema  ">
                                                    <option value="Sekondomboro  ">
                                                    <option value="Tobere  ">
                                                    <option value="Mohembo East  ">
                                                    <option value="Xaxa  ">
                                                    <option value="Gumare  ">
                                                    <option value="Tubu  ">
                                                    <option value="Gani  ">
                                                    <option value="Nokaneng  ">
                                                    <option value="Mohembo West">
                                                    <option value="Etsha 13  ">
                                                    <option value="Nxaunxau  ">
                                                    <option value="Shakawe  ">
                                                    <option value="Nxamasere  ">
                                                    <option value="Sepopa  ">
                                                    <option value="Ikoga  ">
                                                    <option value="Kauxwhi  ">
                                                    <option value="Etsha 6  ">
                                                    <option value="Xakao  ">
                                                    <option value="Qangwa  ">
                                                    <option value="Mokgacha  ">
                                                    <option value="Gonutsuga  ">
                                                    <option value="Beetsha  ">
                                                    <option value="Seronga  ">
                                                    <option value="Ngarange  ">
                                                    <option value="Bobonong">
                                                    <option value="Chadibe">
                                                    <option value="Gweta">
                                                    <option value="Letlhakane">
                                                    <option value="Maunatlala">
                                                    <option value="Mathangwane">
                                                    <option value="Mandunyane">
                                                    <option value="Mahalapye">
                                                    <option value="Mmadinare">
                                                    <option value="Mopipi">
                                                    <option value="Nata">
                                                    <option value="Orapa">
                                                    <option value="Palapye">
                                                    <option value="Rakops">
                                                    <option value="Selibe Phikwe">
                                                    <option value="Serowe">
                                                    <option value="Shoshong">
                                                    <option value="Charles Hills">
                                                    <option value="Tshabong">
                                                    <option value="Kang">
                                                    <option value="Hukuntsi">
                                                    <option value="Bokaa">
                                                    <option value="Mochudi">
                                                    <option value="Letlhakeng">
                                                    <option value="Gabane">
                                                    <option value="Mmankgodi">
                                                    <option value="Mmopane">
                                                    <option value="Mogoditshane">
                                                    <option value="Molepolole">
                                                    <option value="Thamaga">
                                                    <option value="Gaborone">
                                                    <option value="Masunga">
                                                    <option value="Tati Siding">
                                                    <option value="Etsha">
                                                    <option value="Kasane">
                                                    <option value="Maun">
                                                    <option value="Okavango Delta">
                                                    <option value="Shakawe">
                                                    <option value="Gaborone">
                                                    <option value="Lobatse">
                                                    <option value="Otse">
                                                    <option value="Tlokweng">
                                                    <option value="Jwaneng">
                                                    <option value="Kanye">
                                                    <option value="Moshupa">
                                                </datalist>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Plot_Number">Plot Number (required):</label>
                                                <input id="Plot_Number" type="text" name="Plot_Number" class="form-control required" value="" required/>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Ward">Ward (required):</label>
                                                <input id="Ward" type="text" name="Ward" class="form-control required" value="" required/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Telephone">Telephone (required):</label>
                                                <input id="Telephone" type="text" data-mask="+267 999 9999" name="telephone" class="form-control required" value="" required/>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Fax">Fax (required):</label>
                                                <input id="Fax" type="text" data-mask="+267 999 9999" name="fax" class="form-control required" value="" required/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="Email">Company Email (required):</label>
                                                <input id="Email" type="email" name="Company_Email" class="form-control required" value="" required />
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10" for="phoneNumber">Phone Number (required):</label>
                                                <input id="phoneNumber" data-mask="+267 99 999 999"  type="tel" name="Phone_Number"  class="form-control required" value="" required/>
                                            </div>
                                        </div>
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


					<div id="Company_info2"  class="tab-pane fade in active col-lg-3 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view pa-0">
							<div class="panel-wrapper collapse in">
								<div class="panel-body pa-0">
									<div class="sm-data-box">
										<div class="container-fluid">
											<div class="row">
												<div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
													<span class="txt-dark block counter"><span class="counter-anim">25</span></span>
													<span class="weight-500 uppercase-font block font-13">Employees</span>
												</div>
												<div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
													<i class="icon-people data-right-rep-icon txt-light-grey"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default card-view pa-0">
							<div class="panel-wrapper collapse in">
								<div class="panel-body pa-0">
									<div class="sm-data-box">
										<div class="container-fluid">
											<div class="row">
												<div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
													<span class="txt-dark block counter"><span class="counter-anim">43</span></span>
													<span class="weight-500 uppercase-font block">OPD Patients</span>
												</div>
												<div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
													<i class="icon-control-rewind data-right-rep-icon txt-light-grey"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default card-view pa-0 bg-dark-green">
							<div class="panel-wrapper collapse in">
								<div class="panel-body pa-0">
									<div class="sm-data-box">
										<div class="container-fluid">
											<div class="row">
												<div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left txt-light">
													<span class="block counter"><span class="counter-anim">180</span></span>
													<span class="weight-500 uppercase-font block">Oprations</span>
												</div>
												<div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
													<i class="icon-layers data-right-rep-icon txt-light"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel card-view">
							<div class="panel-heading small-panel-heading relative">
								<div class="pull-left">
									<h6 class="panel-title">Hospital Revenue</h6>
								</div>
								<div class="clearfix"></div>
								<div class="head-overlay"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body row pa-0">
									<div class="sm-data-box">
										<div class="container-fluid">
											<div class="row">
												<div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
													<span class="block"><i class="zmdi zmdi-trending-up txt-success font-18 mr-5"></i><span class="weight-500 uppercase-font">growth</span></span>
													<span class="txt-dark block counter">$<span class="counter-anim">15,678</span></span>
												</div>
												<div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
													<div id="sparkline_1" class="sp-small-chart" ></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

                    <script>
                        function toggleModal() {
                            const Region = document.getElementsByClassName('Region')[0].innerHTML;
                            const Email = document.getElementsByClassName('Email')[0].innerHTML;
                            const Street_Address = document.getElementsByClassName('Street-Address')[0].innerHTML;
                            const Street_Address2 = document.getElementsByClassName('Street-Address2')[0].innerHTML;
                            const Company_status = document.getElementsByClassName('Company-status')[0].innerHTML;
                            const Location = document.getElementsByClassName('Location')[0].innerHTML;
                            const Contact = document.getElementsByClassName('Contact')[0].innerHTML;
                            const Fax = document.getElementsByClassName('Fax')[0].innerHTML;

                            const Contact2=Contact.replace("+267 ","");


                            document.getElementById('Region').value = Region;
                            document.getElementById('Email').value = Email;
                            document.getElementById('Street-Address').value = Street_Address;
                            document.getElementById('Street-Address2').value = Street_Address2;
                            document.getElementById('Company-status').value = Company_status;
                            $("#Company-status").selectpicker("refresh");
                            document.getElementById('Plot_Number').value = Location.split(",")[1];
                            document.getElementById('Ward').value = Location.split(",")[2];
                            document.getElementById('City').value = Location.split(",")[0];
                            document.getElementById('Telephone').value =  Contact2.split(",")[1];
                            document.getElementById('phoneNumber').value = Contact2.split(",")[0];
                            document.getElementById('Fax').value = Fax.replace("+267 ","");
                        }
                        function removeValue(){
                            document.getElementById('Region').value = "";
                            document.getElementById('Email').value = "";
                            document.getElementById('Street-Address').value = "";
                            document.getElementById('Street-Address2').value = "";
                            document.getElementById('Company-status').value = "Company";
                            $("#Company-status").selectpicker("refresh");
                            document.getElementById('Plot_Number').value = "";
                            document.getElementById('Ward').value = "";
                            document.getElementById('City').value = "";
                            document.getElementById('Telephone').value =  "";
                            document.getElementById('phoneNumber').value = "";
                            document.getElementById('Fax').value = "";
                        }
                    </script>
				</div>
				<!-- /Row -->
				<div  class=" row">
					<!-- Table Hover -->

					<!-- /Table Hover -->
				</div>
			</div>

			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>2021 &copy; Created by Next-gen</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->

		</div>
        <!-- /Main Content -->

    </div>
    <!-- /#wrapper -->
	
	<!-- JavaScript -->
	
    <!-- jQuery -->
    <script src="../vendors/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>

    <!-- Bootstrap Touchspin JavaScript -->
    <script src="../vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>


    <!-- Data table JavaScript -->
	<script src="../vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="../vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script src="../vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script src="../vendors/bower_components/jszip/dist/jszip.min.js"></script>
	<script src="../vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
	<script src="../vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>

	<script src="../vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="../vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script src="dist/js/export-table-data.js"></script>
	
	<!-- Slimscroll JavaScript -->
	<script src="dist/js/jquery.slimscroll.js"></script>
	
	<!-- EChartJS JavaScript -->
	<script src="../vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
	<script src="../vendors/echarts-liquidfill.min.js"></script>
	<script src="../vendors/ecStat.min.js"></script>
	
	<!-- Toast JavaScript -->
	<script src="../vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
		
	<!-- Progressbar Animation JavaScript -->
	<script src="../vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="../vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>
	
	<!-- Fancy Dropdown JS -->
	<script src="dist/js/dropdown-bootstrap-extended.js"></script>
	
	<!-- Sparkline JavaScript -->
	<script src="../vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>
	
	<!-- Owl JavaScript -->
	<script src="../vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
	
	<!-- Calender JavaScripts -->
	<script src="../vendors/bower_components/moment/min/moment.min.js"></script>
	<script src="../vendors/jquery-ui.min.js"></script>
	<script src="../vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
	<script src="dist/js/fullcalendar-data.js"></script>
	
	<!-- Switchery JavaScript -->
	<script src="../vendors/bower_components/switchery/dist/switchery.min.js"></script>
	
	<!-- Bootstrap Select JavaScript -->
	<script src="../vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	
	<!-- Init JavaScript -->
	<script src="dist/js/init.js"></script>
	<script src="dist/js/dashboard4-data.js"></script>



</body>

</html>

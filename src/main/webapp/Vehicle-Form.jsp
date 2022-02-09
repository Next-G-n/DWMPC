<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>DWMPC || Vehicle Registration Form</title>
    <meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
    <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
    <meta name="author" content="hencework"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="icon.ico">
    <link rel="icon" href="icon.ico" type="image/x-icon">
    <!-- vector map CSS -->
    <link href="vendors/bower_components/jquery-wizard.js/css/wizard.css" rel="stylesheet" type="text/css"/>

    <!-- bootstrap-select CSS -->
    <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

    <!-- Bootstrap Dropify CSS -->
    <link href="vendors/bower_components/dropify/dist/css/dropify.min.css" rel="stylesheet" type="text/css"/>

    <!--alerts CSS -->
    <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">


    <!-- Custom CSS -->
    <link href="dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<!--Preloader-->
<div class="preloader-it">
    <div class="la-anim-1"></div>
</div>
<!--/Preloader-->
<div class="wrapper theme-1-active pimary-color-pink">

    <!-- Top Menu Items -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="mobile-only-brand pull-left">
            <div class="nav-header pull-left">
                <div class="logo-wrap">
                    <a href="${pageContext.request.contextPath}/Home.jsp">
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
                    <a class="tst2" href="#"><i class="zmdi zmdi-settings top-nav-icon"></i></a>
                </li>
                <li class="dropdown app-drp">
                    <a href="#"  class="tst2" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>
                </li>
                <li class="dropdown full-width-drp">
                    <a href="#" class="tst2" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-more-vert top-nav-icon"></i></a>
                    <ul class="dropdown-menu mega-menu pa-0" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                    </ul>
                </li>
                <li class="dropdown alert-drp">
                    <a href="#" class="dropdown-toggle" class="tst2" data-toggle="dropdown"><i class="zmdi zmdi-notifications top-nav-icon"></i><span class="top-nav-icon-badge">5</span></a>
                </li>
                <li class="dropdown auth-drp">
                    <a href="#" class="tst2" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="img/user1.png" alt="user_auth" class="user-auth-img img-circle"/><span class="user-online-status"></span></a>
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
                <a class="active" href="javascript:void(0);" data-toggle="collapse" data-target="#dashboard_dr"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i>Home<span class="right-nav-text"></span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="#" id="open_profile" onclick="document.getElementById('todo_tab_btn').click();" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="zmdi zmdi-account mr-20"></i><span class="right-nav-text">Profile</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li><hr class="light-grey-hr mb-10"/></li>
            <li class="navigation-header">
                <span>component</span>
                <i class="zmdi zmdi-more"></i>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#ui_dr"><div class="pull-left"><i class="zmdi zmdi-smartphone-setup mr-20"></i><span class="right-nav-text">${CompanyName}</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                <ul id="ui_dr" class="collapse collapse-level-1 two-col-list">
                    <li class="active" role="presentation">
                        <a onclick="document.getElementById('Company_information').submit()" data-toggle="tab"  role="tab" aria-expanded="true">Information</a>
                    </li>
                    <li >
                        <a onclick="document.getElementById('Vehicle_info').submit()" aria-expanded="false"  data-toggle="tab" role="tab">Vehicles</a>
                    </li>
                    <li>
                        <a onclick="document.getElementById('Employee_info').submit()">Employees</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-edit mr-20"></i><span class="right-nav-text">Forms</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li><hr class="light-grey-hr mb-10"/></li>
            <li class="navigation-header">
                <span>featured</span>
                <i class="zmdi zmdi-more"></i>
            </li>
            <li>
                <a href="Contact-us.jsp"><div class="pull-left"><i class="zmdi zmdi-book mr-20"></i><span class="right-nav-text">About Us</span></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="javascript:void(0);" onclick="LogOut()" data-toggle="collapse" data-target="#dropdown_dr_lv1"><div class="pull-left"><i class="zmdi zmdi-power mr-20"></i><span class="right-nav-text">Log out</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
        </ul>
        <form method="post" id="Employee_info" action="ServletDwmpc">
            <input type="hidden" name="command" value="EmployeesDetail">
            <input type="hidden" name="company_id" value="${Company_info.company_Id}">
        </form>
        <form method="post" id="Vehicle_info" action="ServletDwmpc">
            <input type="hidden" name="command" value="VehicleDetail">
            <input type="hidden" name="company_id" value="${Company_info.company_Id}">
        </form>
        <form method="post" id="Company_information" action="ServletDwmpc">
            <input type="hidden" name="command" value="getCompany">
            <input type="hidden" name="UserType" value="Client">
            <input type="hidden" name="company_id" value="${Company_info.company_Id}">
        </form>
    </div>
    <!-- /Left Sidebar Menu -->

    <!-- Right Sidebar Menu -->
    <div class="fixed-sidebar-right">
        <ul class="right-sidebar">
            <li>
                <div  class="tab-struct custom-tab-1">
                    <ul role="tablist" class="nav nav-tabs" id="right_sidebar_tab">
                        <li role="presentation" class=""><a  data-toggle="tab" style="text-align: center" id="todo_tab_btn" role="tab" href="#todo_tab" aria-expanded="true">Profile</a></li>
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
                                </div>
                            </div>
                        </div>

                        <div  id="todo_tab" class="tab-pane fade" role="tabpanel">
                            <div class="todo-box-wrap">
                                <div class="add-todo">
                                    <a href="javascript:void(0)" class="inline-block txt-grey">
                                        <i class="zmdi zmdi-more"></i>
                                    </a>
                                    <span class="inline-block txt-dark">Profile</span>
                                    <a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-plus"></i></a>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="set-height-wrap">
                                    <!-- Todo-List -->
                                    <div class="col-xs-12">
                                        <div class="panel panel-default card-view  pa-0">
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body  pa-0">
                                                    <div class="profile-box">
                                                        <div class="profile-cover-pic">
                                                            <div class="fileupload btn btn-default">
                                                                <span class="btn-text">edit</span>
                                                                <input class="upload" type="file">
                                                            </div>
                                                            <div class="profile-image-overlay"></div>
                                                        </div>
                                                        <div class="profile-info text-center">
                                                            <div class="profile-img-wrap">
                                                                <img class="inline-block mb-10" src="img/mock1.jpg" alt="user"/>
                                                                <div class="fileupload btn btn-default">
                                                                    <span class="btn-text">edit</span>
                                                                    <input class="upload" type="file">
                                                                </div>
                                                            </div>
                                                            <h5 class="block mt-10 mb-5 weight-500 capitalize-font txt-gold">Kaone Rascon</h5>
                                                            <h6 class="block capitalize-font pb-20">Client</h6>
                                                        </div>
                                                        <div class="social-info">
                                                            <div class="row">
                                                                <div class="row">
                                                                    <div class="col-xs-4 text-center">
                                                                        <span class="counts block head-font"><span class="counter-anim">${GeneralCount.company}</span></span>
                                                                        <span class="counts-text block">Companies</span>
                                                                    </div>
                                                                    <div class="col-xs-4 text-center">
                                                                        <span class="counts block head-font"><span class="counter-anim">${GeneralCount.employee}</span></span>
                                                                        <span class="counts-text block">Employees</span>
                                                                    </div>
                                                                    <div class="col-xs-4 text-center">
                                                                        <span class="counts block head-font"><span class="counter-anim">${GeneralCount.vehicle}</span></span>
                                                                        <span class="counts-text block">Vehicles</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-gold btn-block  btn-anim mt-40" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil"></i><span class="btn-text">edit profile</span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                        <li><a href="${pageContext.request.contextPath}/Home.jsp">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/Vehicle-Table.jsp">Vehicle Table</a></li>
                        <li class="active"><span>Vehicle Registration Form</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
                <!-- Row -->

            </div>
            <!-- /Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-warning card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h6 class="panel-title txt-light">Vehicle Registration</h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-wrap">
                                            <form data-toggle="validator" role="form" action="ServletDwmpc" method="post" enctype="multipart/form-data">

                                                <input type="hidden" id="command" name="command" class="hidden" value="RegisteringVehicle"/>
                                                <input type="hidden" id="action" name="action"  class="hidden" value="RegisteringVehicle"/>
                                                <input type="hidden" name="Company Id" class="hidden" value="${Company_info.company_Id}"/>
                                                <input type="hidden" name="CompanyName" class="hidden" value="${Company_info.company_Name}"/>
                                                <input type="hidden"  name="addAction"  class="hidden" value="Both"/>

                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Vehicle_Type">Vehicle Type (required):</label>
                                                            <input id="Vehicle_Type" type="text" name="vehicle_Type" class="form-control required" value="${All_Vehicles22.vehicle_type}" required/>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Chassis_Number">Chassis Number(required):</label>
                                                            <input id="Chassis_Number" type="text" name="Chassis_Number" class="form-control" value="${All_Vehicles22.chase_number}" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Unladen_Weight">Unladen Weight (required):</label>
                                                            <input id="Unladen_Weight" type="text" name="Unladen_Weight" class="form-control required" value="${All_Vehicles22.unladen_Weight}" required/>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Registration_Number"> Vehicle Registration Number(required):</label>
                                                            <input id="Registration_Number" type="text" name="Registration_Number" class="form-control" value="${All_Vehicles22.carrie_number}" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label for="Your_Vehicle" class="control-label mb-10"> This Your Vehicle?(required):</label>
                                                            <select id="Your_Vehicle" name="Your_Vehicle" onchange="test2()" class="selectpicker" data-style="form-control btn-default btn-outline">
                                                                <option value="Yes">Yes, I am the owner.</option>
                                                                <option value="No">No, I borrowed it.</option>
                                                            </select>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label for="Waste_Type" class="control-label mb-10"> Type Of Waste Transported(required):</label>
                                                            <select id="Waste_Type" name="Waste_Type" class="selectpicker" data-style="form-control btn-default btn-outline">
                                                                <option value="Bio waste">Bio Waste</option>
                                                                <option value="Chemical waste">Chemical Waste</option>
                                                                <option value="Hazardous waste">Hazardous Waste</option>
                                                                <option value="Clinical Waste">Clinical Waste</option>
                                                                <option value="Domestic Waste">Domestic Waste</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Annual_Quatity">Annual Quantity(required):</label>
                                                            <input id="Annual_Quatity" type="text" name="Annual_Quatity" class="form-control required" value="${All_Vehicles22.annual_Quantity}" required/>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Transportation">Type of Waste Covered During Transportation(required):</label>
                                                            <input id="Transportation" type="text" name="Transportation" class="form-control" value="${All_Vehicles22.waste_Type}" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Vehicle_Attachment">Vehicle and Company Attachment(required):</label>
                                                            <button href="#Vehicle-Attachment" data-toggle="modal" id="Vehicle_Attachment" class="btn btn-default btn-block btn-outline btn-anim"><i class="icon-paper-clip"></i><span class="btn-text">Upload Attactments</span></button>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Certificate_Attachment">Type of Waste Covered During Transportation(required):</label>
                                                            <button href="#Certificate-Attachment" data-toggle="modal" id="Certificate_Attachment" class="btn btn-default btn-block btn-outline btn-anim"><i class="icon-paper-clip"></i><span class="btn-text">Upload Certificates</span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-0">
                                                    <div class="checkbox checkbox-success">
                                                        <input type="checkbox" id="Vehicle_items" data-error="Please agree before proceeding" required>
                                                        <label for="Vehicle_items">I agree that all the items listed here, a present with in Vehicle.</label>
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-0" style="float: right">
                                                    <button type="submit" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">submit</span></button>
                                                </div>

                                                <div id="Vehicle-Attachment" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                <h5 class="modal-title">Upload All The Following </h5>
                                                            </div>
                                                            <div class="modal-body">

                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12 mt-40">
                                                                            <label class="control-label mb-10" for="Payment_Receipt"> Payment Receipt(required):</label>
                                                                            <input type="file" id="Payment_Receipt" name="Payment receipt" class="dropify"  required/>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12 mt-40">
                                                                            <label class="control-label mb-10" for="BA_Permit"> BA Permit(required):</label>
                                                                            <input type="file" id="BA_Permit" name="BA permit" class="dropify"  required/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12 Hazardous box">
                                                                            <label class="control-label mb-10" for="PrDP"> PrDP 'H' For Hazardous Waste(required):</label>
                                                                            <input type="file" id="PrDP" name="PrDP 'H' For Hazardous Waste" class="dropify"  required/>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="Registration_Book">Motor Vehicle Registration Book(required):</label>
                                                                            <input type="file" id="Registration_Book" name="Motor_Vehicle_Registration_Book" class="dropify"  required/>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="Facility"> Facility Licence[For all Recyclers](required):</label>
                                                                            <input type="file" id="Facility" name="Facility Licence" class="dropify"  required/>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div id="affidavit1" class="col-md-6 col-xs-12 No box">
                                                                            <label class="control-label mb-10" for="Affidavit"> Affidavit for Borrowed Vehicle(required):</label>
                                                                            <input type="file" id="Affidavit" name="affidavit" class="dropify"  required/>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-primary btn-anim btn-rounded" data-dismiss="modal"><i class="ti-save"></i><span class="btn-text">Done</span></button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div id="Certificate-Attachment" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                <h5 class="modal-title">Upload The Following Certificates</h5>
                                                            </div>
                                                            <div class="modal-body">

                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="Health_and_Safety"> Health and Safety(required):</label>
                                                                            <input type="file" id="Health_and_Safety" name="Health and Safety" class="dropify"  required/>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12 Hazardous box">
                                                                            <label class="control-label mb-10" for="hazardous_waste">hazardous waste(required):</label>
                                                                            <input type="file" id="hazardous_waste" name="hazardous waste" class="dropify"  required/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="FF_FA">Fire Fighting and First Aid(required):</label>
                                                                            <input type="file" id="FF_FA" name="Fire fighting and First Aid" class="dropify"  required/>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="Environment">Health and Environment(required):</label>
                                                                            <input type="file" id="Environment" name="Health and Environment" class="dropify"  required/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="Roadwortiness"> Certification Of Roadwortiness (required):</label>
                                                                            <input type="file" id="Roadwortiness" name="Certification_of_roadwortiness" class="dropify"  required/>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10" for="Cooperation">Certification of Cooperation(required):</label>
                                                                            <input type="file" id="Cooperation" name="Certification of cooperation" class="dropify"  required/>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-primary btn-anim btn-rounded" data-dismiss="modal"><i class="ti-save"></i><span class="btn-text">Done</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </form>
                                            <button style="display: none" alt="alert" id="vehicle-ID-error"></button>
                                            <button style="display: none" alt="alert" id="Registration-Number-error"></button>

                                            <script>
                                                function test2(){

                                                }
                                                $('#Your_Vehicle').bind('change', function(event) {

                                                    var i= $('#Your_Vehicle').val();

                                                    if(i==="Yes") // equal to a selection option
                                                    {
                                                        alert("Cicked")
                                                        $('#affidavit1').hide();
                                                        document.getElementById("affidavit1").style.display = "none";
                                                    }
                                                    else if(i==="No")
                                                    {
                                                        $('#affidavit1').show(); // show the other one
                                                        document.getElementById("affidavit1").style.display = "block";
                                                    }
                                                });
                                                $(document).ready(function(){
                                                    $('#Your_Vehicle').on('change', function(){
                                                        alert("yyy")
                                                        var demovalue = $(this).val();
                                                        if(demovalue ==="Yes"){
                                                            alert("this Word")
                                                            $("#affidavit1").hide();
                                                        }else {
                                                            $("#affidavit1").show();
                                                        }
                                                    });
                                                });
                                            </script>
                                            <c:if test="${vehicle_ID_error!=null}">
                                                <script>
                                                    window.onload = function() {
                                                        document.getElementById("vehicle-ID-error").click();
                                                    }
                                                </script>
                                            </c:if>
                                            <c:if test="${Registration_Number_error!=null}">
                                                <script>
                                                    window.onload = function() {
                                                        document.getElementById("Registration-Number-error").click();
                                                    }
                                                </script>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>

                </div>

                <!-- form -->
                <div id="myModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h5 class="modal-title" id="myModalLabel">Edit Profile</h5>
                            </div>
                            <div class="modal-body">
                                <!-- Row -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="">
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body pa-0">
                                                    <div class="col-sm-12 col-xs-12">
                                                        <div class="form-wrap">
                                                            <form action="#">
                                                                <div class="form-body overflow-hide">
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10" for="exampleInputuname_1">Name</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon"><i class="icon-user"></i></div>
                                                                            <input type="text" class="form-control" id="exampleInputuname_1" placeholder="willard bryant">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10" for="exampleInputEmail_1">Email address</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon"><i class="icon-envelope-open"></i></div>
                                                                            <input type="email" class="form-control" id="exampleInputEmail_1" placeholder="xyz@gmail.com">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10" for="exampleInputContact_1">Contact number</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon"><i class="icon-phone"></i></div>
                                                                            <input type="email" class="form-control" id="exampleInputContact_1" placeholder="+102 9388333">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10" for="exampleInputpwd_1">Password</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon"><i class="icon-lock"></i></div>
                                                                            <input type="password" class="form-control" id="exampleInputpwd_1" placeholder="Enter pwd" value="password">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10">Gender</label>
                                                                        <div>
                                                                            <div class="radio">
                                                                                <input type="radio" name="radio1" id="radio_1" value="option1" checked="">
                                                                                <label for="radio_1">
                                                                                    M
                                                                                </label>
                                                                            </div>
                                                                            <div class="radio">
                                                                                <input type="radio" name="radio1" id="radio_2" value="option2">
                                                                                <label for="radio_2">
                                                                                    F
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10">Country</label>
                                                                        <select class="form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                            <option value="Category 1">USA</option>
                                                                            <option value="Category 2">Austrailia</option>
                                                                            <option value="Category 3">India</option>
                                                                            <option value="Category 4">UK</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-actions mt-10">
                                                                    <button type="submit" class="btn btn-success mr-10 mb-30">Update profile</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success waves-effect" data-dismiss="modal">Save</button>
                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /form -->

            </div>
            <!-- Footer -->
            <footer class="footer container-fluid pl-30 pr-30">
                <div class="row">
                    <div class="col-sm-12">
                        <p>2021 &copy; DWMPC. Created by Next-gen</p>
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

<form method="post" id="LogOut_Session" action="ServletDwmpc">
    <input type="hidden" name="command" value="LogOut Session">
    <input type="hidden" name="action" value="Sign Out Session">
</form>
<script>
    function LogOut(){
        document.getElementById("LogOut_Session").submit();
    }
</script>


<!-- jQuery -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Form Flie Upload Data JavaScript -->
<script src="dist/js/form-file-upload-data.js"></script>


<!-- Bootstrap Core JavaScript -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
<script src="vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>
<script src="dist/js/modal-data.js"></script>

<!-- Bootstrap Touchspin JavaScript -->
<script src="vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

<!-- Bootstrap Daterangepicker JavaScript -->
<script src="vendors/bower_components/dropify/dist/js/dropify.min.js"></script>

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

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- EChartJS JavaScript -->
<script src="vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
<script src="vendors/echarts-liquidfill.min.js"></script>
<script src="vendors/ecStat.min.js"></script>

<!-- Toast JavaScript -->
<script src="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

<!-- Progressbar Animation JavaScript -->
<script src="vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>
<!-- Fancy Dropdown JS -->
<script src="dist/js/dropdown-bootstrap-extended.js"></script>
<!-- Sparkline JavaScript -->
<script src="vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<!-- Owl JavaScript -->
<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Calender JavaScripts -->
<script src="vendors/bower_components/moment/min/moment.min.js"></script>
<script src="vendors/jquery-ui.min.js"></script>
<script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="dist/js/fullcalendar-data.js"></script>
<!-- Switchery JavaScript -->
<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>
<script src="dist/js/toast-data.js"></script>

<!-- Sweet-Alert  -->
<script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
<script src="dist/js/sweetalert-data.js"></script>

</body>

</html>

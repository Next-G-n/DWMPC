<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>DWMPC || Company Registration Form</title>
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
                <a class="active" href="${pageContext.request.contextPath}/Home.jsp" data-toggle="collapse" data-target="#dashboard_dr"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i>Home<span class="right-nav-text"></span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="" id="open_profile" onclick="document.getElementById('todo_tab_btn').click();" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="zmdi zmdi-account mr-20"></i><span class="right-nav-text">Profile</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li><hr class="light-grey-hr mb-10"/></li>
            <li class="navigation-header">
                <span>component</span>
                <i class="zmdi zmdi-more"></i>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/companyForm.jsp" data-toggle="collapse" data-target="#ui_dr"><div class="pull-left"><i class="zmdi zmdi-smartphone-setup mr-20"></i><span class="right-nav-text">Add Company</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Forms</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"><i class="zmdi zmdi-chart-donut mr-20"></i><span class="right-nav-text">Charts </span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li><hr class="light-grey-hr mb-10"/></li>
            <li class="navigation-header">
                <span>featured</span>
                <i class="zmdi zmdi-more"></i>
            </li>
            <li>
                <a href="Contact-us.jsp"><div class="pull-left"><i class="zmdi zmdi-book mr-20"></i><span class="right-nav-text">Contact Us</span></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="javascript:void(0);" onclick="LogOut()" data-toggle="collapse" data-target="#dropdown_dr_lv1"><div class="pull-left"><i class="zmdi zmdi-power mr-20"></i><span class="right-nav-text">Log out</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
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
                        <li class="active"><span>Company Registration Form</span></li>
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
                                <h6 class="panel-title txt-light"><i class="icon-note txt-black"></i>Company Registration</h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-wrap">
                                            <form data-toggle="validator" id="" method="post" action="ServletDwmpc" role="form">
                                                <input class="inputs" type="hidden" name="command" value="Company Registration">
                                                <input class="inputs" type="hidden" name="action" value="Registration">
                                                <input class="inputs" type="hidden" name="Status" value="Pending">
                                                <input class="inputs" type="hidden" name="User_id" value="${User_Info[0].user_Id}">
                                                <input class="inputs" type="hidden"  id="Sta" value="${Company_Info_Form.company_Status}">
                                                <input class="inputs" type="hidden" id="Reg" value="${Company_Info_Form.region}">
                                                <div class="form-group">
                                                    <label for="Company-name" class="control-label mb-10">Company Name (required):</label>
                                                    <input type="text" class="form-control" name="Company name" id="Company-name" value="${Company_Info_Form.company_Name}"  required>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10" for="Street-address">Street Address (required):</label>
                                                    <input id="Street-address" type="text" name="Street_Address" class="form-control required" value="${Company_Info_Form.street_Address}" required/>

                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" data-name="Test " for="Street-address2">Street Address 2 (Optional):</label>
                                                            <input id="Street-address2" type="text" name="Street_Address2" class="form-control" value="${Company_Info_Form.street_Address2}"/>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Status">Status of applicant(required):</label>
                                                            <select class="selectpicker" id="Status" name="StatusA" data-style="form-control btn-default btn-outline" >
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
                                                            <label class="control-label mb-10" for="Region">Region (required):</label>
                                                            <select id="Region" name="Region" class="selectpicker" data-style="form-control btn-default btn-outline" >
                                                                <option value="Francistown Branch">Francistown Zone</option>
                                                                <option value="Gaborone Branch">Gaborone Zone</option>
                                                                <option value="Chobe Branch">Chobe Zone</option>
                                                                <option value="kgalagadi Branch">kgalagadi Zone</option>
                                                            </select>

                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="City">City/Town/Village (required):</label>
                                                            <input id="City" type="text" name="City" list="location_suggestions" class="form-control required" value="${Company_Info_Form.region_Town_Village}" required/>
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
                                                            <input id="Plot_Number" type="text" name="Plot_Number" class="form-control required" value="${Company_Info_Form.plot_Number}" required/>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Ward">Ward (required):</label>
                                                            <input id="Ward" type="text" name="Ward" class="form-control required" value="${Company_Info_Form.ward}" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="telephone">Telephone (required):</label>
                                                            <input id="telephone"  type="text" data-mask="+267 999 9999" name="telephone" class="form-control required" value="${Company_Info_Form.telephone}" required/>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="fax">Fax (required):</label>
                                                            <input id="fax" type="text" data-mask="+267 999 9999" name="fax" class="form-control required" value="${Company_Info_Form.fax_Number}" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="Company_Email">Company Email (required):</label>
                                                            <input id="Company_Email" type="email" name="Company_Email" class="form-control required" value="${Company_Info_Form.email}" required />
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10" for="phoneNumber">Phone Number (required):</label>
                                                            <input id="phoneNumber" data-mask="+267 99 999 999"  type="tel" name="Phone_Number"  class="form-control required" value="${Company_Info_Form.phone_Number}" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-0" style="float: right">
                                                    <button type="submit" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">submit</span></button>
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
            <button  type="button"  alt="alert"  class="img-responsive model_img Company_Alert_Succes" id="employee-alert" style="display: none" onclick=""></button>

            <button style="display: none" alt="alert" id="Error-Email">yeys</button>
            <button style="display: none" alt="alert" id="Error-CompanyName"></button>


            <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

            <script type="text/javascript">

                var form = $('#TheForm');
                form.submit(function () {

                    $.ajax({
                        type: form.attr('method'),
                        url: form.attr('action'),
                        data: form.serialize(),
                        success: function (data) {
                            var result=data;
                            $('#content').html(result);
                            document.getElementById("employee-alert").click();

                        }
                    });

                    return false;
                });

                <c:if test="${Company_Info_Form!=null}">
                window.onload = function()  {
                    document.getElementById('Region').value = document.getElementById('Reg').value;
                    $("#Region").selectpicker("refresh");
                    document.getElementById('Status').value = document.getElementById('Sta').value;
                    $("#Status").selectpicker("refresh");
                  //  document.getElementById("Error-Email").click();
                }
                </c:if>
            </script>
            <c:if test="${ErrorCompanyEmail!=null}">
                <script>
                    window.onload = function() {
                        document.getElementById('Region').value = document.getElementById('Reg').value;
                        $("#Region").selectpicker("refresh");
                        document.getElementById('Status').value = document.getElementById('Sta').value;
                        $("#Status").selectpicker("refresh");
                        document.getElementById("Error-Email").click();
                    }
                </script>
            </c:if>
            <c:if test="${ErrorCompanyName!=null}">
                <script>
                    window.onload = function() {
                        document.getElementById('Region').value = document.getElementById('Reg').value;
                        $("#Region").selectpicker("refresh");
                        document.getElementById('Status').value = document.getElementById('Sta').value;
                        $("#Status").selectpicker("refresh");
                        document.getElementById("Error-CompanyName").click();
                    }
                </script>
            </c:if>

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

<!-- Bootstrap Core JavaScript -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
<script src="vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>
<script src="dist/js/modal-data.js"></script>

<!-- Bootstrap Touchspin JavaScript -->
<script src="vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>


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

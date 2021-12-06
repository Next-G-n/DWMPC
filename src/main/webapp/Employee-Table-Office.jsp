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

    <!--alerts CSS -->
    <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">


    <!-- Data table CSS -->
    <link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>


    <!-- Custom CSS -->
    <link href="dist/css/style.css" rel="stylesheet" type="text/css">


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
                    <a href="${pageContext.request.contextPath}/Officer-Home.jsp">
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
                    <ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
                        <li>
                            <div class="app-box-bottom-wrap">
                                <hr class="light-grey-hr ma-0"/>
                                <a class="block text-center read-all" href="javascript:void(0)"> more </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown full-width-drp">
                    <a href="#" class="tst2" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-more-vert top-nav-icon"></i></a>
                    <ul class="dropdown-menu mega-menu pa-0" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
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
                </li>
            </ul>
        </div>
    </nav>
    <!-- /Top Menu Items -->

    <!-- Left Sidebar Menu -->
    <div class="fixed-sidebar-left">
        <ul class="nav navbar-nav side-nav nicescroll-bar">
            <li class="navigation-header">
                <span>User Information</span>
                <i class="zmdi zmdi-more"></i>
            </li>
            <li>
                <a class="active" href="javascript:void(0);" data-toggle="collapse" data-target="#dashboard_dr"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i>Home<span class="right-nav-text"></span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="#" id="open_right_sidebar" class="tst2" onclick="document.getElementById('chat_tab_btn').click();" data-toggle="collapse" data-target="#ecom_dr"><div class="pull-left"><i class="zmdi zmdi-email mr-20"></i><span class="right-nav-text">Emails</span></div><div class="pull-right"><span class="label label-warning">3</span></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="#" id="open_profile" onclick="document.getElementById('todo_tab_btn').click();" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="zmdi zmdi-account mr-20"></i><span class="right-nav-text">Profile</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="#" class="tst2"><div class="pull-left"><i class="zmdi zmdi-notifications mr-20"></i><span class="right-nav-text">Notification</span></div><div class="pull-right"><span class="label label-warning">8</span></div><div class="clearfix"></div></a>
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
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Report</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <c:if test="${ReportBtn=='Upload'}">
                <li>
                    <a href="Monthly-Report.jsp" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Give Report</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
                </li>
            </c:if>
            <c:if test="${ReportBtn!='Upload'}">
                <li>
                    <a href="javascript:void(0);" class="Report-toast" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Give Report</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
                </li>
            </c:if>
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" class="tst2" data-target="#table_dr"><div class="pull-left"><i class="zmdi zmdi-trending-up mr-20"></i><span class="right-nav-text">Statistics</span></div><div class="pull-right"><i></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="javascript:void(0);" class="tst2" data-toggle="collapse" data-target="#icon_dr"><div class="pull-left"><i class="zmdi zmdi-file mr-20"></i><span class="right-nav-text">File Manager</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="javascript:void(0);" class="tst2" data-toggle="collapse" data-target="#maps_dr"><div class="pull-left"><i class="zmdi zmdi-map mr-20"></i><span class="right-nav-text">maps</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                <ul id="maps_dr" class="collapse collapse-level-1">
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
                <a href="" class="tst2" data-toggle="collapse" data-target="#pages_dr"><div class="pull-left"><i class="zmdi zmdi-settings mr-20"></i><span class="right-nav-text">Settings</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>
            <li>
                <a href="Contact-us.jsp"><div class="pull-left"><i class="zmdi zmdi-phone mr-20"></i><span class="right-nav-text">Contact Us</span></div><div class="clearfix"></div></a>
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
                        <li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" id="chat_tab_btn" href="#chat_tab">Emails</a></li>
                        <li role="presentation" class=""><a  data-toggle="tab" id="messages_tab_btn" role="tab" href="#messages_tab" aria-expanded="false">Notification</a></li>
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
                        <li><a href="${pageContext.request.contextPath}/Officer-Home.jsp">Dashboard</a></li>
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
                                                </tr>
                                            </c:forEach>

                                            </tbody>
                                        </table>


                                    </div>

                                </div>

                                </br>
                                <div style="float: right" class="row">
                                    <button type="button" alt="alert" id="Approving-Officer" style="float: right" class="btn btn-primary btn-anim btn-rounded"><i class="fa fa-check"></i><span class="btn-text">Approve</span></button>
                                    <button type="button" alt="alert" id="Declining-Officer"  style="float: right; margin-right: 5px" class="btn btn-danger btn-anim btn-rounded"><i class="fa  fa-times"></i><span class="btn-text">Decline</span></button>
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

<!-- Sweet-Alert  -->
<script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
<script src="dist/js/sweetalert-data.js"></script>


</body>

</html>


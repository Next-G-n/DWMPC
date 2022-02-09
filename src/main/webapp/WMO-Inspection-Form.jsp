<%--
  Created by IntelliJ IDEA.
  User: NITRO5
  Date: 9/6/2021
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>DWMPC || Employee Registration Form</title>
    <meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
    <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
    <meta name="author" content="hencework"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="icon.ico">
    <link rel="icon" href="icon.ico" type="image/x-icon">
    <!-- vector map CSS -->
    <link href="vendors/bower_components/jquery-wizard.js/css/wizard.css" rel="stylesheet" type="text/css"/>

    <!--alerts CSS -->
    <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">

    <!-- bootstrap-select CSS -->
    <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

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
                <a href="" id="open_profile" onclick="document.getElementById('todo_tab_btn').click();" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="zmdi zmdi-account mr-20"></i><span class="right-nav-text">Profile</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
            </li>

            <li><hr class="light-grey-hr mb-10"/></li>
            <li class="navigation-header">
                <span>component</span>
                <i class="zmdi zmdi-more"></i>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Report</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
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
                <a href="Contact-us.jsp"><div class="pull-left"><i class="zmdi zmdi-book mr-20"></i><span class="right-nav-text">About Us</span></div><div class="clearfix"></div></a>
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
                        <li class="active" role="presentation"><a aria-expanded="false"  data-toggle="tab" role="tab" id="chat_tab_btn" href="#chat_tab" >Emails</a></li>
                        <li role="presentation" class=""><a  data-toggle="tab" id="messages_tab_btn" role="tab" href="#messages_tab" aria-expanded="false">Notification</a></li>
                        <li role="presentation" class=""><a  data-toggle="tab" id="todo_tab_btn" role="tab" href="#todo_tab" aria-expanded="true">Profile</a></li>
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
                                                                    <span class="name block capitalize-font">Madalyn Rascon
                                                                    </span>
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
                                    <span class="inline-block txt-dark">Profile</span>
                                    <a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-plus"></i></a>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="set-height-wrap">

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
                                                                <div class="col-xs-4 text-center">
                                                                    <span class="counts block head-font"><span class="counter-anim">45</span></span>
                                                                    <span class="counts-text block">Companies</span>
                                                                </div>
                                                                <div class="col-xs-4 text-center">
                                                                    <span class="counts block head-font"><span class="counter-anim">206</span></span>
                                                                    <span class="counts-text block">Employees</span>
                                                                </div>
                                                                <div class="col-xs-4 text-center">
                                                                    <span class="counts block head-font"><span class="counter-anim">118</span></span>
                                                                    <span class="counts-text block">Vechiles</span>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-gold btn-block  btn-anim mt-40" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil"></i><span class="btn-text">edit profile</span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- /Right Sidebar Menu -->>



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
                        <li><a href="${pageContext.request.contextPath}/CompanyInfo.jsp">Home</a></li>
                        <li class="active"><span>Inspection Form</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
                <!-- Row -->

            </div>
            <!-- /Title -->

                                <!-- Row -->
                                <div class="row">
                                    <div class="col-lg-4 col-md-12">
                                        <div class="panel panel-default border-panel card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">todo</h6>
                                                </div>
                                                <div class="pull-right">
                                                    <div class="pull-left inline-block dropdown mr-15">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                                        <ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Edit</a></li>
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Clear All</a></li>
                                                            <li role="presentation"><a href="javascript:toggle4(this)" onclick="selectAll(this);" id="checkbox035" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Select All</a></li>  </ul>
                                                    </div>
                                                    <a class="pull-left inline-block close-panel" href="#" data-effect="fadeOut">
                                                        <i class="zmdi zmdi-close"></i>
                                                    </a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body row pa-0">
                                                    <div class="todo-box-wrap">
                                                        <!-- Todo-List -->
                                                        <ul class="todo-list todo-box-nicescroll-bar">


                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList1" id="checkbox001"/>
                                                                    <label for="checkbox001"> B.A. Permit (Validity i.e. enter expiry date)</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList1" id="checkbox002"/>
                                                                    <label for="checkbox002">Road worthiness (Validity i.e. enter expiry date)</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList1" id="checkbox003"/>
                                                                    <label for="checkbox003">Certificate of incorporation</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList1" id="checkbox004" />
                                                                    <label for="checkbox004">Waste handling and containment</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList1" id="checkbox005" />
                                                                    <label for="checkbox005">Cleanliness</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>

                                                        </ul>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-12">
                                        <div class="panel panel-default border-panel card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">Protective Clothing</h6>
                                                </div>
                                                <div class="pull-right">
                                                    <div class="pull-left inline-block dropdown mr-15">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                                        <ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Edit</a></li>
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Clear All</a></li>
                                                            <li role="presentation"><a href="javascript:toggle5(this)" onclick="selectAll(this);" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Select All</a></li> </ul>
                                                    </div>
                                                    <a class="pull-left inline-block close-panel" href="#" data-effect="fadeOut">
                                                        <i class="zmdi zmdi-close"></i>
                                                    </a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body row pa-0">
                                                    <div class="todo-box-wrap">

                                                        <ul class="todo-list todo-box-nicescroll-bar">
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox006" />
                                                                    <label for="checkbox006">overalls</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox007" />
                                                                    <label for="checkbox007">boots</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox008" />
                                                                    <label for="checkbox008">ear plugs</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox009" />
                                                                    <label for="checkbox009">goggles</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox010" />
                                                                    <label for="checkbox010">hand sanitizer</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox011" />
                                                                    <label for="checkbox011">infrared thermometer</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox012" />
                                                                    <label for="checkbox012">aprons</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList2" id="checkbox013" />
                                                                    <label for="checkbox013">helmets</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>

                                                        </ul>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-12">
                                        <div class="panel panel-default border-panel card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">Fire Extinguishers & First Aid Kits </h6>
                                                </div>
                                                <div class="pull-right">
                                                    <div class="pull-left inline-block dropdown mr-15">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                                        <ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Edit</a></li>
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Clear All</a></li>
                                                            <li role="presentation"><a href="javascript:toggle6(this)" onclick="selectAll(this);" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Select All</a></li>  </ul>
                                                    </div>
                                                    <a class="pull-left inline-block close-panel" href="#" data-effect="fadeOut">
                                                        <i class="zmdi zmdi-close"></i>
                                                    </a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body row pa-0">
                                                    <div class="todo-box-wrap">
                                                        <!-- Todo-List -->
                                                        <ul class="todo-list todo-box-nicescroll-bar">
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList3" id="checkbox014" />
                                                                    <label for="checkbox014">accessibility</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList3" id="checkbox015" />
                                                                    <label for="checkbox015">condition (check gauge and service date)</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList3" id="checkbox016" />
                                                                    <label for="checkbox016">ear plugs</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList3" id="checkbox017" />
                                                                    <label for="checkbox017">inspection date</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList3" id="checkbox018" />
                                                                    <label for="checkbox018">contents adequacy and expiry dates</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                        </ul>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Row -->
                                <div class="row">
                                    <div class="col-lg-4 col-md-12">
                                        <div class="panel panel-default border-panel card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">Fire Extinguishers & First Aid Kits </h6>
                                                </div>
                                                <div class="pull-right">
                                                    <div class="pull-left inline-block dropdown mr-15">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                                        <ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Edit</a></li>
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Clear All</a></li>
                                                            <li role="presentation"><a href="javascript:toggle7(this)" onclick="selectAll(this);" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Select All</a></li></ul>
                                                    </div>
                                                    <a class="pull-left inline-block close-panel" href="#" data-effect="fadeOut">
                                                        <i class="zmdi zmdi-close"></i>
                                                    </a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body row pa-0">
                                                    <div class="todo-box-wrap">
                                                        <!-- Todo-List -->
                                                        <ul class="todo-list todo-box-nicescroll-bar">
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList4" id="checkbox019" />
                                                                    <label for="checkbox019">Warning Sign</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList4" id="checkbox020" />
                                                                    <label for="checkbox020">certified certificate on fire fighting</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList4" id="checkbox021" />
                                                                    <label for="checkbox021">certified certificate on first aid</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList4" id="checkbox022" />
                                                                    <label for="checkbox022">certified certificate on fire fighting</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList4" id="checkbox023" />
                                                                    <label for="checkbox023">certified certificate on first aid</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList4" id="checkbox024" />
                                                                    <label for="checkbox024">Waste Identification Card</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                        </ul>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-12">
                                        <div class="panel panel-default border-panel card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">Addition Files</h6>
                                                </div>
                                                <div class="pull-right">
                                                    <div class="pull-left inline-block dropdown mr-15">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                                        <ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Edit</a></li>
                                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Clear All</a></li>
                                                            <li role="presentation"><a href="javascript:toggle8(this)" onclick="selectAll(this);" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Select All</a></li>  </ul>
                                                    </div>
                                                    <a class="pull-left inline-block close-panel" href="#" data-effect="fadeOut">
                                                        <i class="zmdi zmdi-close"></i>
                                                    </a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body row pa-0">
                                                    <div class="todo-box-wrap">

                                                        <ul class="todo-list todo-box-nicescroll-bar">
                                                            <c:if test='${All_Vehicles[0].affidavit="Yes"}'>
                                                                <li class="todo-item">
                                                                    <div class="checkbox checkbox-warning ">
                                                                        <input type="checkbox" class="CheckList5" id="checkbox025" />
                                                                        <label for="checkbox025">Affidavit (if applicant is not owner of vehicle)</label>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <hr class="light-grey-hr"/>
                                                                </li>
                                                            </c:if>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList5" id="checkbox026" />
                                                                    <label for="checkbox026">	Facility license (for all recyclers i   .e metal, used oil, cans, plastic etc)</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList5" id="checkbox027" />
                                                                    <label for="checkbox027">spill containment system</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList5" id="checkbox028" />
                                                                    <label for="checkbox028">spill containment system</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList5" id="checkbox029" />
                                                                    <label for="checkbox029">Pollution liability cover (hazardous waste)</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                            <li class="todo-item">
                                                                <div class="checkbox checkbox-warning">
                                                                    <input type="checkbox" class="CheckList5" id="checkbox030" />
                                                                    <label for="checkbox030">Service agreement with disposer (hazardous waste)</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <hr class="light-grey-hr"/>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                        <div style="float: right" class="row">
                            <button type="button" alt="alert" id="Approving-Officer" style="float: right" class="btn btn-primary btn-anim btn-rounded"><i class="fa fa-check"></i><span class="btn-text">Approve</span></button>
                            <button type="button" alt="alert" id="Declining-Officer"  style="float: right; margin-right: 5px" class="btn btn-danger btn-anim btn-rounded"><i class="fa  fa-times"></i><span class="btn-text">Decline</span></button>
                        </div>


            <form method="post" id="Approving" action="ServletDwmpc">
                <input type="hidden" name="command" value="Officers Action">
                <input type="hidden" name="action" value="Approving">
                <input type="hidden" name="Apply_id" value="${Apply_id}">
                <input type="hidden" name="hazardous_waste" value="${All_Vehicles[0].waste_Type}">
                <input type="hidden" name="own" value="${All_Vehicles[0].own}">
                <input type="hidden" name="User Id" value="${User_Info[0].user_Id}">
                <input type="hidden" name="UserType" value="${currentUser}">
                <input type="hidden" name="Branch" value="${User_Info[0].location}">
                <input type="hidden" name="company_id" value="${Company_info.company_Id}">
                <input type="hidden" name="company_email" value="${Company_info.email}">
                <input type="hidden" name="company_phone" value="${Company_info.phone_Number}">
            </form>
            <form method="post" id="Declining" action="ServletDwmpc">
                <input type="hidden" name="command" value="Officers Action">
                <input type="hidden" name="action" value="Decline">
                <input type="hidden" name="Apply_id" value="${Apply_id}">
                <input type="hidden" name="hazardous_waste" value="${All_Vehicles[0].waste_Type}">
                <input type="hidden" name="own" value="${All_Vehicles[0].own}">
                <input type="hidden" name="User Id" value="${User_Info[0].user_Id}">
                <input type="hidden" name="UserType" value="${currentUser}">
                <input type="hidden" name="company_id" value="${Company_info.company_Id}">
                <input type="hidden" name="company_email" value="${Company_info.email}">
                <input type="hidden" name="company_phone" value="${Company_info.phone_Number}">
            </form>
            <script>
                /** function toggle(source) {
                    var checkboxes = document.querySelectorAll('.CheckList5');
                    for (var i = 0; i < checkboxes.length; i++) {
                        if (checkboxes[i] != source)
                            checkboxes[i].checked = source.checked;
                    }
                }**/

                function selectAll(source){
                    // checkboxes = document.getElementsByName('foo');
                    for(var checkbox in checkboxes)
                        checkbox.checked = source.checked;

                }


                /** function toggle1(source) {
                   // checkboxes = document.querySelectorAll('.CheckList2');
                    for(var checkbox in checkboxes)
                        checkbox.checked = source.checked;

                }
                 function toggle2(source) {
                    var checkboxes = document.querySelectorAll('.CheckList3');
                    for (var i = 0; i < checkboxes.length; i++) {
                        if (checkboxes[i] != source)
                            checkboxes[i].checked = source.checked;
                    }
                }
                 function toggle3(source) {
                    var checkboxes = document.querySelectorAll('.CheckList2');
                    for (var i = 0; i < checkboxes.length; i++) {
                        if (checkboxes[i] != source)
                            checkboxes[i].checked = source.checked;
                    }
                }**/
                var isChecked = false;
                function toggle4(source) {
                    var checkboxes = document.querySelectorAll('.CheckList1');

                    if (isChecked) {
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = true;
                            }
                        }
                    } else {
                        for (var i = 0; i < checkboxes.length; i++) {
                            console.log(i)
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = false;
                            }
                        }
                    }
                    isChecked = !isChecked;

                }
                function toggle5(source) {
                    var checkboxes = document.querySelectorAll('.CheckList2');

                    if (isChecked) {
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = true;
                            }
                        }
                    } else {
                        for (var i = 0; i < checkboxes.length; i++) {
                            console.log(i)
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = false;
                            }
                        }
                    }
                    isChecked = !isChecked;

                }

                function toggle6(source) {
                    var checkboxes = document.querySelectorAll('.CheckList3');

                    if (isChecked) {
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = true;
                            }
                        }
                    } else {
                        for (var i = 0; i < checkboxes.length; i++) {
                            console.log(i)
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = false;
                            }
                        }
                    }
                    isChecked = !isChecked;

                }

                function toggle7(source) {
                    var checkboxes = document.querySelectorAll('.CheckList4');

                    if (isChecked) {
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = true;
                            }
                        }
                    } else {
                        for (var i = 0; i < checkboxes.length; i++) {
                            console.log(i)
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = false;
                            }
                        }
                    }
                    isChecked = !isChecked;

                }

                function toggle8(source) {
                    var checkboxes = document.querySelectorAll('.CheckList5');

                    if (isChecked) {
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = true;
                            }
                        }
                    } else {
                        for (var i = 0; i < checkboxes.length; i++) {
                            console.log(i)
                            if (checkboxes[i].type == 'checkbox') {
                                checkboxes[i].checked = false;
                            }
                        }
                    }
                    isChecked = !isChecked;

                }


                function Approve(){
                    document.getElementById("Approve").submit();
                }
            </script>


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

<!-- jQuery -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Sweet-Alert  -->
<script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
<script src="dist/js/sweetalert-data.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
<script src="vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- Fancy Dropdown JS -->
<script src="dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Owl JavaScript -->
<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>
<script src="dist/js/toast-data.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>



</body>

</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <title>DWMPC || Company Attachments</title>
  <meta name="description" content="Waste Management System by Next-gen" />
  <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
  <meta name="Next-gen" content="hencework"/>

  <!-- Favicon -->
  <link rel="shortcut icon" href="icon.ico">
  <link rel="icon" href="icon.ico" type="image/x-icon">

  <!-- Bootstrap Dropify CSS -->
  <link href="vendors/bower_components/dropify/dist/css/dropify.min.css" rel="stylesheet" type="text/css"/>

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
        <span>User Information</span>
        <i class="zmdi zmdi-more"></i>
      </li>
      <li>
        <a class="active" href="javascript:void(0);" data-toggle="collapse" data-target="#dashboard_dr"><div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i>Home<span class="right-nav-text"></span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a id="open_right_sidebar" href="#" onclick="document.getElementById('chat_tab_btn').click();" data-toggle="collapse" data-target="#ecom_dr"><div class="pull-left"><i class="zmdi zmdi-email mr-20"></i><span class="right-nav-text">Emails</span></div><div class="pull-right"><span class="label label-warning">3</span></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="" id="open_profile" onclick="document.getElementById('todo_tab_btn').click();" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="zmdi zmdi-account mr-20"></i><span class="right-nav-text">Profile</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="" class="tst2" ><div class="pull-left"><i class="zmdi zmdi-notifications mr-20"></i><span class="right-nav-text">Notification</span></div><div class="pull-right"><span class="label label-warning">8</span></div><div class="clearfix"></div></a>
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
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-edit mr-20"></i><span class="right-nav-text">Forms</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"><i class="zmdi zmdi-chart-donut mr-20"></i><span class="right-nav-text">Charts </span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="javascript:void(0);"  class="tst2" data-toggle="collapse" data-target="#table_dr"><div class="pull-left"><i class="zmdi zmdi-trending-up mr-20"></i><span class="right-nav-text">Statistics</span></div><div class="pull-right"><i></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="" class="tst2" data-toggle="collapse" data-target="#icon_dr"><div class="pull-left"><i class="zmdi zmdi-file mr-20"></i><span class="right-nav-text">File Manager</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#maps_dr"><div class="pull-left"><i class="zmdi zmdi-map mr-20"></i><span class="right-nav-text">maps</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
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
        <a href="javascript:void(0);" class="tst2" data-toggle="collapse" data-target="#pages_dr"><div class="pull-left"><i class="zmdi zmdi-settings mr-20"></i><span class="right-nav-text">Settings</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
      </li>
      <li>
        <a href="Contact-us.jsp"><div class="pull-left"><i class="zmdi zmdi-phone mr-20"></i><span class="right-nav-text">Contact Us</span></div><div class="clearfix"></div></a>
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
          <h5 class="txt-dark">blank page</h5>
        </div>
        <!-- Breadcrumb -->
        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/Home.jsp">Dashboard</a></li>
            <li><a href="${pageContext.request.contextPath}/Vehicle-Table.jsp"><span>Company Vehicles</span></a></li>
            <li class="active"><span>Company Attachments</span></li>
          </ol>
        </div>
        <!-- /Breadcrumb -->
      </div>
      <!-- /Title -->

      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-warning card-view">
            <div class="panel-heading">
              <div class="pull-left">
                <h6 class="panel-title txt-light">Company Attachment</h6>
              </div>
              <div class="clearfix"></div>
            </div>

            <div class="panel-wrapper collapse in">
              <div class="panel-body">
                <div class="row">
                  <div class="col-md-12">
                    <c:url var="tempDownloadRo" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Certification_of_roadwortiness"/>
                    </c:url>
                    <c:url var="tempDownloadAff" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Affidavit"/>
                    </c:url>
                    <c:url var="tempDownloadBA_permit" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="BA_permit"/>
                    </c:url>
                    <c:url var="tempDownloadgetPayment_receipt" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="getPayment_receipt"/>
                    </c:url>
                    <c:url var="tempDownloadCertification_of_cooperation" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Certification_of_cooperation"/>
                    </c:url>
                    <c:url var="tempDownloadFacility_Licence_For_all_recyclers" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Facility_Licence_For_all_recyclers"/>
                    </c:url>
                    <c:url var="tempDownloadPrDP_H_For_Hazardous_Waste" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="PrDP_H_For_Hazardous_Waste"/>
                    </c:url>
                    <c:url var="tempDownloadCer" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Certificate_of_training_on_Both_Fire_fighting_and_First_Aid"/>
                    </c:url>
                    <c:url var="tempDownloadSafe" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Certificate_of_training_on_Safety_Health_and_Environment_Waste"/>
                    </c:url>
                    <c:url var="tempDownloadHeath" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Certificate_of_training_on_Occupational_Health_and_Safety"/>
                    </c:url>
                    <c:url var="tempDownloadHazardous" value="ServletDwmpc">
                      <c:param name="command" value="downloadVehicleAttachment"/>
                      
                      <c:param name="Download" value="Contingency_plan_Containing_Spill_containment_and_accident_response_plan_for_hazardous_waste"/>
                    </c:url>
                   <c:url var="tempDownloadMo" value="ServletDwmpc">
                     <c:param name="command" value="downloadVehicleAttachment"/>
                     
                     <c:param name="Download" value="Motor_Vehicle_Registration_Book"/>
                   </c:url>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="Documents/Payment receipt/${Attachments.payment_receipt}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Payment Receipt.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadBA_permit}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            BA Permit.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadAff}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Affidavit for Borrowed Vehicle.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadFacility_Licence_For_all_recyclers}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Facility Licence.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadPrDP_H_For_Hazardous_Waste}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            PrDP 'H' For Hazardous Waste.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadMo}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Motor Vehicle Registration Book.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadHeath}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Health and Safety.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadHazardous}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            hazardous waste.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadCer}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Fire Fighting and First Aid.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadSafe}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Health and Environment.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadRo}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Certification Of Roadwortiness.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                      <div class="file">
                        <a href="${tempDownloadCertification_of_cooperation}">

                          <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                          </div>
                          <div class="file-name">
                            Certification of Cooperation.pdf
                            <br>
                            <span>Added: Jan 11, 2016</span>
                          </div>
                        </a>
                      </div>
                    </div>
                    
                  </div>
                </div>
                <div style="float: right" class="row">
                  <button type="button" href="#Vehicle-Attachment" data-toggle="modal" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Edit Vehicle Attachments</span></button>
                  <button type="button" href="#Certificate-Attachment" data-toggle="modal" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Edit Certificates</span></button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="Vehicle-Attachment" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
         <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h5 class="modal-title">Upload All The Following ${Attachments.chase_number} </h5>
            </div><form action="ServletDwmpc" method="post" enctype="multipart/form-data">
            <div class="modal-body">
              <input type="hidden" id="command" name="command" class="hidden" value="RegisteringVehicle"/>
              <input type="hidden" id="action" name="action"  class="hidden" value="EditingAttachment"/>
              <input type="hidden" name="Chassis_Number" class="hidden" value="${Attachments.chase_number}"/>
              <input type="hidden" name="CompanyName" class="hidden" value="${Company_info.company_Name}"/>
              <input type="hidden"  name="addAction"  class="hidden" value="EditingVehicleAttachment"/>

              <div class="form-group">
                <div class="row">
                  <div class="col-md-6 col-xs-12 mt-40">
                    <label class="control-label mb-10" for="Payment_Receipt"> Payment Receipt(required):</label>
                    <input type="file" id="Payment_Receipt" name="Payment receipt" class="dropify" value="Documents/Payment receipt/${Attachments.payment_receipt}" />
                    <input type="hidden" name="Payment receipt1"  value="${Attachments.payment_receipt}" />
                  </div>
                  <div class="span1"></div>
                  <div class="col-md-6 col-xs-12 mt-40">
                    <label class="control-label mb-10" for="BA_Permit"> BA Permit(required):</label>
                    <input type="file" id="BA_Permit" name="BA permit" class="dropify"  value="Documents/BA permit/${Attachments.BA_permit}" />
                    <input type="hidden" name="BA permit1"  value="${Attachments.BA_permit}" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Facility"> Facility Licence[For all Recyclers](required):</label>
                    <input type="file" id="Facility" name="Facility Licence" class="dropify" value="Documents/Facility Licence/${Attachments.facility_Licence}"  />
                    <input type="hidden" name="Facility Licence1" value="${Attachments.facility_Licence}"  />
                  </div>
                  <div class="span1"></div>
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Affidavit"> Affidavit for Borrowed Vehicle(required):</label>
                    <input type="file" id="Affidavit" name="affidavit" class="dropify" value="Documents/Affidavit/${Attachments.affidavit}"  />
                    <input type="hidden" name="affidavit1" value="${Attachments.affidavit}"  />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="PrDP"> PrDP 'H' For Hazardous Waste(required):</label>
                    <input type="file" id="PrDP" name="PrDP 'H' For Hazardous Waste" class="dropify" value="Documents/PrDP 'H' For Hazardous Waste/${Attachments.prPD}" />
                    <input type="hidden" name="PrDP 'H' For Hazardous Waste1"  value="${Attachments.prPD}" />
                  </div>
                  <div class="span1"></div>
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Registration_Book">Motor Vehicle Registration Book(required):</label>
                    <input type="file" id="Registration_Book" name="Motor_Vehicle_Registration_Book" class="dropify" value="Documents/Motor Vehicle Registration Book/${Attachments.blue_book}"  />
                    <input type="hidden" name="Motor_Vehicle_Registration_Book1" value="${Attachments.blue_book}"  />
                  </div>
                </div>
              </div>

            </div>
            <div  class="modal-footer">
              <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Done</span></button>
            </div>
          </form>
          </div>
        </div>
      </div>

      <div id="Certificate-Attachment" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h5 class="modal-title">Upload The Following Certificates</h5>
            </div><form action="ServletDwmpc" method="post" enctype="multipart/form-data">

            <div class="modal-body">
              <input type="hidden" name="command" class="hidden" value="RegisteringVehicle"/>
              <input type="hidden" name="action"  class="hidden" value="EditingAttachment"/>
              <input type="hidden" name="Chassis_Number" class="hidden" value="${Attachments.chase_number}"/>
              <input type="hidden" name="CompanyName" class="hidden" value="${Company_info.company_Name}"/>
              <input type="hidden"  name="addAction"  class="hidden" value="EditingCertificateAttachment"/>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Health_and_Safety"> Health and Safety(required):</label>
                    <input type="file" id="Health_and_Safety" name="Health and Safety" class="dropify"  value="Documents/Health and Safety/${Attachments.training_on_health_and_safety}"  />
                  </div>
                  <div class="span1"></div>
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="hazardous_waste">hazardous waste(required):</label>
                    <input type="file" id="hazardous_waste" name="hazardous waste" class="dropify" value="Documents/Hazardous Waste/${Attachments.hazardous_waste}"  />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="FF_FA">Fire Fighting and First Aid(required):</label>
                    <input type="file" id="FF_FA" name="Fire fighting and First Aid" class="dropify" value="Documents/Fire fighting and First Aid/${Attachments.fire_fighting_and_first_aid}"  />
                  </div>
                  <div class="span1"></div>
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Environment">Health and Environment(required):</label>
                    <input type="file" id="Environment" name="Health and Environment" class="dropify" value="Documents/Health and Environment/${Attachments.health_and_Environment}"  />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Roadwortiness"> Certification Of Roadwortiness (required):</label>
                    <input type="file" id="Roadwortiness" name="Certification_of_roadwortiness" class="dropify" value="Documents/Certification of Road worthiness/${Attachments.road_Wortiness}"  />

                  </div>
                  <div class="span1"></div>
                  <div class="col-md-6 col-xs-12">
                    <label class="control-label mb-10" for="Cooperation">Certification of Cooperation(required):</label>
                    <input type="file" id="Cooperation" name="Certification of cooperation" class="dropify" value="Documents/Certification of cooperation/${Attachments.certification_of_Cooperation}"/>
                  </div>
                </div>
              </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Done</span></button>
            </div>
          </form>
          </div>
        </div>
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

<!-- Data table JavaScript -->
<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="dist/js/dataTables-data.js"></script>

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- Owl JavaScript -->
<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>
<script src="dist/js/toast-data.js"></script>

<!-- Bootstrap Daterangepicker JavaScript -->
<script src="vendors/bower_components/dropify/dist/js/dropify.min.js"></script>

<!-- Form Flie Upload Data JavaScript -->
<script src="dist/js/form-file-upload-data.js"></script>

</body>

</html>

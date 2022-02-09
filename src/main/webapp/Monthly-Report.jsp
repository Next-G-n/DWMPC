<%--
  Created by IntelliJ IDEA.
  User: NITRO5
  Date: 10/18/2021
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <title>DWMPC || Monthly Report</title>
  <meta name="description" content="DWMPC created by next-gen." />
  <meta name="keywords" content="DWMPC" />
  <meta name="author" content="Next-gen"/>
  <!-- Favicon -->
  <link rel="shortcut icon" href="icon.ico">
  <link rel="icon" href="icon.ico" type="image/x-icon">

  <!--alerts CSS -->
  <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">


  <!-- vector map CSS -->
  <link href="vendors/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" type="text/css"/>
  <!-- Bootstrap Colorpicker CSS -->
  <link href="vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css"/>

  <!-- Bootstrap Datetimepicker CSS -->
  <link href="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>

  <!-- Bootstrap Daterangepicker CSS -->
  <link href="vendors/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css"/>


  <!-- select2 CSS -->
  <link href="vendors/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css"/>
  <!-- bootstrap-select CSS -->
  <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script>
    $(document).ready(function(){
      $("select").change(function(){
        $(this).find("option:selected").each(function(){
          var optionValue = $(this).attr("value");
          if(optionValue){
            $(".box").not("." + optionValue).hide();
            $("." + optionValue).show();
          } else{
            $(".box").hide();
          }
        });
      }).change();
    });
  </script>

  <!-- Footable CSS -->
  <link href="vendors/bower_components/FooTable/compiled/footable.bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Report</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
        <ul id="form_dr" class="collapse collapse-level-1 two-col-list">
      <c:if test="${ReportBtn=='Upload'}">
        <li>
          <a href="Monthly-Report.jsp" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"></i><span class="right-nav-text">Give Report</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
        </li>
      </c:if>
      <c:if test="${ReportBtn!='Upload'}">
        <li>
          <a href="javascript:void(0);" class="Report-toast" data-toggle="collapse" data-target="#chart_dr"><div class="pull-left"></i><span class="right-nav-text">Give Report</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
        </li>
      </c:if>
        </ul>
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
          <h5 class="txt-dark">Monthly Report</h5>
        </div>
        <!-- Breadcrumb -->
        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/Home.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/CompanyInfo.jsp"><span>Company Information</span></a></li>
            <li class="active"><span>Monthly Report</span></li>
          </ol>
        </div>
        <!-- /Breadcrumb -->
      </div>
      <!-- /Title -->

      <!-- Row -->
      <div class="row" style="display: none;">
        <div class="col-md-12">
          <div class="panel panel-default card-view">
            <div class="panel-heading">
              <div class="pull-left">
                <h6 class="panel-title txt-dark">Date time picker</h6>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="panel-wrapper collapse in">
              <div class="panel-body">
                <div class="form-wrap">
                  <form>
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label class="control-label mb-10 text-left">date time pick</label>
                          <div class='input-group date' id='datetimepicker1'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
																	<span class="fa fa-calendar"></span>
																</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label class="control-label mb-10 text-left">time pick</label>
                          <div class='input-group date' id='datetimepicker2'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
																	<span class="fa fa-clock-o"></span>
																</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <label class="control-label mb-10 text-left">inline date pick</label>
                        <div class="form-group">
                          <div class='input-group date' id='datetimepicker3'></div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <label class="control-label mb-10 text-left">inline date time pick</label>
                        <div class="form-group">
                          <div class='input-group date' id='datetimepicker4'></div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /Row -->

      <!-- Row -->
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default card-view">
            <div class="panel-heading">
              <div class="pull-left">
                <h6 class="panel-title txt-dark">Waste Shipped</h6>
              </div>
              <div class="clearfix"></div>
            </div>

            <div class="panel-wrapper collapse in">
              <div class="panel-body">
                <div class="table-wrap">
                  <table id="footable_2" class="table" data-paging="true" data-filtering="true" data-sorting="true">
                    <thead>
                    <tr>
                      <th data-name="id" data-breakpoints="xs" data-type="number">ID</th>
                      <th data-name="WasteType">Waste Type</th>
                      <th data-name="GeneratedQuantity">Generated Quantity in (Kg/ Tons/litres)</th>
                      <th data-name="AmountShipped" data-breakpoints="xs">Amount Shipped</th>
                      <th data-name="Returns" data-breakpoints="xs">Returns</th>
                      <th data-name="startedOn" data-breakpoints="xs sm" data-type="date" data-format-string="MMMM Do YYYY">Started On</th>
                      <th data-name="dob" data-breakpoints="xs sm md" data-type="date" data-format-string="MMMM Do YYYY">End On</th>

                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                    <input type="hidden" name="action" id="Report_id" value="${Report_id}">
                  </table>

                  <!--Editor-->
                  <div class="modal fade" id="editor-modal" tabindex="-1" role="dialog" aria-labelledby="editor-title">

                    <div class="modal-dialog" role="document">
                      <form class="modal-content form-horizontal" id="editor" action="ServletDwmpc" method="post">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                          <h5 class="modal-title" id="editor-title">Add Row</h5>
                        </div>
                        <div class="modal-body">
                          <input type="hidden" name="command" value="Report Waste Type">
                          <input type="hidden" name="action" id="action_id" value="">
                          <input type="hidden" name="Company Id" value="${Company_info.company_Id}"/>
                          <input type="hidden" name="Company Name" value="${Company_info.company_Name}"/>
                          <input type="number" id="id" name="id" class="hidden"/>
                          <div class="form-group required">
                            <label for="WasteType" class="col-sm-3 control-label">Waste Type</label>

                            <div class="col-sm-9">

                              <select name="Waste Type"  id="WasteType" class="selectpicker" data-style="form-control btn-default btn-outline">

                                <option value="Ferrous Metal">Ferrous Metal(Steel, including sub-grade ,e.t.c)</option>
                                <option value="Brass">Brass</option>
                                <option value="Copper">Copper</option>
                                <option value="Aluminium">Aluminium</option>
                                <option value="Scrap Batteries">Scrap Batteries</option>
                                <option value="Cans">Cans</option>
                                <option value="Paper">Paper</option>
                                <option value="Plastics">Plastics</option>
                                <option value="Used Oil">Used Oil</option>
                                <option value="Glass">Glass</option>
                                <option id="other" value="yes">Other</option>
                              </select>


                            </div>
                          </div>
                          <div id="yes" class="form-group yes box" >
                            <label for="GeneratedQuantity" class="col-sm-3 control-label">Other Waste Type</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control " id="yess" name="yes" placeholder="Other Waste type">
                            </div>

                          </div>
                          <div class="form-group required">
                            <label for="GeneratedQuantity" class="col-sm-3 control-label">Generated Quantity</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="GeneratedQuantity" name="GeneratedQuantity" placeholder="Generated Quantity" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="AmountShipped" class="col-sm-3 control-label">Amount Shipped</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="AmountShipped" name="AmountShipped" placeholder="Amount Shipped">
                            </div>
                          </div>
                          <div class="form-group required">
                            <label for="Returns" class="col-sm-3 control-label">Returns</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="Returns" name="Returns" placeholder="Returns" required>
                            </div>
                          </div>
                          <div class="form-group required">
                            <label for="Returns" class="col-sm-3 control-label">Started On</label>
                            <div class="col-sm-9">
                              <input class="form-control input-daterange-datepicker" type="text" id="startedOn" name="startedOn" value=""/>
                            </div>
                          </div>

                        </div>
                        <div class="modal-footer">
                          <button type="submit" class="btn btn-primary">Save changes</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        </div>
                      </form>
                    </div>
                  </div>
                  <!--/Editor-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /Row -->


      <!-- Row -->
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default card-view">
            <div class="panel-heading">
              <div class="pull-left">
                <h6 class="panel-title txt-dark">Employment Characteristics</h6>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="panel-wrapper collapse in">
              <div class="panel-body">
                <div class="table-wrap">
                  <div class="table-responsive">
                    <table id="edit_datable_1" class="table  table-bordered table-striped m-b-0" >
                      <thead>

                      <tr>
                        <th rowspan="2">Type of Employee</th>
                        <th colspan="2">Citizens</th>
                        <th colspan="2">Non-Citizens</th>
                        <th rowspan="2">Salary (BWP)</th>
                      </tr>
                      <tr>
                        <th>Male</th>
                        <th>Female</th>
                        <th>Male</th>
                        <th>Female</th>
                      </tr>
                      </thead>
                      <tbody id="#tbody" >
                      <tr id="tr1">
                        <td>Working proprietors</td>
                        <td id="fo1" >0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                      <tr id="tr2">
                        <td>Permanent employees</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                      </tr>
                      <tr id="tr3">
                        <td readonly>Casual/ Temporary employees</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                      </tr>
                      <tr id="tr4">
                        <td readonly>Number of Newly employed</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                      </tr>
                      <tr id="tr5">
                        <td> Number dismissed during the reporting Period</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                      </tr>
                      </tbody>
                      <tfoot>
                      <tr>
                        <th><strong>TOTAL</strong></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                      </tr>
                      </tfoot>
                    </table>
                  </div>
                </div>
                <div class="form-group mb-0" style="float: right">
                  <button type="submit" onclick="SubmitReport()" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">submit</span></button>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /Row -->
      <div style="display: none">
        <form id="SubmitReport" method="post" action="ServletDwmpc">
          <input class="inputs" type="hidden" name="command" value="Monthly Report">
          <input class="inputs" type="hidden" name="action" value="Registration">
          <input type="hidden" name="Company Id" class="hidden" value="${Company_info.company_Id}"/>
          <input type="text" 	id="C_Male1" name="C_Male1" value="">
          <input type="text" id="C_Male2" name="C_Male2" value="0">
          <input type="text" id="C_Male3" name="C_Male3" value="0">
          <input type="text" id="C_Male4" name="C_Male4" value="0">
          <input type="text" id="C_Male5" name="C_Male5" value="0">
          <input type="text" id="C_Male6" name="C_Male6" value="0">
          <input type="text" id="C_Female1" name="C_Female1" value="0">
          <input type="text" id="C_Female2" name="C_Female2" value="0">
          <input type="text" id="C_Female3" name="C_Female3" value="0">
          <input type="text" id="C_Female4" name="C_Female4" value="0">
          <input type="text" id="C_Female5" name="C_Female5" value="0">
          <input type="text" id="C_Female6" name="C_Female6" value="0">
          <input type="text" id="N_Male1" name="N_Male1" value="0">
          <input type="text" id="N_Male2" name="N_Male2" value="0">
          <input type="text" id="N_Male3" name="N_Male3" value="0">
          <input type="text" id="N_Male4" name="N_Male4" value="0">
          <input type="text" id="N_Male5" name="N_Male5" value="0">
          <input type="text" id="N_Male6" name="N_Male6" value="0">
          <input type="text" id="N_Female1" name="N_Female1" value="0">
          <input type="text" id="N_Female2" name="N_Female2" value="0">
          <input type="text" id="N_Female3" name="N_Female3" value="0">
          <input type="text" id="N_Female4" name="N_Female4" value="0">
          <input type="text" id="N_Female5" name="N_Female5" value="0">
          <input type="text" id="N_Female6" name="N_Female6" value="0">
          <input type="text" id="Salary1" name="Salary1" value="0">
          <input type="text" id="Salary2" name="Salary2" value="0">
          <input type="text" id="Salary3" name="Salary3" value="0">
          <input type="text" id="Salary4" name="Salary4" value="0">
          <input type="text" id="Salary5" name="Salary5" value="0">
          <input type="text" id="Salary6" name="Salary6" value="0">
        </form>

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

<!-- jQuery -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Data table JavaScript -->
<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="vendors/bower_components/editable-table/mindmup-editabletable.js"></script>
<script src="dist/js/Monthly-Report-numeric-input.js"></script>
<script src="dist/js/editable-table-data.js"></script>

<!-- Data table JavaScript -->
<script src="vendors/bower_components/moment/min/moment.min.js"></script>
<script src="vendors/bower_components/FooTable/compiled/footable.min.js" type="text/javascript"></script>
<script src="dist/js/Monthly-Report-Footable.js"></script>

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- Fancy Dropdown JS -->
<script src="dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Owl JavaScript -->
<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Bootstrap Datetimepicker JavaScript -->
<script type="text/javascript" src="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

<!-- Bootstrap Daterangepicker JavaScript -->
<script src="vendors/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- Form Picker Init JavaScript -->
<script src="dist/js/form-picker-data.js"></script>


<!-- Bootstrap Colorpicker JavaScript -->
<script src="vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>

<script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>
<script src="dist/js/toast-data.js"></script>

<script>

  var form = $('#editor');
  form.submit(function () {

    $.ajax({
      type: form.attr('method'),
      url: form.attr('action'),
      data: form.serialize(),
      fail: function (data){

      },
      success: function (data) {
      }
    });

    return false;
  });

  $(document).ready(function(){



    $("select").change(function(){
      $(this).find("option:selected").each(function(){
        var optionValue = $(this).attr("value");
        if(optionValue){
          $(".box").not("." + optionValue).hide();
          $("." + optionValue).show();
        } else{
          $(".box").hide();
        }
      });
    }).change();
  });
  $('#foo').keyup(updatetxt);
  //$('#foo').keydown(updatetxt);

  //var foo = $('#foo').val();

  function updatetxt() {
    $('#goo').val($('#foo').val());
  }
  $('#fo1').keyup(updatetxt1);
  function updatetxt1() {
    $('#goo').val($('#fo1').val());
  }
  $('#fo1').keyup(function(){
    $('#goo').val($(this).val());
  });

  function SubmitReport(){
    document.getElementById("SubmitReport").submit();
  }
</script>

</body>
</html>
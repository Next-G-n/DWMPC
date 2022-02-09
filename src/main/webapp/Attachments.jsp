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
        <a href="javascript:void(0);" data-toggle="collapse" data-target="#form_dr"><div class="pull-left"><i class="zmdi zmdi-edit mr-20"></i><span class="right-nav-text">Forms</span></div><div class="pull-right"><i class=""></i></div><div class="clearfix"></div></a>
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
                  <button type="button" href="#Vehicle-Attachment" data-toggle="modal" class="btn btn-primary btn-anim btn-rounded"><i class="ti-pencil"></i><span class="btn-text">Edit Vehicle Attachments</span></button>
                  <button type="button" href="#Certificate-Attachment" data-toggle="modal" class="btn btn-primary btn-anim btn-rounded"><i class="ti-pencil"></i><span class="btn-text">Edit Certificates</span></button>
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
             <c:if test="${Vehicles.status=='Pending'}">
            <div class="modal-footer">
              <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Done</span></button>
            </div>
             </c:if>
          </form>
          </div>
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

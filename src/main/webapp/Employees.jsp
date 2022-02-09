<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>DWMPC || Company Employees</title>
    <meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
    <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
    <meta name="author" content="hencework"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="icon.ico">
    <link rel="icon" href="icon.ico" type="image/x-icon">

    <!-- bootstrap-select CSS -->
    <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>


    <!-- Data table CSS -->
    <link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

    <!-- Footable CSS -->
    <link href="vendors/bower_components/FooTable/compiled/footable.bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="dist/css/style.css" rel="stylesheet" type="text/css">
</head>
<script>

    window.addEventListener('beforeunload', async (event) => {
        event.preventDefault();
        event.returnValue = ''; // For chrome
        alert("thsiii");

        await document.getElementById("Employee_info").submit();
    });
</script>

<body onbeforeunload="HandleBackFunctionality()">

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
                        <li class="active"><span>Employees</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->




            </div>
            <!-- /Title -->

            <!-- Row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-warning card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h6 class="panel-title txt-light">Employees</h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="table-wrap mt-40">

                                    <div class="table-responsive">

                                        <table  id="example"  data-paging="true"  class="table table-hover display  pb-30">
                                            <thead>
                                            <tr>
                                                <th>#</th>
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
                                            <c:set var="countEmployee" value="0" scope="page"/>
                                            <c:forEach var="Employee" items="${All_Employee}">
                                                <c:set var="countEmployee" value="${countEmployee+1}" scope="page"/>

                                                <tr>
                                                    <td class="Count">${countEmployee}</td>
                                                    <td class="First_Name">${Employee.first_Name}</td>
                                                    <td class="Last_Name">${Employee.last_Name}</td>
                                                    <td class="Job_Title">${Employee.job_Title}</td>
                                                    <td class="Qualification">${Employee.qualification}</td>
                                                    <td class="training">${Employee.trained_In_Waste_Management}</td>
                                                    <td class="Contact">${Employee.contact}</td>
                                                    <td class="text-nowrap"><span class="pencil-Edit" id="${countEmployee}" style="" data-toggle="modal" onclick="toggleModal(this, id)" data-target="#Officer-Registration-modal"> <a  class="mr-25" data-toggle="tooltip" data-original-title="Edit"> <i class="fa fa-pencil text-inverse m-r-10"></i> </a></span> <a href="#"  data-toggle="tooltip" data-original-title="Close"> <i class="fa fa-close text-danger"></i> </a> </td>
                                                    <td style="display: none" class="Employee_Id" >${Employee.company_Personnel_Id}</td>

                                                </tr>
                                            </c:forEach>
                                            <input type="hidden" id="count_Employees" value="${countEmployee}" />
                                            </tbody>
                                        </table>


                                    </div>

                                    <div id="Officer-Registration-modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h5 class="modal-title" id="myLargeModalLabel">Editing Employee Information for <a id="OfficerName">$Name</a></h5>
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
                                                                <input type="text" id="First_Name" name="First_Name"  class="form-control required"   required/>
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12 mt-40">
                                                                <label class="control-label mb-10" for="Last_Name"> Last Name(required):</label>
                                                                <input type="text" id="Last_Name" name="Last_Name"  class="form-control required"   required/>
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
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label for="training" class="col-sm-3 control-label">Training in waste Management(required):</label>
                                                                <select class="selectpicker" id= "training" name="training" data-style="form-control btn-default btn-outline">
                                                                    <option value="Yes">Yes</option>
                                                                    <option value="No">No</option>
                                                                </select>
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10" for="Contact">Contact(required):</label>
                                                                <input type="text" id="Contact" name="Contact"  class="form-control required"  required/>
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

                                    <script>
                                        let tableRowElement;
                                        function toggleModal(element) {

                                            tableRowElement = element.parentElement.parentElement;
                                            const First_Name = tableRowElement.getElementsByClassName('First-Name')[0].innerHTML;
                                            const Last_Name = tableRowElement.getElementsByClassName('Last-Name')[0].innerHTML;
                                            const Job_Title = tableRowElement.getElementsByClassName('Job_Title')[0].innerHTML;
                                            const Qualification = tableRowElement.getElementsByClassName('Qualification')[0].innerHTML;
                                            const training = tableRowElement.getElementsByClassName('training')[0].innerHTML;
                                            const Contact = tableRowElement.getElementsByClassName('Contact')[0].innerHTML;
                                            const Employee_Id = tableRowElement.getElementsByClassName('Employee_Id')[0].innerHTML;


                                            document.getElementById('First_Name').value = First_Name;
                                            document.getElementById('Last_Name').value = Last_Name;
                                            document.getElementById('Job_Title').innerHTML=Job_Title;
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
                                    <button type="button" onclick="location.href='Vehicle-Table.jsp';" data-toggle="modal" class="btn btn-primary btn-anim btn-rounded"><i class="ti-save"></i><span class="btn-text">Add New Employee</span></button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- /Row -->

            <form method="post" id="Employee_info" action="ServletDwmpc" onsubmit="return false">
                <input type="hidden" name="command" value="EmployeesDetail">
                <input type="hidden" name="company_id" value="${Company_info.company_Id}">
            </form>

            <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

            <script type="text/javascript">

                var form = $('#editor');
                form.submit(function () {

                    $.ajax({
                        type: form.attr('method'),
                        url: form.attr('action'),
                        data: form.serialize(),
                        success: function (data) {
                            var result=data;
                            $('#content').html(result);

                        }
                    });

                    return false;
                });



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

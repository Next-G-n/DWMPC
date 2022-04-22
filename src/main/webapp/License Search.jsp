<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>DWMPC || License Search</title>
    <meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
    <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
    <meta name="author" content="hencework"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- vector map CSS -->
    <link href="vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>



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

<div class="wrapper pa-0">
    <!-- Main Content -->
    <div class="page-wrapper pa-0 ma-0 auth-page">
        <div class="container-fluid">
            <!-- Row -->
            <div class="table-struct full-width full-height">
                <div class="table-cell vertical-align-middle auth-form-wrap">
                    <div class="auth-form  ml-auto mr-auto no-float">
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="sp-logo-wrap text-center pa-0 mb-30">
                                    <a href="${pageContext.request.contextPath}/login.jsp">
                                        <img class="brand-img mr-10" src="img/logo2.png" alt="brand"/>
                                    </a>
                                </div>
                                <div class="form-wrap">
                                    <form action="ServletDwmpc" method="post">
                                        <input name="command" type="hidden" value="Search License">
                                        <div class="form-group">
                                            <input type="text" name="license_Number" class="form-control" required="" placeholder="Enter License Number...">
                                        </div>
                                        <div class="form-group text-center">
                                            <button type="submit" class="btn btn-primary btn-rounded">Search</button>
                                        </div>
                                        <c:if test="${Licence_Detail.carrier_Number!=''}">

                                        </c:if>

                                        <c:if test="${Licence_Detail!=null}">

                                        <div  class="panel-body  pagination-lg">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th style="width: 20%;"></th>
                                                    <th>License Detail</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td style="color: #595858"><strong>License Number</strong> </td>
                                                    <td class="Region">${Licence_Detail.licence_number}</td>
                                                </tr>

                                                <tr>
                                                    <td style="color: #595858"><strong>License Statue</strong> </td>
                                                    <td class="Region">${Licence_Detail.status}</td>
                                                </tr>

                                                <tr>
                                                    <td style="color: #595858"><strong>Company Name</strong></td>
                                                    <td class="Email">${Licence_Detail.company_Name}</td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #595858"><strong>Company Email</strong> </td>
                                                    <td class="Street-Address">${Licence_Detail.companyEmail}</td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #595858"><strong>License Type</strong> </td>
                                                    <td class="Street-Address2">${Licence_Detail.licence_type}</td>
                                                </tr>

                                                <tr>
                                                    <td style="color: #595858"><strong>Registration Number</strong></td>
                                                    <td class="Company-status">${Licence_Detail.carrier_Number}</td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #595858"><strong>Date Licence</strong></td>
                                                    <td class="Location">${Licence_Detail.start_date}</td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #595858"><strong>Expiration Date</strong></td>
                                                    <td class="Location">${Licence_Detail.end_date}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        </c:if>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- /Row -->

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
<script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>
</body>
</html>

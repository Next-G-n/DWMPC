<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>DWMPC || Login</title>
		<meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
		<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
		<meta name="author" content="hencework"/>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="icon.ico">
		<link rel="icon" href="icon.ico" type="image/x-icon">

		<!--alerts CSS -->
		<link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">


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
		
		<div class="wrapper pa-0">
			<header class="sp-header">
				<div class="sp-logo-wrap pull-left">
					<a href="${pageContext.request.contextPath}/CompanyInfo.jsp">
						<img class="brand-img mr-10" src="img/logo4.png" alt="brand"/>
					</a>
				</div>
				<div class="form-group mb-0 pull-right">
					<span class="inline-block pr-10">Don't have an account?</span>
					<a class="btn  btn-primary btn-outline" href="signup.jsp">Sign Up</a>
				</div>
				<div class="clearfix"></div>
			</header>
			
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0 auth-page">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height">
						<div class="table-cell vertical-align-middle auth-form-wrap">
							<div class="auth-form  ml-auto mr-auto no-float">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<div class="mb-30">
											<h3 class="text-center txt-dark mb-10">Sign in</h3>
											<h6 class="text-center nonecase-font txt-grey">Enter your details below</h6>
										</div>	

											<div class="panel panel-default card-view">
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
											<form method="post" id="login_test" action="ServletDwmpc">
												<input class="inputs" type="hidden" name="command" value="Login">
												<div class="form-group">
													<label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
													<input type="email" class="form-control" name="email" required="" id="exampleInputEmail_2" value="${LoginError.email}" placeholder="Enter email">
												</div>
												<div class="form-group">
													<label class="pull-left control-label mb-10" for="exampleInputpwd_2">Password</label>
													<a class="capitalize-font txt-primary block mb-10 pull-right font-12" href="forgot-password.jsp">forgot password ?</a>
													<div class="clearfix"></div>
													<input type="password" class="form-control" name="password" required="" id="exampleInputpwd_2" placeholder="Enter Password">
												</div>
												
												<div class="form-group">
													<div class="checkbox checkbox-success pr-10 pull-left">
														<input id="checkbox_2" type="checkbox">
														<label for="checkbox_2">Keep me logged in</label>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="form-group text-center">
													<button type="submit" class="btn btn-primary btn-anim"><i class="fa fa-sign-in"></i><span class="btn-text">Login</span></button>
												</div>
												<div class="form-group text-center">
													<button type="button" onclick="window.open('License Search.jsp', '_parent');" href="/CompanyInfo.jsp" class="btn btn-primary btn-anim"><i class="fa fa-sign-in"></i><span class="btn-text">Search for Licence</span></button>
												</div>
											</form>
														<button style="display: none" id="Error-Login" alt="alert" >testing</button>
														<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

														<script type="text/javascript">
															var form = $('#bbb');
															form.submit(function () {

																alert("this ")
																$.ajax({
																	type: form.attr('method'),
																	url: form.attr('action'),
																	data: form.serialize(),
																	fail: function (data){

																	},
																	success: function (data) {
																		alert("this data :"+data)
																		alert("this data :"+data.toString())
																		var data2=data.toString();
																		alert("this data :"+data2);
																		alert(data2===('Error2'));
																		alert(data2===('Error'));
																		alert(data2.toString()===('Error'));
																		alert("this data :"+data2.equals('Error'))
																		if(data==="Error"){
																			alert("this 1")
																			document.getElementById("Error-Login").click();
																		}else if(data==="Client"){
																			window.open('Home.jsp', '_parent');
																		}else if(data==="Officer"){
																			window.open('Officer-Home.jsp', '_parent');
																		}

																	}
																});

																return false;
															});
														</script>
													</div>
													<c:if test="${LoginError!=null}">
														<script>
															window.onload = function() {
																document.getElementById("Error-Login").click();
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

		<!-- Sweet-Alert  -->
		<script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
		<script src="dist/js/sweetalert-data.js"></script>
		
		<!-- Init JavaScript -->
		<script src="dist/js/init.js"></script>
	</body>
</html>
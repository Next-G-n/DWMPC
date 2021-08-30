<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>Zapily I Fast build Admin dashboard for any platform</title>
		<meta name="description" content="Zapily is a Dashboard & Admin Site Responsive Template by hencework." />
		<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Zapily Admin, Zapilyadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
		<meta name="author" content="hencework"/>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="icon.ico">
		<link rel="icon" href="icon.ico" type="image/x-icon">
		
		<!-- vector map CSS -->
		<link href="../vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>

		<!-- jquery-steps css -->
		<link rel="stylesheet" href="../vendors/bower_components/jquery.steps/demo/css/jquery.steps.css">



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
					<a href="index.html">
						<img class="brand-img mr-10" src="../img/logo4.png" alt="brand"/>
					</a>
				</div>
				<div class="form-group mb-0 pull-right">
					<span class="inline-block pr-10">Already have an account?</span>
					<a class="btn  btn-primary btn-outline" href="login.html">Sign In</a>
				</div>
				<div class="clearfix"></div>
			</header>
			
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0 auth-page">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height">
						<div class="table-cell vertical-align-middle auth-form-wrap">
							<div class="auth-form1 ml-auto mr-auto no-float">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<div class="mb-30">
											<h3 class="text-center txt-dark mb-10">Sign up </h3>
											<h6 class="text-center nonecase-font txt-grey">Enter your details below</h6>
										</div>

										<div class="panel panel-default card-view">
											<div class="panel-wrapper collapse in">
												<div class="panel-body">
													<form id="example-advanced-form" action="#">
														<h3><span class="number"><i class="icon-user-following txt-black"></i></span><span class="head-font capitalize-font">Setting Up</span></h3>
														<fieldset>
															<div class="row">
																<div class="col-sm-12">
																	<div class="form-wrap">
																		<div class="form-group">
																			<div class="row">
																				<div class="col-md-6 col-xs-12">
																					<label class="control-label mb-10" for="firstName">first name (required):</label>
																					<input id="firstName" type="text" name="first_name" class="form-control required" value="" />
																				</div>
																				<div class="span1"></div>
																				<div class="col-md-6 col-xs-12">
																					<label class="control-label mb-10" for="lastName">last name (required):</label>
																					<input id="lastName" type="text" name="last_name" class="form-control required" value="" />
																				</div>
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="control-label mb-10" for="exampleInputEmail">Email (required):</label>
																			<input id="exampleInputEmail"  type="email" name="email" class="form-control required" value="" />
																		</div>
																		<div class="form-group">
																			<label class="control-label mb-10" for="password-2">Password (required):</label>
																			<input id="password-2"  type="password" name="password" class="form-control required" value="" />
																		</div>
																		<div class="form-group">
																			<label class="control-label mb-10" for="confirm-2">Confirm Password (required)</label>
																			<input id="confirm-2"  type="password" name="confirm"  class="form-control required" value="" />
																		</div>
																	</div>
																</div>
															</div>
														</fieldset>
														<h3><span class="number"><i class="icon-bag txt-black"></i></span><span class="head-font capitalize-font">Add Information</span></h3>
														<fieldset>
															<div class="row">
																<div class="col-sm-12">
																	<div class="form-wrap">

																		<div class="form-group">
																			<label class="control-label mb-10" for="postalCode">Omang Number (required):</label>
																			<input id="postalCode" type="text" name="Omang_code"  data-mask="999999999" class="form-control required" value="" />
																		</div>
																		<div class="form-group">
																			<label class="control-label mb-10" for="phoneNumber">phone number (required):</label>
																			<input type="text" id="phoneNumber"  data-mask="+267 99 999 999" name="phone_number" class="form-control required" value="" />
																		</div>
																		<div class="form-group">
																			<label class="control-label mb-10" for="Location">Location (required):</label>
																			<input type="text" class="form-control" id="Location" name="Location" list="location_suggestions" placeholder="Location"   required/>
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
																		<div class="form-group mb-0">
																			<div class="checkbox checkbox-success">
																				<input id="checkbox_1" type="checkbox">
																				<label for="checkbox_1">Billing address is same as shipping address.</label>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</fieldset>
														</form>
												</div>
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
		<script src="../vendors/bower_components/jquery/dist/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="../vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
		
		<!-- Slimscroll JavaScript -->
		<script src="dist/js/jquery.slimscroll.js"></script>
		
		<!-- Init JavaScript -->
		<script src="dist/js/init.js"></script>

		<script src="dist/js/TabForm.js"></script>

		<!-- Form Wizard JavaScript -->
		<script src="../vendors/bower_components/jquery.steps/build/jquery.steps.min.js"></script>
		<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>

		<!-- Form Wizard Data JavaScript -->
		<script src="dist/js/form-wizard-data.js"></script>
	</body>
</html>

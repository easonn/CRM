<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- BEGIN META -->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Olive Enterprise">
<!-- END META -->

<!-- BEGIN SHORTCUT ICON -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- END SHORTCUT ICON -->
<title>Advanced Form Components</title>

<!-- BEGIN STYLESHEET -->

<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="css/bootstrap-reset.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->

<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!-- FONT AWESOME ICON STYLESHEET -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-fileupload/bootstrap-fileupload.css">
<!-- BOOTSTRAP FILEUPLOAD PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css">
<!-- BOOTSTRAP WYSIHTML5 PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-datepicker/css/datepicker.css">
<!-- BOOTSTRAP DATEPICKER PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-timepicker/compiled/timepicker.css">
<!-- BOOTSTRAP TIMEPICKER PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-colorpicker/css/colorpicker.css">
<!-- BOOTSTRAP COLORPICKER PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-daterangepicker/daterangepicker-bs3.css">
<!-- DATERANGE PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-datetimepicker/css/datetimepicker.css">
<!-- DATETIMEPICKER PLUGIN CSS -->
<link rel="stylesheet" type="text/css"
	href="assets/jquery-multi-select/css/multi-select.css">
<!-- JQUERY MULTI SELECT PLUGIN CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- THEME BASIC CSS -->
<link href="css/style-responsive.css" rel="stylesheet">
<!-- THEME BASIC RESPONSIVE  CSS -->

<!--[if lt IE 9]>
<script src="js/html5shiv.js">
</script>
<script src="js/respond.min.js">
</script>
<![endif]-->
<!-- END STYLESHEET -->

</head>
<body>
	<!-- BEGIN SECTION -->

	<section id="container" class="">
		<!-- BEGIN HEADER -->

		<header class="header white-bg">

			<!-- SIDEBAR TOGGLE BUTTON -->
			<div class="sidebar-toggle-box">
				<div data-placement="right" class="fa fa-bars tooltips"></div>
			</div>
			<!-- SIDEBAR TOGGLE BUTTON  END-->
			<a href="index.html" class="logo"> 物料 <span> 管理系统 </span>
			</a>

			<!-- START HEADER  NAV -->

			<nav class="nav notify-row" id="top_menu">

				<ul class="nav top-menu">
					<!-- START NOTIFY TASK BAR -->

					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i class="fa fa-tasks">
						</i> <span class="badge bg-success"> 6 </span>
					</a>

						<ul class="dropdown-menu extended tasks-bar">
							<li class="notify-arrow notify-arrow-blue"></li>
							<li>
								<p class="blue">You have 6 pending tasks</p>
							</li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Dashboard v1.3</div>
										<div class="percent">40%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success set-40"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 40% Complete (success) </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Database Update</div>
										<div class="percent">60%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning set-60"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 60% Complete (warning) </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Iphone Development</div>
										<div class="percent">87%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info set-87"
											role="progressbar" aria-valuenow="20" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 87% Complete </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Mobile App</div>
										<div class="percent">33%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger set-33"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 33% Complete (danger) </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Dashboard v1.3</div>
										<div class="percent">45%</div>
									</div>
									<div class="progress progress-striped active">
										<div class="progress-bar set-45" role="progressbar"
											aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only"> 45% Complete </span>
										</div>

									</div>
							</a></li>
							<li class="external"><a href="#"> See All Tasks </a></li>
						</ul></li>
					<!-- END NOTIFY TASK BAR -->

					<!-- START NOTIFY INBOX BAR -->

					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-envelope-o"> </i> <span class="badge bg-important">
								5 </span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<li class="notify-arrow notify-arrow-blue"></li>
							<li>
								<p class="blue">You have 5 new messages</p>
							</li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini.jpg">
								</span> <span class="subject"> <span class="from">
											Chintan Pandya </span> <span class="time"> Just now </span>
								</span> <span class="message"> Hello, this is an example msg. </span>
							</a></li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini2.jpg">
								</span> <span class="subject"> <span class="from"> Parth
											Jani </span> <span class="time"> 10 mins </span>
								</span> <span class="message"> Hi, Bro how are you ? </span>
							</a></li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini3.jpg">
								</span> <span class="subject"> <span class="from"> Jay
											Bardolia </span> <span class="time"> 3 hrs </span>
								</span> <span class="message"> This is awesome dashboard. </span>
							</a></li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini4.jpg">
								</span> <span class="subject"> <span class="from">
											Pruthvi Bardolia </span> <span class="time"> Just now </span>
								</span> <span class="message"> Hello, this is metrolab </span>
							</a></li>
							<li><a href="#"> See all messages </a></li>
						</ul></li>
					<!-- END NOTIFY INBOX BAR -->

					<!-- START NOTIFY NOTIFICATION BAR -->

					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-bell-o"> </i> <span class="badge bg-warning">
								7 </span>
					</a>
						<ul class="dropdown-menu extended notification">
							<li class="notify-arrow notify-arrow-blue"></li>
							<li>
								<p class="blue">You have 7 new notifications</p>
							</li>
							<li><a href="#"> <span class="label label-danger">
										<i class="fa fa-bolt"> </i>
								</span> Server #3 overloaded. <span class="small italic"> 34
										mins </span>
							</a></li>
							<li><a href="#"> <span class="label label-warning">
										<i class="fa fa-bell"> </i>
								</span> Server #10 not respoding. <span class="small italic"> 1
										Hours </span>
							</a></li>
							<li><a href="#"> <span class="label label-danger">
										<i class="fa fa-bolt"> </i>
								</span> Database overloaded 24%. <span class="small italic"> 4
										hrs </span>
							</a></li>
							<li><a href="#"> <span class="label label-success">
										<i class="fa fa-plus"> </i>
								</span> New user registered. <span class="small italic"> Just
										now </span>
							</a></li>
							<li><a href="#"> <span class="label label-primary">
										<i class="fa fa-bullhorn"> </i>
								</span> Application error. <span class="small italic"> 10 mins </span>
							</a></li>
							<li><a href="#"> See all notifications </a></li>
						</ul></li>
					<!-- END NOTIFY NOTIFICATION BAR -->

				</ul>


			</nav>

			<!-- END HEADER NAV -->


			<!-- START USER LOGIN DROPDOWN  -->

			<div class="top-nav ">
				<ul class="nav pull-right top-menu">
					<li><input type="text" class="form-control search"
						placeholder="Search"></li>

					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="img/avatar1_small.jpg"> <span class="username">
								Pruthvi </span> <b class="caret"> </b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li class="log-arrow-up"></li>
							<li><a href="#"> <i class=" fa fa-suitcase"> </i>
									Profile
							</a></li>
							<li><a href="#"> <i class="fa fa-cog"> </i> Settings
							</a></li>
							<li><a href="#"> <i class="fa fa-bell-o"> </i>
									Notification
							</a></li>
							<li><a href="login.html"> <i class="fa fa-key"> </i> Log
									Out
							</a></li>
						</ul></li>

				</ul>
			</div>
			<!-- END USER LOGIN DROPDOWN  -->

		</header>
		<!-- END HEADER -->


		<!-- BEGIN SIDEBAR -->
		<aside>
			<div id="sidebar" class="nav-collapse">
				<ul class="sidebar-menu" id="nav-accordion">
					<li><a href="index.html" class="active"> <i
							class="fa fa-dashboard"> </i> <span> 首页 </span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class="active">
							<i class="fa fa-tasks"> </i> <span> 物料管理 </span> <span
							class="label label-info span-sidebar"> 7 </span>
					</a>
						<ul class="sub">
							<li><a href="storeAdd.jsp"> 入库 </a></li>
							<li class="active"><a href="deliveryAdd.jsp"> 出库 </a></li>
							<li><a href="sList.jsp"> 入库查询 </a></li>
							<li><a href="dList.jsp"> 出库查询 </a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"> </i> <span> 产品 </span> <span
							class="label label-inverse span-sidebar"> 5 </span>
					</a>
						<ul class="sub">
							<li><a href="productAdd.jsp"> 录入 </a></li>
							<li><a href="pList.jsp"> 检索 </a></li>
							<li><a href="#"> 打印 </a></li>
						</ul></li>
					<li><a href="login.jsp"> <i class="fa fa-user"> </i> <span>
								登陆界面 </span>
					</a></li>
				</ul>
			</div>
		</aside>
		<!-- END SIDEBAR -->
		<!-- BEGIN MAIN CONTENT -->
		<section id="main-content">
			<!-- BEGIN WRAPPER  -->
			<section class="wrapper">
				<!-- begin -->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading">
								<span class="label label-primary">物料出库</span>
							</header>
							<div class="panel-body">
								<div class=" form">
									<form class="cmxform form-horizontal tasi-form"
										id="commentForm" method="post"
										action="http://127.0.0.1:8080/CRM/delivery/add"
										novalidate="novalidate">
										<div class="form-group ">
											<label for="cname" class="control-label col-lg-2">物料名称
												(必填)</label>
											<div class="col-lg-10">
												<input class=" form-control" id="cname"
													name="delivery.d_name" type="text" required="">
											</div>
										</div>
										<div class="form-group ">
											<label for="cemail" class="control-label col-lg-2">数量
												(必填)</label>
											<div class="col-lg-10">
												<input class="form-control " id="cemail" type="text"
													name="" required="">
											</div>
										</div>
										<div class="form-group ">
											<label for="curl" class="control-label col-lg-2">规格
												(必填)</label>
											<div class="col-lg-10">
												<input class="form-control " id="curl" type="text"
													name="delivery.id">
											</div>
										</div>
										<div class="form-group ">
											<label for="ccomment" class="control-label col-lg-2">出库时间</label>
											<div class="col-md-3 col-xs-11">
												<div data-date-viewmode="years"
													data-date-format="dd-mm-yyyy" data-date="12-02-2012"
													class="input-append date dpYears">
													<input type="text" name="" readonly="" value="12-02-2012"
														size="16" class="form-control"> <span
														class="input-group-btn add-on">
														<button class="btn btn-info" type="button">
															<i class="fa fa-calendar"> </i>
														</button>
													</span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-primary" type="submit">保存</button>
												<button class="btn btn-default" type="button">取消</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!-- end -->
			</section>
			<!-- END WRAPPER  -->
		</section>
		<!-- END MAIN CONTENT -->
		<!-- BEGIN FOOTER -->
		<footer class="site-footer">
			<div class="text-center">
				2016 &copy; <a href="" target="_blank">物料 管理系统</a> <a
					href="http://www.mycodes.net" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!-- END FOOTER -->

	</section>
	<!-- END SECTION -->


	<!-- BEGIN JS -->

	<script src="js/jquery.js"></script>
	<!-- BASIC JS LIABRARY -->
	<script src="js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS  -->
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- ACCORDING JS -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<!-- SCROLLTO JS  -->
	<script src="js/jquery.nicescroll.js">
		
	</script>
	<!-- NICESCROLL JS  -->
	<script src="js/respond.min.js"></script>
	<!-- RESPOND JS  -->
	<script src="assets/fuelux/js/spinner.min.js"></script>
	<!-- FUELUX JS  -->
	<script src="assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>
	<!-- BOOTSTRAP FILEUPLOAD JS  -->
	<Script src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
	<!-- BOOTSTRAP wysihtml5 JS  -->
	<script src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
	<!-- BOOTSTRAP wysihtml5 JS  -->
	<script src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<!-- BOOTSTRAP DATEPICKER JS  -->
	<script
		src="assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<!-- BOOTSTRAP DATETIMEPICKER JS  -->
	<script src="assets/bootstrap-daterangepicker/moment.min.js"></script>
	<script src="assets/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- BOOTSTRAP DATERANGEPICKER JS  -->
	<script src="assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js">
		
	</script>
	<!-- BOOTSTRAP COLORPICKER JS  -->
	<script src="assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<!-- BOOTSTRAP TIMEPICKER JS  -->
	<script src="assets/jquery-multi-select/js/jquery.multi-select.js"></script>
	<!-- BOOTSTRAP MULTISELECT JS  -->
	<script src="assets/jquery-multi-select/js/jquery.quicksearch.js"></script>
	<!-- BOOTSTRAP MULTISELECT JS  -->
	<script src="js/common-scripts.js"></script>
	<!-- BASIC COMMON JS  -->
	<script src="js/advanced-form-components.js"></script>
	<!-- ADVANCE FORM COMPONENTS PAGE JS  -->
	<script src="assets/ckeditor/ckeditor.js"></script>
	<!-- CKEDITOR JS  -->
	<!-- END JS -->


</body>
</html>


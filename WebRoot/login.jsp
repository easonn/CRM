<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Custom Theme">
    <!-- END META -->
    
    <!-- BEGIN SHORTCUT ICON -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- END SHORTCUT ICON -->
    <title>
      Olive Admin - Flat & Responsive Bootstrap Admin Template
    </title>
    <!-- BEGIN STYLESHEET-->
		<link href="css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
		<link href="css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
		<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
		<link href="css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
		<link href="css/style-responsive.css" rel="stylesheet"><!-- THEME RESPONSIVE CSS -->
    <!--[if lt IE 9]>
<script src="js/html5shiv.js">
</script>
<script src="js/respond.min.js">
</script>
<![endif]-->
     <!-- END STYLESHEET-->
  </head>
  <body class="login-screen">
    <!-- BEGIN SECTION -->
    <div class="container">
      <form method="post" class="form-signin" action="http://127.0.0.1:8080/CRM/login">
        <h2 class="form-signin-heading">
          欢迎访问物料管理系统
        </h2>
		<!-- LOGIN WRAPPER  -->
        <div class="login-wrap">
          <input type="text" class="form-control" id="username" name="admin.username" placeholder="帐号" autofocus>
          <input type="password" class="form-control" name="admin.password" placeholder="密码">
            <span class="pull-right">
              <a data-toggle="modal" href="#myModal">
                忘记密码&nbsp&nbsp
              </a>
              <a class="" href="registration.html">
                注册
              </a>
            </span>
          </label>
          <button class="btn btn-lg btn-login btn-block" type="submit">
            登陆
          </button>
        </div>
		<!-- END LOGIN WRAPPER -->
		<!-- MODAL -->
        <div  id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                  &times;
                </button>
                <h4 class="modal-title">
                  忘记密码 ?
                </h4>
              </div>
              <div class="modal-body">
                <p>
                  输入邮箱，重置密码
                </p>
                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">
                  取消
                </button>
                <button class="btn btn-success" type="button">
                  提交
                </button>
              </div>
            </div>
          </div>
        </div>
		<!-- END MODAL -->
      </form>
    </div>
    <!-- END SECTION -->
    <!-- BEGIN JS -->
    <script src="js/jquery.js" ></script><!-- BASIC JS LIABRARY -->
		<script src="js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS  -->
    <!-- END JS -->
  </body>
</html>


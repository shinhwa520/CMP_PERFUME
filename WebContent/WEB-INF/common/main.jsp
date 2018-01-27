<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="cache-control" content="no-cache" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Source-Viewer</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome/4.4.0/css/font-awesome.min.css">
  -->
  <!-- Ionicons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/skins/skin-blue.min.css">

   <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/iCheck/all.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.1.4 -->
<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/dist/js/app.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/jquery.pagination.js"></script>

<script>
  function successMessage(message) {
  	var msg = $('#message');
  	msg.addClass('alert-info');
  	msg.append(message);
      
  	msg.fadeIn();
setTimeout(function(){
	msg.fadeOut();
}, 3000);
  }
  function errorMessage(message) {
  	var msg = $('#message');
      $(window).scrollTop(msg.offset().top);
      msg.addClass('alert-danger');
      msg.append(message);
      
      msg.fadeIn();
setTimeout(function(){
	msg.fadeOut();
}, 3000);
  }
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="${pageContext.request.contextPath}" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>VASC</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><img src="${pageContext.request.contextPath}/resources/dist/img/xEncoder_logo.png" class="user-image" alt="#" style="width:105px; height:37px;"></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          

        
         
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">${username}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  <small>${username}</small>
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <!-- 
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Register</a>
                </div>
                 -->
                <div class="pull-right">
                <a href="<c:url value="/logout" />" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
         
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${username}</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">

         
         
         
         
        <li>
        	<a href="${pageContext.request.contextPath}/cust/list"><i class="fa fa-user"></i> <span>CUST</span></a>
        </li>
        <li>
        	<a href="${pageContext.request.contextPath}/account/list"><i class="fa fa-user"></i> <span>USER</span></a>
        </li>
        <li>
        	<a href="${pageContext.request.contextPath}/account/list"><i class="fa fa-user"></i> <span>ROLE</span></a>
        </li>
        <li>
        	<a href="${pageContext.request.contextPath}/account/list"><i class="fa fa-user"></i> <span>STATUS</span></a>
        </li>
        <li>
        	<a href="${pageContext.request.contextPath}/account/list"><i class="fa fa-user"></i> <span>REGISTRATION_STEPS</span></a>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h4></h4>
    </section>
       <!-- Main content -->
    <section class="content">
    	<decorator:body />
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Ver.${versionCode}
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2015 <a href="#">VAS Creative Co.</a></strong> All rights reserved.
  </footer> 
</body>
</html>
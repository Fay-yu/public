<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>日历界面 Bootstrap响应式后台管理系统</title> 
  <meta name="keywords" content="Bootstrap后台管理系统" />
  <meta name="description" content="Bootstrap后台管理系统" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="">
  <!-- Stylesheets -->
  <link href="style/bootstrap.css" rel="stylesheet">
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="<%=path%>/pages/style/font-awesome.css"> 
  <!-- jQuery UI -->
  <link rel="stylesheet" href="<%=path%>/pages/style/jquery-ui.css"> 
  <!-- Calendar -->
  <link rel="stylesheet" href="<%=path%>/pages/style/fullcalendar.css">
  <!-- prettyPhoto -->
  <link rel="stylesheet" href="<%=path%>/pages/style/prettyPhoto.css">  
  <!-- Star rating -->
  <link rel="stylesheet" href="<%=path%>/pages/style/rateit.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="<%=path%>/pages/style/bootstrap-datetimepicker.min.css">
  <!-- CLEditor -->
  <link rel="stylesheet" href="<%=path%>/pages/style/jquery.cleditor.css"> 
  <!-- Uniform -->
  <link rel="stylesheet" href="<%=path%>/pages/style/uniform.default.css"> 
  <!-- Bootstrap toggle -->
  <link rel="stylesheet" href="<%=path%>/pages/style/bootstrap-switch.css">
  <!-- Main stylesheet -->
  <link href="<%=path%>/pages/style/style2.css" rel="stylesheet">
  <!-- Widgets stylesheet -->
  <link href="<%=path%>/pages/style/widgets.css" rel="stylesheet">   
  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

  <!-- Favicon -->
  <link rel="shortcut icon" href="img/favicon/favicon.png">
  </head>
  
  <body>
	
	
	<!-- Header starts -->
	
	<!-- Header ends -->
	
	<!-- Main content starts -->
	
	<div class="content">
	
	  	<!-- Sidebar -->
	
	    <!-- Sidebar ends -->
	
	  	<!-- Main bar -->
	  	<div class="mainbar">
	
	      <!-- Page heading -->
	      <div class="page-head">
	        <h2 class="pull-left"><i class="icon-file-alt"></i> Calendar</h2>
	
	        <!-- Breadcrumb -->
	        <div class="bread-crumb pull-right">
	          <a href="index.html"><i class="icon-home"></i> Home</a> 
	          <!-- Divider -->
	          <span class="divider">/</span> 
	          <a href="#" class="bread-current">Dashboard</a>
	        </div>
	
	        <div class="clearfix"></div>
	
	      </div>
	      <!-- Page heading ends -->
	
	
		    <!-- Matter -->
	
		    <div class="matter">
	        <div class="container">
	          <div class="row">
	            <div class="col-md-12">
	              <!-- Widget -->
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">Calendar</div>
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <div class="padd">
	                    <!-- Below line produces calendar. I am using FullCalendar plugin. -->
	                    <div id="calendar"></div>
	                  </div>
	                </div>
	              </div> 
	            </div>
	          </div>
	        </div>
			  </div>
	
			<!-- Matter ends -->
	
	    </div>
	
	   <!-- Mainbar ends -->	   
	   <div class="clearfix"></div>
	
	</div>
	<!-- Content ends -->
	
	<!-- Footer starts -->
	<footer>
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	            <!-- Copyright info -->
	            <p class="copy">Copyright &copy; 2012 | <a href="#">Your Site</a> </p>
	      </div>
	    </div>
	  </div>
	</footer> 	
	
	<!-- Footer ends -->
	
	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
	
	<!-- JS -->
	<script src="<%=path%>/pages/js/jquery.js"></script> <!-- jQuery -->
	<script src="<%=path%>/pages/js/bootstrap.js"></script> <!-- Bootstrap -->
	<script src="<%=path%>/pages/js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
	<script src="<%=path%>/pages/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
	<script src="<%=path%>/pages/js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
	<script src="<%=path%>/pages/js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
	
	<!-- jQuery Flot -->
	<script src="<%=path%>/pages/js/excanvas.min.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.resize.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.pie.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.stack.js"></script>
	
	<!-- jQuery Notification - Noty -->
	<script src="<%=path%>/pages/js/jquery.noty.js"></script> <!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/themes/default.js"></script> <!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/layouts/bottom.js"></script> <!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/layouts/topRight.js"></script> <!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/layouts/top.js"></script> <!-- jQuery Notify -->
	<!-- jQuery Notification ends -->
	
	<script src="<%=path%>/pages/js/sparklines.js"></script> <!-- Sparklines -->
	<script src="<%=path%>/pages/js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
	<script src="<%=path%>/pages/js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
	<script src="<%=path%>/pages/js/jquery.uniform.min.js"></script> <!-- jQuery Uniform -->
	<script src="<%=path%>/pages/js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
	<script src="<%=path%>/pages/js/filter.js"></script> <!-- Filter for support page -->
	<script src="<%=path%>/pages/js/custom.js"></script> <!-- Custom codes -->
	<script src="<%=path%>/pages/js/charts.js"></script> <!-- Charts & Graphs -->
  </body>
</html>

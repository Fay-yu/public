<%@page import="com.lava.lavafaq.bean.Person"%>
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
	  <title>查看用户</title> 
	  <meta name="keywords" content="Bootstrap后台管理系统" />
	  <meta name="description" content="Bootstrap后台管理系统" />
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="author" content="">
	   <link href="<%=path%>/pages/css/bootstrap.css" rel="stylesheet" type="text/css">
	  <!-- Stylesheets -->
	  <link href="<%=path%>/pages/style/bootstrap.css" rel="stylesheet">
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
	  <link rel="shortcut icon" href="<%=path%>/pages/img/favicon/favicon.png">

  </head>
  
  <body>
  		<%
		ArrayList<Person> list = (ArrayList) request.getSession().getAttribute("list");
	%>
	
	<div class="content">
	  	<!-- Main bar -->
	  	<div class="mainbar">
	
	      <!-- Page heading -->
	      <div class="page-head">
	        <h2 class="pull-left"><i class="icon-table"></i> 查看用户</h2>
	
	        <!-- Breadcrumb -->
	        <div class="bread-crumb pull-right">
	          <a href="index.html"><i class="icon-home"></i> Home</a> 
	          <!-- Divider -->
	          <span class="divider">/</span> 
	        </div>
	
	        <div class="clearfix"></div>
	
	      </div>
	      <!-- Page heading ends -->
	
		    <!-- Matter -->
	
		    <div class="matter">
	        <div class="container">
	
	          <!-- Table -->
	
	            <div class="row">
	
	              <div class="col-md-12">
	
	
	
	
	                <div class="widget">
	
	                <div class="widget-head">
	                  <div class="pull-left">Tables</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	
	                  <div class="widget-content">
	
	                    <table class="table table-striped table-bordered table-hover">
	                      <thead>
	                        <tr>
	                          <th>id</th>
	                          <th>用户名</th>
	                          <th>邮箱</th>
	                          <th>状态</th>
	                          <th>联系地址</th>
	                          <th>联系电话</th>
	                          <th>权限</th>
	                        </tr>
	                      </thead>
	                      <tbody id="all">
							<% 
								for(Person person:list){
									
									
							 %>
	                        <tr>
	                          <td><%=person.getId() %></td>
	                          <td><%=person.getUsername() %></td>
	                          <td><%=person.getMail() %></td>
	                          <%if(person.getState()==1){ %>
	                          <td>邮箱已激活</td>
	                          <%}else{ %>
	                          <td>邮箱未激活</td>
	                          <%} %>
	                          <td><%=person.getAddress() %></td>
	                          <td><%=person.getTelPhone() %></td>
	                         
	                          <%if(person.getPower()==1){ %>
	                          <td>管理员</td>
	                          <%}else{ %>
	                          <td>普通用户</td>
	                          <%} %>
	                        </tr>
	                        <%} %>
	                      </tbody>
	                    </table>
	
	                    <div class="widget-foot">
	
	                     
	                        <ul id="pagination-demo" class="pagination-sm"></ul>
	                     
	                      <div class="clearfix"></div> 
	
	                    </div>
	
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
    <script src="<%=path%>/pages/js/jquery.twbsPagination.js" type="text/javascript"></script>
    <script src="<%=path%>/pages/js/zzsc.js" type="text/javascript"></script>
  </body>
</html>

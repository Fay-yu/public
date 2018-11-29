<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>Bootstrap响应式后台管理系统</title>
<meta name="keywords" content="Bootstrap后台管理系统" />
<meta name="description" content="Bootstrap后台管理系统" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
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
<link rel="stylesheet"
	href="<%=path%>/pages/style/bootstrap-datetimepicker.min.css">
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




	<!-- Sidebar ends -->

	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="icon-list-alt"></i> 首页
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="icon-home"></i> Home</a>
				<!-- Divider -->
			</div>

			<div class="clearfix"></div>

		</div>
		<!-- Page heading ends -->

		<!-- Matter -->

		<div class="matter">
			<div class="container">

				<div class="row">

					<div class="col-md-8">

						<!-- Widget -->
						<div class="widget">
							<!-- Widget title -->
							<div class="widget-head">
								<div class="pull-left">帮助</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<!-- Widget content -->
								<div class="padd">
									<div class="support-faq">
										<hr />
										<div class="clearfix"></div>
										<!-- Lists -->
										<ol id="slist">
											<!-- List #1 -->
											<li>
												<!-- Title. Link title is used for filteration. --> <a
												href="#">如何使用本系统？</a> <!-- Para -->
												<p>您可以使用本系统进行查看会议室状况、查看会议室详细信息、预定会议室等功能</p>
											</li>
											<!-- List #2 and so on.... -->
											<li><a href="#">菜单？</a>
												<p>您可以在查看会议室中查看会议室详细内容、在预约管理中进行预约会议室、查看我的预约等信息.</p></li>
											<li><a href="#">申请预约流程？</a>
												<p>您可以在查看会议室 菜单中查看会议室的状态，如果显示已有预约，可点击查看此会议室所有预约，以便您
												方便的规划预约时间。在预约管理菜单中点击申请预约，点击申请预约，选择您要
												预约的会议室。点击表格后面的申请预约按钮。填写申请详细信息（会议主题，开始时间、结束时间 等）即可完成预约</p></li>
											<li><a href="#">审批？</a>
												<p>您的预约提交后，会由管理员进行审批。管理员同意后，您将收到一封申请成功的邮件。即表示您已预约成功！请在邮件中指定
												时间到达会议室。您的申请有可能被拒绝哦！您可以在我的预约中查看您所有的预约。在完成会议后，您必须去“我的预约”
												中点击完成此次预约，这样才能完成此次流程。您也可以删除申请记录。</p></li>
										</ol>
									</div>
								</div>
								<!-- Widget footer -->
								<div class="widget-foot">
									<p>以上内容最终解释权归本人所有.</p>
								</div>
							</div>

						</div>

					</div>
						            <div class="col-md-4">
	
	              <!-- Widget -->
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">联系我</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <div class="padd">
	                                               <!-- Contact box -->
	                             <div class="support-contact">
	                                <!-- Phone, email and address with font awesome icon -->
	                                <p>您在使用本系统的过程中若遇到bug或其他问题，请联系我.</p>
	                                <p><i class="icon-phone"></i> Phone<strong>:</strong> 184-1005-6350</p>
	                                <hr />
	                                <p><i class="icon-envelope-alt"></i> Email<strong>:</strong> fuyu_hahaha@163.com</p>
	                                <hr />
	                                <p><i class="icon-home"></i> Address<strong>:</strong> 128, NanZheng Street, FS, Beijing </p>
	                                <!-- Button -->
	                                <a href="#" class="btn btn-default">Contact Us</a> <a href="#" class="btn btn-default">Check out FAQ</a>
	                             </div>
	                  </div>
	                </div>
	
	              </div> 
	
	            </div>

					<!-- Recent comments widget -->
				</div>


				<div class="row">



					<!-- Server Status -->

				</div>

			</div>
		</div>

		<!-- Matter ends -->

	</div>

	<!-- Mainbar ends -->
	<div class="clearfix"></div>

	<!-- Footer starts -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Copyright info -->
					<p class="copy">
						Copyright &copy; 2012 | <a href="#">Your Site</a>
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Footer ends -->

	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="<%=path%>/pages/js/jquery.js"></script>
	<!-- jQuery -->
	<script src="<%=path%>/pages/js/bootstrap.js"></script>
	<!-- Bootstrap -->
	<script src="<%=path%>/pages/js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- jQuery UI -->
	<script src="<%=path%>/pages/js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="<%=path%>/pages/js/jquery.rateit.min.js"></script>
	<!-- RateIt - Star rating -->
	<script src="<%=path%>/pages/js/jquery.prettyPhoto.js"></script>
	<!-- prettyPhoto -->

	<!-- jQuery Flot -->
	<script src="<%=path%>/pages/js/excanvas.min.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.resize.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.pie.js"></script>
	<script src="<%=path%>/pages/js/jquery.flot.stack.js"></script>

	<!-- jQuery Notification - Noty -->
	<script src="<%=path%>/pages/js/jquery.noty.js"></script>
	<!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/themes/default.js"></script>
	<!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/layouts/bottom.js"></script>
	<!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/layouts/topRight.js"></script>
	<!-- jQuery Notify -->
	<script src="<%=path%>/pages/js/layouts/top.js"></script>
	<!-- jQuery Notify -->
	<!-- jQuery Notification ends -->

	<script src="<%=path%>/pages/js/sparklines.js"></script>
	<!-- Sparklines -->
	<script src="<%=path%>/pages/js/jquery.cleditor.min.js"></script>
	<!-- CLEditor -->
	<script src="<%=path%>/pages/js/bootstrap-datetimepicker.min.js"></script>
	<!-- Date picker -->
	<script src="<%=path%>/pages/js/jquery.uniform.min.js"></script>
	<!-- jQuery Uniform -->
	<script src="<%=path%>/pages/js/bootstrap-switch.min.js"></script>
	<!-- Bootstrap Toggle -->
	<script src="<%=path%>/pages/js/filter.js"></script>
	<!-- Filter for support page -->
	<script src="<%=path%>/pages/js/custom.js"></script>
	<!-- Custom codes -->
	<script src="<%=path%>/pages/js/charts.js"></script>
	<!-- Charts & Graphs -->

</body>
</html>

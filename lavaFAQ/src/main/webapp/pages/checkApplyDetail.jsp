<%@page import="com.lava.lavafaq.bean.Apply"%>
<%@page import="com.lava.lavafaq.bean.Conference"%>
<%@page import="com.lava.lavafaq.bean.Person"%>
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
<title>预约会议室</title>
<meta name="keywords" content="预约会议室" />
<meta name="description" content="预约会议室" />
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
	<%
		Apply apply = (Apply) request.getSession().getAttribute("apply");
	%>
	<input type="hidden" id="id" value="<%=apply.getId()%>">
	<input type="hidden" id="userid" value="<%=apply.getUserid()%>">
	<input type="hidden" id="crmid" value="<%=apply.getCrmid()%>">
	<div class="content">


		<!-- Main bar -->
		<div class="mainbar">

			<!-- Page heading -->
			<div class="page-head">
				<!-- Page heading -->
				<!-- page meta -->
				<span class="page-meta">查看申请</span>
				</h2>


				<!-- Breadcrumb -->
				<div class="bread-crumb pull-right">
					<a href="<%=basePath%>pages/main/admin"><i class="icon-home"></i>
						Home</a>
					<!-- Divider -->
					<span class="divider">/</span>
				</div>

				<div class="clearfix"></div>

			</div>
			<!-- Page heading ends -->



			<!-- Matter -->

			<div class="matter">
				<div class="container">

					<div class="row">

						<div class="col-md-12">


							<div class="widget wgreen">

								<div class="widget-head">
									<div class="pull-left">查看预约</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
										<a href="#" class="wclose"><i class="icon-remove"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="widget-content">
									<div class="padd">

										<!-- Form starts.  -->
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label class="col-lg-4 control-label">申请人</label>
												<div class="col-lg-5">
													<input type="text" id="crmname" class="form-control"
														value="<%=apply.getFusername()%>" disabled="disabled">
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-4 control-label">会议室名称</label>
												<div class="col-lg-5">
													<input type="text" id="crmname" class="form-control"
														value="<%=apply.getFcrmname()%>" disabled="disabled">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-2 control-label">会议主题</label>
												<div class="col-lg-8">
													<input id="theme" type="text" class="form-control"
														value="<%=apply.getTheme()%>" disabled="disabled">
												</div>

											</div>


											<hr />

											<div class="form-group">
												<label class="col-lg-2 control-label">开始时间</label>
												<div class="col-lg-8">
													<div class="controls input-append date form_datetime"
														data-link-field="dtp_input1"
														style="float: left; margin:0;">
														<input id="booktimebegin" class="form-control" type="text"
															value="<%=apply.getBooktimebegin()%>" disabled="disabled"
															readonly> <span class="add-on"><i
															class="icon-th"></i></span>
													</div>
												</div>

											</div>
											<div class="form-group">
												<label class="col-lg-2 control-label">结束时间</label>
												<div class="col-lg-8">
													<div class="controls input-append date form_datetime"
														data-link-field="dtp_input1"
														style="float: left; margin:0;">
														<input id="booktimeend" class="form-control" type="text"
															value="<%=apply.getBooktimeend()%>" disabled="disabled"
															readonly> <span class="add-on"><i
															class="icon-th"></i></span>
													</div>
												</div>

											</div>

											<div class="form-group">
												<label class="col-lg-4 control-label">申请理由</label>
												<div class="col-lg-8">
													<textarea id="applyreason" class="cleditor"
												disabled="disabled"	readonly="readonly"	 name="input"><%=apply.getApplyreason()%></textarea>
												</div>
											</div>

											<div class="form-group">
												<div class="col-lg-offset-1 col-lg-9">
													<button id="save" type="button" class="btn btn-success"
														data-toggle="modal" data-target="#myModal">同意</button>
														<button id="save" type="button" class="btn btn-danger"
														data-toggle="modal" data-target="#yourModal">拒绝</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="widget-foot">
									<!-- Footer goes here -->
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
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">审批申请单</h4>
					</div>
					<div class="modal-body">确定同意吗？</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="updateperson">提交</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		
		<div class="modal fade" id="yourModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">审批申请单</h4>
					</div>
					<div class="modal-body">确定拒绝吗？</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="refuse">提交</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>

	</div>
	<!-- Content ends -->

	<!-- Footer starts -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Copyright info -->
					<p class="copy">
						Copyright &copy; 2018 | <a href="#">yufu</a>
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
	<script src="<%=path%>/pages/js/bootstrap-datepicker.zh-CN.js"></script>
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
	<script src="<%=path%>/pages/js/currency.js"></script>

	<!-- Charts & Graphs -->
	<script type="text/javascript" language="javascript">
		$('.form_datetime').datetimepicker({
			//language:  'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			format : 'yyyy-mm-dd hh:ii',
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1

		});
		$(document).ready(function() {
			$('#datetimepicker').datetimepicker();
			$('#updateperson').unbind("click").bind("click", function() {
				sendData = {
					id : $('#id').val(),
					crmid : $('#crmid').val(),
					userid : $('#userid').val()
				}
				$.ajax({
					type : "POST",
					url : "/lavaFAQ/pages/main/agreeApply",
					data : sendData,
					dataType : "json",
					success : function(result) {
						if (result.success) {
							/*$('#user').focus().css({
								border: "1px solid green",
								boxShadow: "0 0 2px green"
							});*/
							alert(result.text);

							$('#myModal').modal('hide');
							window.location.href=document.referrer;
							return false;
						} else {
							/*$('#user').css({
								border: "1px solid #D7D7D7",
								boxShadow: "none"
							});*/
							alert(result.text);
						}

					},
					error : function(jqXHR) {
						alert("发生错误：" + jqXHR.status);
					}
				});
			});
			$('#refuse').unbind("click").bind("click", function() {
				sendData = {
					id : $('#id').val(),
					crmid : $('#crmid').val(),
					userid : $('#userid').val()
				}
				$.ajax({
					type : "POST",
					url : "/lavaFAQ/pages/main/refuse",
					data : sendData,
					dataType : "json",
					success : function(result) {
						if (result.success) {
							/*$('#user').focus().css({
								border: "1px solid green",
								boxShadow: "0 0 2px green"
							});*/
							alert(result.text);
							$('#yourModal').modal('hide');
							window.location.href=document.referrer;
							return false;
						} else {
							/*$('#user').css({
								border: "1px solid #D7D7D7",
								boxShadow: "none"
							});*/
							alert(result.text);
						}

					},
					error : function(jqXHR) {
						alert("发生错误：" + jqXHR.status);
					}
				});
			});
			

		});
	</script>
</body>

</html>

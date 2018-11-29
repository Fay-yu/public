<%@page import="com.lava.lavafaq.bean.Conference"%>
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
<title>修改会议室</title>
<meta name="keywords" content="个人资料" />
<meta name="description" content="个人资料" />
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
		Conference con = (Conference) request.getSession().getAttribute("list");
	%>
	<div class="content">
	<input id="id" type="hidden" value="<%=con.getId()%>"/>

		<!-- Main bar -->
		<div class="mainbar">

			<!-- Page heading -->
			<div class="page-head">
				<!-- Page heading -->
				<!-- page meta -->
				<span class="page-meta">修改会议室</span>
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
									<div class="pull-left">修改会议室</div>
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
												<label class="col-lg-4 control-label">会议室名称</label>
												<div class="col-lg-5">
													<input type="text" id="crmname" class="form-control"
														placeholder="请输入会议室名称" value="<%=con.getCrmname()%>">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-1 control-label"> 会议室地址</label>
												<div class="col-lg-8">
													<input id="crmaddress" type="text" class="form-control"
														placeholder="请输入会议室地址" value="<%=con.getCrmaddress()%>">
												</div>

											</div>
											<div class="form-group">
												<label class="col-lg-1 control-label"> 容纳人数</label>
												<div class="col-lg-8">
													<input id="holdnum" type="text" class="form-control"
														placeholder="请输入容纳人数"value="<%=con.getHoldnum()%>"> 
												</div>

											</div>
											<%if(con.getMedia()==1){ %>
											<div class="form-group">
												<label class="col-lg-3 control-label">是否多媒体</label>
												<div class="col-lg-8">
													<div class="radio">
														<label> <input type="radio" name="optionsRadios"
															id="optionsRadios1" value="1" checked> 是
														</label>
													</div>
													<div class="radio">
														<label> <input type="radio" name="optionsRadios"
															id="optionsRadios2" value="0"> 否
														</label>
													</div>
												</div>
											</div>
											<%}else{ %>
											<div class="form-group">
												<label class="col-lg-3 control-label">是否多媒体</label>
												<div class="col-lg-8">
													<div class="radio">
														<label> <input type="radio" name="optionsRadios"
															id="optionsRadios1" value="1"> 是
														</label>
													</div>
													<div class="radio">
														<label> <input type="radio" name="optionsRadios"
															id="optionsRadios2" value="0"  checked> 否
														</label>
													</div>
												</div>
											</div>
											<%} %>
											<hr />
											<div class="form-group">
												<div class="col-lg-offset-1 col-lg-9">
													<button id="save" type="button" class="btn btn-success"
														data-toggle="modal" data-target="#myModal">保存设置</button>
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
						<h4 class="modal-title" id="myModalLabel">添加会议室</h4>
					</div>
					<div class="modal-body">确定添加会议室吗？</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="updateperson">提交</button>
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
		$(document).ready(function() {
			$('#save').click(function() {
				if ($('#crmname').val() == "") {
					$('#crmname').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("会议室名称不能为空");
					return false;
				}
				if ($('#crmaddress').val() == "") {
					$('#crmaddress').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("地址不能为空");
					return false;
				}
				if ($('#holdnum').val() == "") {
					$('#holdnum').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("人数不能为空");
					return false;
				}
			});
			$('#updateperson').click(function() {
				var val = $('input[name="optionsRadios"]:checked').val();
				sendData = {
					crmname : $('#crmname').val(),
					crmaddress : $('#crmaddress').val(),
					media : val,
					holdnum : $('#holdnum').val(),
					id : $('#id').val()
				}
				$.ajax({
					type : "POST",
					url : "/lavaFAQ/pages/con/updateroom",
					data : sendData,
					dataType : "json",
					success : function(result) {
						if (result.success) {
							/*$('#user').focus().css({
								border: "1px solid green",
								boxShadow: "0 0 2px green"
							});*/
							alert(result.text);
							window.location.reload();

							$('#myModal').modal('hide');
							return false;
						} else {
							/*$('#user').css({
								border: "1px solid #D7D7D7",
								boxShadow: "none"
							});*/
							alert(result.text);
						}

					}
				});
			});

		});
	</script>
</body>

</html>

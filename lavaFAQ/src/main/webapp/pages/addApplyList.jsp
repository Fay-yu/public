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
		Conference user = (Conference) request.getSession().getAttribute(
				"con");
		Person person = (Person) request.getSession().getAttribute(
				"user");
	%>
	<input type="hidden" id="crmid" value="<%=user.getId()%>">
	<input type="hidden" id="userid" value="<%=person.getId()%>">
	<input type="hidden" id=fcrmname value="<%=user.getCrmname()%>">
	<input type="hidden" id="fusername" value="<%=person.getUsername()%>">
	<div class="content">


		<!-- Main bar -->
		<div class="mainbar">

			<!-- Page heading -->
			<div class="page-head">
				<!-- Page heading -->
				<!-- page meta -->
				<span class="page-meta">预约会议室</span>
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
									<div class="pull-left">预约会议室</div>
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
														value="<%=user.getCrmname()%>" disabled="disabled">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-2 control-label">会议主题</label>
												<div class="col-lg-8">
													<input id="theme" type="text" class="form-control"
														placeholder="请输入会议主题">
												</div>

											</div>


											<hr />

											<div class="form-group">
												<label class="col-lg-2 control-label">开始时间</label>
												<div class="col-lg-8">
													<div class="controls input-append date form_datetime"
														data-link-field="dtp_input1" style="float: left; margin:0;">
														<input id="booktimebegin" class="form-control" type="text"  readonly>
														 <span
															class="add-on" ><i class="icon-th"></i></span>
													</div>
												</div>

											</div>
												<div class="form-group">
												<label class="col-lg-2 control-label">结束时间</label>
												<div class="col-lg-8">
													<div class="controls input-append date form_datetime"
														data-link-field="dtp_input1" style="float: left; margin:0;">
														<input id="booktimeend" class="form-control" type="text"  readonly>
														 <span
															class="add-on" ><i class="icon-th"></i></span>
													</div>
												</div>

											</div>

											<div class="form-group">
												<label class="col-lg-4 control-label">申请理由</label>
												<div class="col-lg-8">
													<textarea id="applyreason" class="cleditor" name="input"></textarea>
												</div>
											</div>

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
						<h4 class="modal-title" id="myModalLabel">添加预约</h4>
					</div>
					<div class="modal-body">确定添加预约吗？</div>
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
	  var newDate = new Date();
	    var t = newDate.toJSON(); 
		$('#booktimebegin').datetimepicker({
			//language:  'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			format: 'yyyy-mm-dd hh:ii',  
			 autoclose : true,   //选择日期后自动关闭日期选择框
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			startDate:new Date(t),
			showMeridian : 1
		}).on('click',function(e){
		    $("#booktimebegin").datetimepicker("setEndDate", $("#booktimeend").val());
		});
		$('#booktimeend').datetimepicker({
			//language:  'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			format: 'yyyy-mm-dd hh:ii',  
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			startDate:new Date(t),
			forceParse : 0,
			showMeridian : 1
		}).on('click',function(e){
		    $("#booktimeend").datetimepicker("setStartDate", $("#booktimebegin").val());
		});
		
		$(document).ready(function() {
			$('#datetimepicker').datetimepicker();
			$('#save').unbind("click").bind("click",function(){
				if ($('#crmname').val() == "") {
					$('#crmname').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("会议室名称不能为空");
					return false;
				}
				if ($('#theme').val() == "") {
					$('#theme').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("主题不能为空");
					return false;
				}
				if ($('#booktimebegin').val() == "") {
					$('#booktimebegin').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("开始时间不能为空");
					return false;
				}
				if ($('#booktimeend').val() == "") {
					$('#booktimeend').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("结束时间不能为空");
					return false;
				}
				if ($('#applyreason').val() == "") {
					$('#applyreason').focus().css({
						border : "1px solid red",
						boxShadow : "0 0 2px red"
					});
					alert("理由不能为空");
					return false;
				}
				if ($('#booktimebegin').val() == $('#booktimeend').val()) {
					alert("时间不能相同");
					return false;
				}
			});
			$('#updateperson').unbind("click").bind("click",function(){
				sendData = {
					crmid : $('#crmid').val(),
					userid : $('#userid').val(),
					theme : $('#theme').val(),
					applyreason : $('#applyreason').val(),
					booktimebegin : $('#booktimebegin').val(),
					booktimeend : $('#booktimeend').val(),
					booktimeend : $('#booktimeend').val(),
					fusername : $('#fusername').val(),
					fcrmname : $('#fcrmname').val()
					
				}
				$.ajax({
					type : "POST",
					url : "/lavaFAQ/pages/user/addUserApply",
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
							return false;
						} else {
							/*$('#user').css({
								border: "1px solid #D7D7D7",
								boxShadow: "none"
							});*/
							alert(result.text);
						}

					},
				 error: function (jqXHR) {
                     alert("发生错误：" + jqXHR.status);
                 }
				});
			});

		});
	</script>
</body>

</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  
    
    <title>用户激活界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
		onload=function(){
			setInterval(go, 1000);
		};
		var x=5; //利用了全局变量来执行
		function go(){
		x--;
			if(x>0){
			document.getElementById("sp").innerHTML=x;  //每次设置的x的值都不一样了。
			}else{
			location.href="<%=basePath%>/pages/login/loginHtml";
			}
		}
	</script>

  </head>
  
  <body>
    <h2>激活成功，</h2>  <h1 id="sp">5</h1>  <h2>秒钟后自动跳转</h2>
  </body>
</html>

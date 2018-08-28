<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
</head>
<body>
		<center>
			<h1>欢迎使用平安保险后台管理平台</h1>
			<%
			if(session.getAttribute("adminname") != null){
			%>
			<span>欢迎您：<%= session.getAttribute("adminname") %></span>
			<%	
			}else{
			%>
			<fieldset style="width: 300px; height: 200px;">
			<legend>管理员登录</legend>
			<form action="${pageContext.request.contextPath}/adminManage?method=doLogin" method="post">
				用户名<input type="text" name="aName"><br>
				密码<input type="password" name="aPwd"><br>
				选择免登录的时间
				<select name="noLogin">
					<option value="3min">3分钟</option>
					<option value="3hour" selected="selected">3小时</option>
					<option value="3day">3天</option>
					<option value="7day">7天</option>
				</select><br>
				<input type="submit" class="btn btn-primary" value="登录">
			</form>
			</fieldset>
			<%
			}
			%>
		</center>
<script>

</script>
</body>
</html>
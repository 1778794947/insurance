<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>欢迎登录</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
			
		</script>
		<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
		<script src="js/jquery.easydropdown.js"></script>
	</head>

	<body>
		<%@include file="header.jsp"%>
<%-- 		<% 
		String msg = (String)session.getAttribute("msg");
		if("验证码错误".equals(msg)){
			session.invalidate();
			out.print("<script>alert('验证码忽略大小写,验证码错误!');</script>");
		}
		%> --%>
			<div class="login_bg"> </div>
			<div class="login_box">
				<div class="container">
					<div class="col-md-6 login_left">
						<h3>新用户？</h3>
						<p>创建一个账号，您能更好的选购保险。</p>
						<div class="btn2">
							<form>
								<input type="button" onclick="location.href='register.jsp';" value="创建账户">
							</form>
						</div>
					</div>
					<div class="col-md-6 login_left">
						<h3>已注册用户</h3>
						<p>如果你有账号，请登录</p>
						<div class="registration_form">
							<button class="btn " onclick="show('username')">用户名登陆</button>
							<!-- <button class="btn " onclick="show('emailname')">邮箱登陆</button> -->
							<!-- Form -->
							<form id="registration_form" action="${pageContext.request.contextPath}/userManage?method=checkLogin" method="post">
								<div style="height: 10px;"></div>
								<div id="user_name">
									<input name="uName" placeholder="账号名称：" type="text" tabindex="3" >
								</div>
								
								<!-- <div style="display: none;" id="email_name">
									<input placeholder="E-mail：" type="email" tabindex="3">
								</div> -->
								<input name="uPwd" placeholder="密码：" type="password" tabindex="4">
								
								<input name="code" placeholder="请输入验证码：" type="text" tabindex="4">
								<img src="${ pageContext.request.contextPath }/image" id="scode" onclick="changeCode()"/><a href="javascript:changeCode()">看不清换一张</a><br><br>
								选择免登录的时间
								<select name="noLogin">
									<option value="3min">3分钟</option>
									<option value="3hour" selected="selected">3小时</option>
									<option value="3day">3天</option>
									<option value="7day">7天</option>
								</select><br>
								<input type="submit" value="登录" id="register-submit">
							</form>
						</div>
					</div>
				</div>
			</div>
		<script>
		function changeCode(){
			var img = document.getElementById("scode");
			img.src = "${ pageContext.request.contextPath }/image?time="+new Date().getTime();
		}
		</script>
	</body>
</html>
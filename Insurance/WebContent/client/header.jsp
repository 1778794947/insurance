<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">
			<div class="header_top">
				<div class="container">
					<div class="logo">
						<a href="index.jsp"><img alt="平安保险" src="images/logo.png.png" height="48px" href></a>
					</div>
					<nav class="navbar navbar-default menu" role="navigation">
					<!-- 	<h3 class="nav_right"><a href="index.jsp"><h1><a href="index.jsp">平安保险</a></h1></a></h3> -->
						<div class="container-fluid">
							<!-- Brand and toggle get grouped for better mobile display -->
							
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu1">
									<!--<li class="active"><a href="#home" class="scroll"> <span> </span><i class="menu-border"></i></a></li>-->
									<li>
										<a href="my_insrance_list.jsp">我的保单</a>
									</li>
									<li>
										<a href="breply_list.jsp">理赔进度</a>
									</li>
									<li>
										<a href="products.jsp">全部险种</a>
									</li>
									<li>
										<a href="contact.jsp">反馈建议</a>
									</li>
								</ul>
								<%
								String uname =  (String)session.getAttribute("uname");
								if(uname == null){
								%>
								<ul id="not_login" class="login">
									<li>
										<a href="login.jsp">登录</a>
									</li> /
									<li>
										<a href="register.jsp">注册</a>
									</li>
									<div class="clearfix"></div>
								</ul>
								<%
								}else{
								%>
									<ul id="aready_login" class="login">
									<li>
										<a href="my_insrance_list.jsp">欢迎您，<%=uname%></a>
									</li> /
									<li>
										<a href="userExitLogin.jsp">退出</a>
									</li>
									<div class="clearfix"></div>
								</ul>
								<%
								}
								%>
								
								<form class="navbar-form navbar-left search1" role="search">
									<div class="search2">
										
											<input type="text" value="搜索" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜索';}">
											<input type="submit" value="">
										
									</div>
								</form>
							</div>
						
						</div>
						
					</nav>
					<div class="clearfix"></div>
				</div>
			</div>
			</div>

</body>
</html>
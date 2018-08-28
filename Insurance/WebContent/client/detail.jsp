<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>single</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav:"true"
	  });
	});
</script>
	</head>
	<body>
 	<sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="mjh"
password="123456"/>
<sql:query var="policy">
select * from policy where pName=?;
<sql:param value="${param.policyname}"/>
</sql:query>
<%-- <sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3308/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="root"
password="123"/>
<sql:query var="policy">
select * from policy where pName=?;
<sql:param value="${param.policyname}"/>
</sql:query> --%>
	<div class="header">
		<%@include file="header.jsp"%>
	 </div>
	 <div class="login_bg"> </div>
	
			<!--//single-page-->
	<div class="single">
				<div class="container">
		<c:forEach items="${policy.rowsByIndex}" var="row">
		<div class="single-grids">
		<div class="col-md-4 single-grid">
		<ul class="slides">
		<li><img src="/Insurance/admin/images/${row[7]}"></li>
					</ul></div></div>
				<div class="col-md-4 single-grid simpleCart_shelfItem">		
					<h3><c:out value="${row[1]}"/> </h3>
					<p><c:out value="${row[5]}"/> </p>
				<ul class="size">
						<h3>受保时间</h3>
							<li><a href="#">3个月</a></li>
							<li><a href="#">6个月</a></li>
							<li><a href="#">1年</a></li>
							<li><a href="#">2年</a></li>
					</ul>

<c:set var="policyname" value="${row[1]}" scope="session" />
					<div class="galry">
						<div class="prices">
							<h5 class="item_price">￥<c:out value="${row[2]}"></c:out> 起</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="btn_form">
						<a href="all_insrance.jsp">返回</a> | <a href="confirm_message.jsp?pname=<c:out value="${row[1]}"/>">下一步>></a>
						
					</div>
					<div class="tag">
						<p>保险类型 : <a href="#"><c:out value="${row[6]}"/> </a></p>
					</div>
					
				</div>
				<div class="clearfix"> </div>
				</c:forEach>
		</div>
	</div>

	

	</body>
</html>

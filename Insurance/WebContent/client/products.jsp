<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Products</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->		
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="mjh"
password="123456"/>
<sql:query var="type">
select * from type;
</sql:query>
<%-- <sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3308/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="root"
password="123"/>
<sql:query var="type">
select * from type;
</sql:query> --%>
	<!--header-->
	<!--products-->
	<div class="header">
		<%@include file="header.jsp"%>
		<div class="login_bg"> </div>
	</div>
	<div class="products">	 
		<div class="container">
			<%-- <h2>全部保险</h2>			
			<div class="col-md-9 product-model-sec">
				<c:forEach items="${policy.rowsByIndex}" var="row">
				<div class="product-grid">
					<a href="detail.jsp?policyname=${row[1]}">				
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="policyimages/${row[7]}" class="img-responsive" alt="" width="200px;" height="200px;">
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">							
									<button>View</button>
								</h4>
							</div>
						</div>
					</a>				
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4><c:out value="${row[1]}"/></h4>								
							<span class="item_price">￥<c:out value="${row[2]}"/>起</span>
<!-- 							<div class="ofr">
							
								<p class="pric1">简短的介绍</p>

							</div> -->
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				</c:forEach>

			</div>	 --%>
			<iframe src="defaultpolicy.jsp" id="iframe" name="i"frameborder="0"  scrolling="no" onload="changeFrameHeight()" width="800px;" height="1000px;"></iframe>
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>保险类型</h4>
						<div class="tab1">
							<ul class="place">								
								<li><a href=""><c:out value="全部类型"/></a></li>
							</ul>
							<div class="clearfix"> </div>
					    </div>	
						<c:forEach items="${type.rowsByIndex}" var="row">        		
						<div class="tab1">
							<ul class="place">								
								<li><a href="typepolicy.jsp?typename=${row[1]}" target="i"><c:out value="${row[1]}"/></a></li>
							</ul>
							<div class="clearfix"> </div>
					    </div>	
					    </c:forEach>					  
<!-- 						<div class="tab2">
							<ul class="place">								
								<li><a href="#"><p>儿童保险</p></a></li>
							</ul>
							<div class="clearfix"> </div>
					    </div>
						<div class="tab3">
							<ul class="place">								
								<li><a href="#"><p>金融保险</p></a></li>
							</ul>
							<div class="clearfix"> </div>

					    </div>
						<div class="tab4">
							<ul class="place">								
								<li><a href="#"><p>养老保险</p></a></li>
							</ul>
							<div class="clearfix"> </div>
					    </div> -->
			
					</div>
				</section>
			
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates  - Collect from </p>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
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
<sql:query var="policy">
select * from policy;
</sql:query>
<%-- <sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3308/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="root"
password="123"/>
<sql:query var="policy">
select * from policy;
</sql:query> --%>
			<h2>全部保险</h2>			
			<div class="col-md-9 product-model-sec">
				<c:forEach items="${policy.rowsByIndex}" var="row">
				<div class="product-grid" style="">
					<a href="detail.jsp?policyname=${row[1]}" target="_parent">				
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="/Insurance/admin/images/${row[7]}" class="img-responsive" alt="" width="200px;" height="200px;">
							<%-- <img src="policyimages/${row[7]}" class="img-responsive" alt="" width="200px;" height="200px; "> --%>
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">							
									<button>查看详情</button>
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

			</div>	
</body>
</html>
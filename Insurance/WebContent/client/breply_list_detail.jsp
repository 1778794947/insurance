<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>索赔详情 </title>
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
		<!--webfont-->
		<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
		<script src="js/jquery.easydropdown.js"></script>
	</head>

	<body>
		<div class="header">
			<%@include file="header.jsp"%>
			
			<div class="login_bg"> </div>
			<div class="login_box">
				<div class="container">
					<div class="register">
						<table id="TableData" class="table-hover table table-bordered">

						</table>
						<div class="clearfix"> </div>
						<div class="register-but">
							<button class="btn-link" onclick="window.location.href='breply_list.jsp'" >返回列表</button>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="container">
					<div class="col-md-6">
						<select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
							<option value="0">Dubai</option>
							<option value="1">tempor</option>
							<option value="2">congue</option>
							<option value="3">mazim </option>
							<option value="4">mutationem</option>
							<option value="5">hendrerit </option>
							<option value="5"></option>
							<option value="5"></option>
						</select>
						<div class="copy">
							<p>&copy; 2014 Template by by W3layouts. More Templates - Collect from

							</p>
						</div>
					</div>
					<div class="col-md-6 footer_right">
						<p>Quick Contact</p>
						<span class="email"><a href="malito:mail@demolink.org">mail(at)cancer.com</a></span>
						<ul class="footer_social">
							<li>
								<a href=""> <i class="fb1"> </i> </a>
							</li>
							<li>
								<a href=""><i class="tw1"> </i> </a>
							</li>
							<li>
								<a href=""><i class="g1"> </i> </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<script>
			function reqs(){
				$.get("${pageContext.request.contextPath}/policyManage?method=getPnameBReply",{"time":new Date()},function(data){
					var contact = JSON.parse(data); 
  					$(".mytr").remove();
					var $tr = $(
							"<tr class='mytr'><td>项目：</td><td>信息</td></tr>"+
							"<tr class='mytr'><td>保险名称：</td><td>"+contact[<%= request.getParameter("count")%>].pName+"</td></tr>"+
							"<tr class='mytr'><td>后台受理人：</td><td>"+contact[<%= request.getParameter("count")%>].aName+"</td></tr>"+
							"<tr class='mytr'><td>回执内容：</td><td>"+contact[<%= request.getParameter("count")%>].bDesc+"</td></tr>"+
							"<tr class='mytr'><td>赔偿金额：</td><td>"+contact[<%= request.getParameter("count")%>].cPayMoney+"</td></tr>"
					        );
		 			$("#TableData").append($tr);
				});
			}
			reqs();
			</script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>Drug_Expo Bootstarp Website Template | Contact </title>
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
					<div class="contact">
						<div class="col-md-4">
							<div class="contact-left">
								<h2>公司地址</h2>
								<div class="company_address">
									<p>广东省深圳市龙岗区</p>
									<p>宝南路83号</p>
									<p>放行科技园D1区</p>
									<p>座机：400-800-960</p>
									<p>Fax: (560) 352 25 58 8</p>
									<p>Email: <span><a href="1778794947@qqcom">1778794947@qq.com</a></span></p>
									
								</div>
								<div class="map">
									<iframe width="100%" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px"></a></small>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="contact-right">
								<h2>联系我们</h2>
								<div class="contact-form">
									<form method="post" action="contact-post.jsp">
										<input type="text" class="textbox" value="姓名:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '名字';}">
										<input type="text" class="textbox" value="邮箱:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}">
										<textarea value="反馈内容:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '反馈内容';}">反馈内容。。。</textarea>
										<input type="submit" value="提交">
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
	</body>

</html>
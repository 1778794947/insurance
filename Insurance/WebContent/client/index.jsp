<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>中国平安保险有限公司在线平台</title>
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
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
	</head>

	<body>
		<div class="header">
			<%@include file="header.jsp"%>
			<div class="header_bottom">
				<div class="index-banner" id="home">
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;">
								<div class="banner-wrap">
									<div class="slider-left">
										<div class="slider_wrap">
											<h1>“乐行人生”交通工具意外伤害保险</h1>
											<p>该产品为一年前综合性意外保障，除一般意外伤害补偿外，还提供医疗门诊、住院津贴、伤残补助、交通事故加倍给付等额外保障；最高赔付额度达100万，足以为自己和家人的生活和出行提供有力保障。</p>
										</div>
										<ul class="banner_login">
											<li>
												<a href="detail.jsp">了解更多>></a>
											</li>
										</ul>
									</div>
									<ul class="social">
										<li>
											<a href=""> <i class="google"> </i> </a>
										</li>
										<li>
											<a href=""><i class="tw"> </i> </a>
										</li>
										<li>
											<a href=""><i class="fb"> </i> </a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
							</article>
							<article style="position: relative; width: 100%; opacity: 1;">
								<div class="banner-wrap">
									<div class="slider-left">
										<div class="slider_wrap">
											<h1>老来福（2018）保险产品计划</h1>
											<p>无论我们是否工作，每个月都可以领取一笔可观的收入；<br/>无论我们是否健康，都可以不再为明天的生活费担忧<br/>无论儿女是否孝顺，都可以有尊严享受幸福老年生活<br/>每个月都可以“任性”花掉手中的钱，因为下个月还会有、、、</p>
										</div>
										<ul class="banner_login">
											<li>
												<a href="detail.jsp">了解更多>></a>
											</li>
										</ul>
									</div>
									<ul class="social">
										<li>
											<a href=""> <i class="google"> </i> </a>
										</li>
										<li>
											<a href=""><i class="tw"> </i> </a>
										</li>
										<li>
											<a href=""><i class="fb"> </i> </a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
								<div class="banner-wrap">
									<div class="slider-left">
										<div class="slider_wrap">
											<h1>少儿超能宝两全保险（3.0版）</h1>
											<p>少儿超能宝3.0保险产品计划涵盖了100种重大疾病和50种特定疾病(轻症)，其中包含了儿童常见的白血病、严重川崎病以及重症手足口病等，保障范围更广，为您的宝宝提供更加全面的健康保障。</p>
										</div>
										<ul class="banner_login">
											<li>
												<a href="detail.jsp">了解更多>></a>
											</li>
										</ul>
									</div>
									<ul class="social">
										<li>
											<a href=""> <i class="google"> </i> </a>
										</li>
										<li>
											<a href=""><i class="tw"> </i> </a>
										</li>
										<li>
											<a href=""><i class="fb"> </i> </a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
							</article>
						</div>
						<a class="wmuSliderPrev">Previous</a>
						<a class="wmuSliderNext">Next</a>
					</div>
					<script src="js/jquery.wmuSlider.js"></script>
					<script>
						$('.example1').wmuSlider();
					</script>
				</div>
			</div>
			<div class="container">
				<div class="benefit_icons text-center" id="benefit">
					<div class="col-md-3 grid_1">
						<i class="icon1"> </i>
						<h3>联系我们</h3>
						<p>1778794947@qq.com</p>
					</div>
					<div class="col-md-3 grid_1">
						<i class="icon2"> </i>
						<h3>意见交流</h3>
						<p>5269956521@163.com</p>
					</div>
					<div class="col-md-3 grid_1">
						<i class="icon3"> </i>
						<h3>咨询了解</h3>
						<p>0797-8787892</p>
					</div>
					<div class="col-md-3 grid_1">
						<i class="icon4"> </i>
						<h3>登门拜访</h3>
						<p>广东省深圳市龙岗区宝南路83号方兴科技D1区4楼401</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="course_demo">
			<div class="container">
				<ul id="flexiselDemo3">
					<li><img src="images/pic2.jpg" class="img-responsive" alt="" />
						<div class="content_desc">
							<p>为张先生从事销售工作,考虑自己经常出差，担心自己万一发生交通事故遇到不测，想给孩子、老婆留下一笔钱保障其基本生活，于是其选择了投保较高保额的意外伤害险，附加交通事故加倍给付。</p>
						</div>
					</li>
					<li><img src="images/pic1.jpg" class="img-responsive" alt="" />
						<div class="content_desc">
							<p>赵先生认为买保险兆头不好，从不买保险。赵先生的同事某日意外摔伤，医疗费用由保险公司埋单。赵先生认为，此君有此一劫，都怪之前买了保险，惹了祸。两个月后，没有买保险的赵先生也发生交通意外。不过，赵先生的医疗费用只能自掏腰包。</p>
						</div>
					</li>
					<li><img src="images/pic3.jpg" class="img-responsive" alt="" />
						<div class="content_desc">
							<p>王先生，30岁，儿子贝贝刚刚满月，王先生为贝贝投保4份少儿超能宝3.0保险产品计划为儿子的满月礼物、基本保额40万元，主附险年交保费合计4080元，10年交清。</p>
						</div>
					</li>
				</ul>
				<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo3").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: {
								portrait: {
									changePoint: 480,
									visibleItems: 1
								},
								landscape: {
									changePoint: 640,
									visibleItems: 2
								},
								tablet: {
									changePoint: 768,
									visibleItems: 2
								}
							}
						});

					});
				</script>
				<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
		</div>
		<div class="grid_2" id="tender">
			<div class="container">
				<h2><a href="products.jsp">全部险种</a></h2>
				<div class="box_1">
					<div class="col-md-6">
						<div class="col_1_of_2 span_1_of_2">
							<img src="images/pic4.jpg" class="img-responsive" alt="" />
							<div class="story_desc">
								<h3>人身意外险</h3>
								<p>￥ 100.00起</p>
							</div>
						</div>
						<div class="col_1_of_2 span_1_of_2">
							<h4>“乐行人生”交通工具意外伤害保险</h4>
							<p class="p1">
								<a href="confirm_message.jsp">该产品为一年前综合性意外保障，除一般意外伤害补偿外，还提供医疗门诊、住院津贴、伤残补助、交通事故加倍给付等额外保障；最高赔付额度达100万，足以为自己和家人的生活和出行提供有力保障。</a>
							</p>

						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6">
						<div class="col_1_of_2 span_1_of_2">
							<img src="images/pic5.jpg" class="img-responsive" alt="" />
							<div class="story_desc">
								<h3>养老保险</h3>
								<p>￥ 1000.00起</p>
							</div>
						</div>
						<div class="col_1_of_2 span_1_of_2">
							<h4>老来福（2018）保险产品计划</h4>
							<p class="p1">
								<a href="confirm_message.jsp">无论我们是否工作，每个月都可以领取一笔可观的收入；<br/>无论我们是否健康，都可以不再为明天的生活费担忧<br/>无论儿女是否孝顺，都可以有尊严享受幸福老年生活<br/>每个月都可以“任性”花掉手中的钱，因为下个月还会有、、、</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="box_2">
					<div class="col-md-6">
						<div class="col_1_of_2 span_1_of_2">
							<img src="images/pic6.jpg" class="img-responsive" alt="" />
							<div class="story_desc">
								<h3>少儿保险</h3>
								<p>￥ 1998.00起</p>
							</div>
						</div>
						<div class="col_1_of_2 span_1_of_2">
							<h4>少儿超能宝两全保险（3.0版）</h4>
							<p class="p1">
								<a href="confirm_message.jsp">少儿超能宝3.0保险产品计划涵盖了100种重大疾病和50种特定疾病(轻症)，其中包含了儿童常见的白血病、严重川崎病以及重症手足口病等，保障范围更广，为您的宝宝提供更加全面的健康保障。</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6">
						<div class="col_1_of_2 span_1_of_2">
							<img src="images/pic7.jpg" class="img-responsive" alt="" href="" />
							<div class="story_desc">
								<h3>理财保险</h3>
								<p>￥ 10000.00起</p>
							</div>
						</div>
						<div class="col_1_of_2 span_1_of_2">
							<h4>“聚宝盆”保险产品组合计划</h4>
							<p class="p1">
								<a href="confirm_message.jsp">创富容易守富难，守富之难难于上青天。<br/>太平洋寿险“聚宝盆保险产品组合计划”帮您打理财富、守住财富!</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="about" id="about">
			<div class="container">
				<h2>中国平安保险有限公司</h2>
				<div class="col-md-3 grid_3">
					<i class="about_icon1"> </i>
					<div class="about_desc">
						<h3>5000W+</h3>
						<p>用户</p>
					</div>
				</div>
				<div class="col-md-3 grid_3">
					<i class="about_icon2"> </i>
					<div class="about_desc">
						<h3>5000+</h3>
						<p>客户经理</p>
					</div>
				</div>
				<div class="col-md-3 grid_3">
					<i class="about_icon3"> </i>
					<div class="about_desc">
						<h3>1500+</h3>
						<p>保险类别</p>
					</div>
				</div>
				<div class="col-md-3 grid_3">
					<i class="about_icon4"> </i>
					<div class="about_desc">
						<h3>6000W+</h3>
						<p>理赔成功</p>
					</div>
				</div>
			</div>
		</div>
		
	</body>
	
</html>
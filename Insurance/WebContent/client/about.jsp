<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
			<div class="">
				<div class="index-banner" id="home">
					<div class="example1">
						<div id="about"  class="text-primary bg-warning"  style="padding-left: 40px;padding-right: 40px;  width: 68%;margin: auto;position:relative; left: 0; right: 0;">
							<p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国平安保险（集团）股份有限公司（以下简称“中国平安”，“公司”，“集团”）于1988年诞生于深圳蛇口，是中国第一家股份制保险企业，至今已发展成为融保险、银行、投资三大主营业务为一体、核心金融与互联网金融业务并行发展的个人金融生活服务集团之一。公司为香港联合交易所主板及上海证券交易所两地上市公司，股票代码分别为2318和601318。
								</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
中国平安致力于成为国际领先的科技型个人金融生活服务集团，坚持“科技引领金融，金融服务生活”的理念，以深化“金融+科技”、探索“金融+生态”为发展模式，聚焦“大金融资产”和“大医疗健康”两大产业，并深度应用于“金融服务、医疗健康、汽车服务、房产金融、城市服务”五大生态圈，为客户创造“专业，让生活更简单”的品牌体验，获得持续的利润增长，向股东提供长期稳定的价值回报。
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
中国平安是国内金融牌照最齐全、业务范围最广泛、控股关系最紧密的个人金融生活服务集团之一。平安集团旗下子公司包括平安寿险、平安产险、平安养老险、平安健康险、平安银行、平安信托、平安证券、平安大华基金等，涵盖金融业各个领域，已发展成为中国少数能为客户同时提供保险、银行及投资等全方位金融产品和服务的金融企业之一。此外，经过多年的部署和努力，平安互联网业务蓬勃发展，互联网用户规模高速增长。截至2017年12月31日，集团互联网用户规模约4.36亿，较年初增长26%。
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
中国平安拥有超过172万名员工和寿险销售人员。截至2017年12月31日，集团总资产达6.49万亿元，归属母公司股东权益为4,734亿元。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平安专注个人客户的经营，通过不同产品与服务间的交叉销售，让服务变得更加专业、便捷。2017年全年，集团个人客户数达1.66亿，较年初增长26.4%；集团客均合同数2.32个，较年初增长5.0%；集团实现客均利润355.85元，同比增长14.2%。借助综合金融模式所吸引的优质客户群体，公司个人业务价值稳步提升。
	</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
平安致力成为智能时代的领航者。近10年来，公司建立起科技驱动发展的业务模式，在金融科技、医疗健康科技领域持续创新。2017年平安的专利累计申请数高达3,030项，较年初增长262.0%，涵盖人工智能、区块链、云、大数据和安全等多个技术领域。平安的人脸识别技术准确率达99.8%，声纹识别文本相关准确率达99.7%，达世界领先水平。同时，平安不断利用丰富的场景开发、打造科技的成熟应用，并集成为核心科技能力向社会输出服务；经过多年培育，科技成果逐渐凸显，孵化出陆金所、平安好医生、平安医保科技、金融壹账通等多个科技创新平台。
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
中国平安在2017年《福布斯》“全球上市公司2000强”中名列第16位，居全球多元化保险企业第一；美国《财富》世界500强第39位，并蝉联中国内地混合所有制企业第一；除此之外，在英国WPP集团旗下Millward Brown公布的2017“BrandZTM最具价值中国品牌100强”及“全球品牌100强”中，分別排名第8位及第61位；在Brand Finance发布的“2018年全球最具价值保险品牌100强”排行榜中，再度荣膺全球保险品牌第一位。在全球最大品牌咨询公司Interbrand发布的“2017年最佳中国品牌排行榜”中，名列第六位，并蝉联中国保险业第一品牌。
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
中国平安是中国金融保险业中第一家引入外资的企业，拥有完善的治理架构，国际化、专业化的管理团队。公司一直遵循对股东、客户、员工、社会和合作伙伴负责的企业使命和治理原则，在一致的战略、统一的品牌和文化基础上，确保集团整体朝着共同的目标前进。通过建立完备的职能体系，清晰的发展战略，领先的全面风险管理体系，真实、准确、完整、及时、公平对等的信息披露制度，积极、热情、高效的投资者关系服务理念，为中国平安持续稳定的发展提供保障。
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
中国平安秉承“专业创造价值”的文化理念，在为股东、员工、客户创造价值的同时，也积极履行企业的社会责任，追求与各利益相关方的合作双赢，共同进步。公司多年来在教育慈善、环境保护及志愿者服务等公益事业中持续投入，深耕发展，积极回应社会热点问题，引导员工、客户和公众共同参与社会公益活动。2018年是平安成立30周年，公司启动总投入100亿元的“三村建设工程”，面向“村官、村医、村教”实施产业扶贫、健康扶贫、教育扶贫。
</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
公司因此获得广泛的社会褒奖：连续十六年获评“中国最受尊敬企业”称号，连续十年荣获“最具责任感企业”赞誉，多次荣获国际环保大会颁发的“国际碳金奖”。</p>
						</div>
						
					</div>
					<script src="js/jquery.wmuSlider.js"></script>
					
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
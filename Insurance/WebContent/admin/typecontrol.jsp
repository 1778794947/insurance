<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
<title>Insert title here</title>
</head>
<body>
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 保险种类总览
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
		<input type="text" id="keyword" title="请输入保险产品名称">
		<input type="submit" id="search" value="搜索">
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>编号</td>
				<td>保险种类</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
			
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="saveType.jsp">添加</a></div>
    </div> 
</div>
<script>
	var arrs = [];
	function reqs(){
		$.get("${pageContext.request.contextPath}/typeManage?method=getAlltypes",{"time":new Date()},function(data){
			var contact = JSON.parse(data); 
			$(".mytr").remove();
			for ( var i in contact) {
				arrs[i] = contact[i].tName;
				var $tr = $("<tr class='mytr'>"+
				        "<td>"+contact[i].tName+"</td>"+
				        "<td><a class='FunctionButton' onclick='del("+i+")'>删除</a></td>"
				        +"</tr>");
	 			$("#TableData").append($tr);
			}
		});
	}
	reqs();
	
	function del(i) {
		reqs();
		$.get("${pageContext.request.contextPath}/typeManage?method=deleteType",{"tName":arrs[i],"time":new Date()},function(data){
			reqs();
		});	
	}
	
	$("#search").click(function() {
		var keyword = $("#keyword").val();
		keyWord = $.trim(keyword);
		$.get("${pageContext.request.contextPath}/typeManage?method=search",{"keyword":keyword,"time":new Date()},function(data){
			var contact = JSON.parse(data); 
			console.log(contact);
			$(".mytr").remove();
			for ( var i in contact) {
				var $tr = $("<tr class='mytr'>"+
				        "<td>"+contact[i].tName+"</td>"+
				        "<td><a class='FunctionButton' onclick='del("+i+")'>删除</a></td>"
				        +"</tr>");
	 			$("#TableData").append($tr);
			}
		});
	});
</script>
</body>
</html>
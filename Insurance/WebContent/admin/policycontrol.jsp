<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*,domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath}/admin/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/style/css/index_1.css" />
<title>Insert title here</title>
<!-- <script type="text/javascript">
$(function){
	alert($("keyword").value());
}//搜素功能等一哈
</script> -->
</head>
<body>
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="${pageContext.request.contextPath}/admin/style/images/title_arrow.gif"/> 保险产品总览
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
				<td>保险产品名称</td>
				<td>保险售价</td>
				<td>最小赔付金额</td>
				<td>最大赔付金额</td>
				<td>描述</td>
				<td>所属类型</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">

        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="savePolicy.jsp">添加</a></div>
    </div> 
</div>
<script>
	var arrs = [];
	
	function reqs(){
		$.get("${pageContext.request.contextPath}/productManage?method=getAllpolicys",{"time":new Date()},function(data){
			var contact = JSON.parse(data); 
			//console.log(contact);
			$(".mytr").remove();
			for ( var i in contact) {
				arrs[i] = contact[i].pName;
				var $tr = $("<tr class='mytr'>"+
				        "<td>"+contact[i].pName+"</td>"+
				        "<td>"+contact[i].pMoney+"</td>"+
				        "<td>"+contact[i].pMinLose+"</td>"+
				        "<td>"+contact[i].pMaxLose+"</td>"+
				        "<td>"+contact[i].pDesc+"</td>"+
				        "<td>"+contact[i].tName+"</td>"+
				        "<td><a class='FunctionButton' href='updatePolicy.jsp?name="+contact[i].pName+"&money="+contact[i].pMoney+"&minlose="+contact[i].pMinLose+"&maxlose="+contact[i].pMaxLose+"&desc="+contact[i].pDesc+"'>修改</a><a class='FunctionButton' onclick='del("+i+")'>删除</a></td>"
				        +"</tr>");
	 			$("#TableData").append($tr);
			}
		});
	}
	reqs();//setInterval(reqs, 10);
	
	function del(i) {
		reqs();
		$.get("${pageContext.request.contextPath}/productManage?method=deletePolicy",{"pName":arrs[i],"time":new Date()},function(data){
			reqs();
		});	
	}
	
	function update(i) {
		reqs();
		$.get("${pageContext.request.contextPath}/productManage?method=updatePolicy",{"time":new Date()},function(data){
			reqs();
		});	
	}
	
	$("#search").click(function() {
		var keyword = $("#keyword").val();
		keyWord = $.trim(keyword);
		$.get("${pageContext.request.contextPath}/productManage?method=search",{"keyword":keyword,"time":new Date()},function(data){
			var contact = JSON.parse(data); 
			console.log(contact);
			$(".mytr").remove();
			for ( var i in contact) {
				var $tr = $("<tr class='mytr'>"+
				        "<td>"+contact[i].pName+"</td>"+
				        "<td>"+contact[i].pMoney+"</td>"+
				        "<td>"+contact[i].pMinLose+"</td>"+
				        "<td>"+contact[i].pMaxLose+"</td>"+
				        "<td>"+contact[i].pDesc+"</td>"+
				        "<td>"+contact[i].tName+"</td>"+
				        "<td><a class='FunctionButton' href='updatePolicy.jsp?name="+contact[i].pName+"&money="+contact[i].pMoney+"&minlose="+contact[i].pMinLose+"&maxlose="+contact[i].pMaxLose+"&desc="+contact[i].pDesc+"'>修改</a><a class='FunctionButton' onclick='del("+i+")'>删除</a></td>"
				        +"</tr>");
	 			$("#TableData").append($tr);
			}
		});
	});

	
</script>
</body>
</html>
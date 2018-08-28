<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

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
<sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="mjh"
password="123456"/>
<sql:query var="result">
select * from claim;
</sql:query>
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 索赔信息总览
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入保险产品名称">
		<button onclick="search">搜索</button>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>编号</td>
				<td>索赔描述</td>
				<td>索赔详细文件</td>
				<td>索赔保险产品</td>
				<td>被保人</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
			<c:forEach items="${result.rowsByIndex}" var="row">
			<tr class="TableDetail1" id="choose">
			<td><c:out value="${row[0]}" /></td>
 			<td><c:out value="${row[1]}" /></td>
 			<td><c:out value="${row[2]}" /></td>
 			<td><c:out value="${row[3]}" /></td>
 			<td><c:out value="${row[4]}" /></td>
 			<td>
				<a href="filedownload.jsp?fileDownloadName=${row[2]}" class="FunctionButton">下载附件</a>		
				<a href="breply.jsp?pname=${row[3]}&zName=${row[4]}" class="FunctionButton">填写回执</a>				
			</td>
			</tr>
			</c:forEach>
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->

</div>

</body>
</html>
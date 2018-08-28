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
<title>显示用户保单信息</title>
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/insurancedb?useUnicode=true&characterEncoding=utf-8"
user="mjh"
password="123456"/>
<sql:query var="result">
select * from regpolicy;
</sql:query>
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 用户保单信息总览
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<form action="/wirelessplatform/board.html" method="get"><!--  暂时没有 -->
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入报保险人姓名">
		<input type="submit" value="搜索">
	</form>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>编号</td>
				<td>购买日期</td>
				<td>保险期限</td>
				<td>保险状态</td>
				<td>被保人真实姓名</td>
				<td>被保人身份证号码</td>
				<td>投保人真实姓名</td>
				<td>投保人身份证号码</td>
				<td>保险名称</td>
				<td>保险售价</td>
				<td>最小赔付金额</td>
				<td>最大赔付金额</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
			<c:forEach items="${result.rowsByIndex}" var="row">
			<tr class="TableDetail1">
			<td><c:out value="${row[0]}" /></td>
 			<td><c:out value="${row[1]}" /></td>
 			<td><c:out value="${row[2]}" /></td>
 			<td><%-- <c:out value="${row[3]}" /> --%>
 			<c:if test="${row[3]==0}">未生效</c:if>
 			<c:if test="${row[3]==1}">已生效</c:if>
 			<c:if test="${row[3]==2}">已过期</c:if>
 			</td>
 			<td><c:out value="${row[4]}" /></td>
 			<td><c:out value="${row[5]}" /></td>
 			<td><c:out value="${row[6]}" /></td>
 			<td><c:out value="${row[7]}" /></td>
 			<td><c:out value="${row[8]}" /></td>
 			<td><c:out value="${row[9]}" /></td>
 			<td><c:out value="${row[10]}" /></td>
 			<td><c:out value="${row[11]}" /></td>
 			<td>
 			<form action="<%= request.getContextPath()%>/RegPolicyServlet" method="post">
 			<select name="status">
 			<option value="0">未生效</option>
 			<option value="1">已生效</option>
 			<option value="2">已过期</option>
 			</select>
				<%-- <a href="Servlet/RegPolicyServlet?zname=${row[3]}&iname=${row[6]}&status" class="FunctionButton">修改状态</a> --%>
				<input type="hidden" value="${row[4]}" name="zname">
				<input type="hidden" value="${row[6]}" name="iname"><!-- 传递被保人和投保人名字作为检索条件 -->
				<input type="submit" value="修改状态"> 
				</form>
			</td>
			
			</tr>
			</c:forEach>
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->

</div>
</body>
</html>
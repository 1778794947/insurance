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
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 填写索赔回执
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->

<%String bpname=request.getParameter("pname"); %>
<%String b=(String)session.getAttribute("adminname"); %>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
<form  action="<%= request.getContextPath()%>/BreplyServlet" method="post">
<table>
<tr>
<td>回执详情：</td><td><textarea rows="10" cols="20" name="bDesc"></textarea></td>
</tr>
<tr>
<td>赔付金额：</td><td><input type="text" name="cPayMoney"/></td>
</tr>
<tr>
<td>保险名称：</td><td><input type="text" name="pName" value=<%=bpname%>></td>
</tr>
<tr>
<td>被保人姓名：</td><td><input type="text" name="zName" value=<%=request.getParameter("zName")%>></td>
</tr>
<tr>
<td>管理员名：</td><td><input type="text" name="aName" value=<%=b%>></td>
</tr>
</table>
<input type="submit" value="提交"/>
</form>
   <!-- 其他功能超链接 -->

</div>

</body>
</html>
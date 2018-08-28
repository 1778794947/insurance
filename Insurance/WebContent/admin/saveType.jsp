<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend>添加保险产品</legend>
	<form action="${pageContext.request.contextPath}/typeManage?method=addType" method="post">
		保险类型:<input type="text" name="name"><br>
		<input type="submit" class="btn btn-primary" value="确定">
	</form>
</fieldset>
</body>
</html>
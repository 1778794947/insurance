<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/adminManage?method=addPartAdmin" method="post">
管理员名<input type="text" name="aName"><br>
密码<input type="password" name="aPwd"><br>
<input type="submit" value="注册">
</form>
</body>
</html>
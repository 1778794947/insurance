<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/style/js/jquery.js"></script>
</head>
<body>
<fieldset>
	<legend>修改保险产品信息</legend>
	<form action="${pageContext.request.contextPath}/productManage?method=updatePolicy&oldName=<%=request.getParameter("name") %>" method="post">
		保险产品名称:<input type="text" name="pName" value="<%=request.getParameter("name") %>"><br>
		保险售价:<input type="text" name="pMoney" value="<%=request.getParameter("money") %>"><br>
		最小赔付金额:<input type="text" name="pMinLose" value="<%=request.getParameter("minlose") %>"><br>
		最大赔付金额:<input type="text" name="pMaxLose" value="<%=request.getParameter("maxlose") %>"><br>
		描述:<input type="text" name="pDesc" value="<%=request.getParameter("desc") %>"><br>
		<select name="tName" id="ms">
			
		</select><br>
		<input type="submit" value="确定">
	</form>
</fieldset>
<script>
	function reqs(){
		$.get("${pageContext.request.contextPath}/productManage?method=setSelectType",{"time":new Date()},function(data){
			var contact = JSON.parse(data); 
			$(".myopt").remove();
			for ( var i in contact) {
				var $option = $(
						"<option value="+contact[i].tName+" class='myopt'>"+contact[i].tName+"</option>"
				       );
	 			$("#ms").append($option);
			}
		});
	}
	reqs();
</script>
</body>
</html>
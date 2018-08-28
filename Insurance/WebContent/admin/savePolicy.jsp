<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/style/js/jquery.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
</head>
<body>
<fieldset>
	<legend>添加保险产品</legend>
	<form action="${pageContext.request.contextPath}/productManage?method=addPolicy" method="post" enctype="multipart/form-data">
		保险产品名称:<input type="text" name="pName"><br>
		保险售价:<input type="text" name="pMoney"><br>
		最小赔付金额:<input type="text" name="pMinLose"><br>
		最大赔付金额:<input type="text" name="pMaxLose"><br>
		描述:<input type="text" name="pDesc"><br>
		<select name="tName" id="ms">
		</select><br>
		<input type="file" name="picfile"/><br>
		<input type="submit" class="btn btn-primary" value="确定">
	</form>
</fieldset>
<script>
	function reqs(){
		$.get("${pageContext.request.contextPath}/productManage?method=setSelectType",{"time":new Date()},function(data){
			var contact = JSON.parse(data); 
/* 			console.log(contact+"====");
			console.log(contact[0].tName+"====0");
			console.log(contact[1].tName+"====1"); */
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
	//setInterval(reqs, 10);
</script>
</body>
</html>
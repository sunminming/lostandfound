<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration: none;
	color:#000000; 
	font-weight:bold
	
}
</style>
</head>
<body bgcolor="#E6E6FA">
	<table width="60%" align="left" border="0">
		<tr height="10" align="center">
			<td><img src="../image/dog.gif"></td>
			<td><a href=" <%=request.getContextPath()%>/main/Main.jsp" target="_parent">首页</a></td>
			<td>|</td>
			<td><a href="../shiwuzhaoling/LostAndFound.jsp" target="main">失物认领</a></td>
			<td>|</td>
			<td><a href="../shiwuzhaoling/LostAndFound2.jsp" target="main">找回失物</a></td>
			<td>|</td>
			<td><a href="../shiwuzhaoling/CampusInformation.jsp"
				target="main">校园公告</a></td>

		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#a4d5f6" >

	<s:div align="center">
		<table border="0" cellspacing="0" cellpadding="0" width="80%"
			align="center">
			<tr align="center">
				<td width="20%"><s:a href="../guanliyuan/LookAllPerson.jsp">黑名单管理</s:a></td>
				<td width="20%">发布公告</td>
				<td width="20%"><s:a href="../guanliyuan/ChaKanGongGao.jsp">查看公告</s:a></td>
				<td width="20%"><s:a href="../guanliyuan/ShiWuXinXi.jsp">失物招领信息</s:a></td>
			</tr>
		</table>
	</s:div>
	<hr noshade />
	<s:form action="faBuGongGaoAction" method="post" enctype="multipart/form-data">
		<table border="1" cellspacing="0" cellpadding="0" bgcolor="#a4d5f6"
			width="60%" align="center">
			<tr>
				<td><s:textfield name="biaoti" label="标题"></s:textfield></td>
			</tr>
			<tr>
				<td><s:textarea name="neirong" rows="5" label="内容"></s:textarea></td>
			</tr>
			<tr height="5">
				<td colspan="2" align="center"><input type="submit" value="确 定"
					size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="reset" value="清 除" size="12"></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
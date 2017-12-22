
<%@page import="java.util.ArrayList"%>
<%@page import="JavaBean.UserNameBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import=" java.util.Calendar"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#E6E6FA">
	<%
		String loginname = null;
		ArrayList login = (ArrayList) session.getAttribute("userName");
		if (login == null || login.size() == 0) {
			loginname = "";
		} else {
			for (int i = login.size() - 1; i >= 0; i--) {
				UserNameBean nm = (UserNameBean) login.get(i);
				loginname = nm.getUserName();
			}
		}
	%>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd E"); //设置日期和时间显示模式
		Calendar calendar = Calendar.getInstance(); //表示当前日期
		//  System.out.println(sdf.format(calendar.getTime()));
	%>
	<table align="center" border="0" width="95%" height="100">
		<tr align="right" valin="top" height="50%">
			<%
				if (loginname.equals("") || loginname.length() == 0) {
			%>
			<td><a href="../login/Login.jsp" target="_top">登录</a>
				&nbsp;&nbsp; <a href="../login/ZhuCe.jsp" target="_top">注册</a>&nbsp;&nbsp;
			</td>
			<%
				} else {
			%>
			<td><a href="../xinxi/Person.jsp" target="_top"><%=loginname%></a>,欢迎你访问本系统！ &nbsp;&nbsp; 
			<a href="../login/Login.jsp" target="_top" onclick="return confirm('确定要退出？')">退出</a>
			</td>
			<%
				}
			%>
		</tr>
		<tr align="right" height="*">
			<td>今天是：<%=sdf.format(calendar.getTime())%> &nbsp;
			</td>
		</tr>
	</table>
</body>
</html>
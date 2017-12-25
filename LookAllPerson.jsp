<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="JavaBean.MyMessBean"%>
<%@page import="JavaBean.UserNameBean"%>
<%@page import="DBJavaBean.DB"%>
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
				<td width="20%">黑名单管理</td>
				<td width="20%"><s:a href="../guanliyuan/FaBuGongGao.jsp">发布公告</s:a>
				</td>
				<td width="20%"><s:a href="../guanliyuan/ChaKanGongGao.jsp">查看公告</s:a></td>
				<td width="20%"><s:a href="../guanliyuan/ShiWuXinXi.jsp">失物招领信息</s:a></td>
			</tr>
		</table>
	</s:div>
	<hr noshade />

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
	<table border="1" cellspacing="0" cellpadding="0" bgcolor="#a4d5f6"
		width="80%" align="center">
		<tr>
			<th height="30">用户名</th>
			<th height="30">角色</th>
			<th height="30">性别</th>
			<th height="30">出生日期</th>
			<th height="30">所属院系</th>
			<th height="30">操作</th>
		</tr>
		<%
			DB yonghu = new DB();
			yonghu.yongHuGuanLi(request);

			ArrayList yhgl = (ArrayList) session.getAttribute("yonghuguanli");
			if (yhgl == null || yhgl.size() == 0) {
		%>
		<s:div align="center"><%="您还没有用户信息！"%></s:div>
		<%
			} else {
				int intPageSize; //一页显示的记录数
				int intRowCount; //记录信息总数
				int intPageCount; //总页数
				int intPage; //待显示页码
				String strPage;
				int ii;
				intPageSize = 10; //设置一页显示的记录数
				strPage = request.getParameter("page"); //取得待显示页码
				if (strPage == null) {
					//表明在QueryString中没有page这一个参数，此时显示第一页数据
					intPage = 1;
				} else {
					//将字符串转换成整型
					intPage = java.lang.Integer.parseInt(strPage);
					if (intPage < 1) {
						intPage = 1;
					}
				}

				intRowCount = yhgl.size();//信息的总条数。
				intPageCount = (intRowCount + intPageSize - 1) / intPageSize; //一共多少页信息

				//计算每页显示的范围
				int min = (intPage - 1) * intPageSize;
				int max = intPage * intPageSize;

				if (max > intRowCount) {
					max = intRowCount;
				}

				//	for (int i = fabuxinxi.size() - 1; i >= 0; i--) {
				for (int i = min; i < max; i++) {
					MyMessBean ff = (MyMessBean) yhgl.get(i);
		%>
		<tr>
			<%
				if (ff.getJueSe().equals("black")) {					
			%>
			<td><%=ff.getUserName()%></td>
			<td><%=ff.getJueSe()%></td>
			<td><%=ff.getSex()%></td>
			<td><%=ff.getBirth()%></td>
			<td><%=ff.getCollege()%></td>
			<td align="center">*</td>
			<td align="center"><a
				href="MoveOutBlackAction?userName=<%=ff.getUserName()%>">移除</a></td>
			<%
				}
			%>
		</tr>
		<%
			}
				//	}
		%>
	</table>
	<div align="center">
		第<%=intPage%>页 共<%=intPageCount%>页
		<%
		if (intPage < intPageCount) {
	%>
		<a href=" ../guanliyuan/LookAllPerson.jsp?page=<%=intPage + 1%>">下一页</a>
		<%
			} else {
		%>
		<a href=" ../guanliyuan/LookAllPerson.jsp?page=1">首页</a>
		<%
			}
				if (intPage > 1) {
		%>
		<a href=" ../guanliyuan/LookAllPerson.jsp?page=<%=intPage - 1%>">上一页</a>
		<%
			} else {
		%>
		<a href=" ../guanliyuan/LookAllPerson.jsp?page=<%=intPageCount%>">尾页</a>
		<%
			}
			}
		%>
	</div>
</body>
</html>

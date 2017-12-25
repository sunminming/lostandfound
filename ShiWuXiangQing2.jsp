<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="JavaBean.UserNameBean"%>
<%@page import="JavaBean.WuPinBean"%>
<%@page import="JavaBean.ShiWuLiuYanBean"%>
<%@page import="java.util.ArrayList"%>
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
				<td width="20%"><s:a href="../guanliyuan/LookAllPerson.jsp">用户管理</s:a></td>
				<td width="20%"><s:a href="../guanliyuan/FaBuGongGao.jsp">发布公告</s:a>
				</td>
				<td width="20%"><s:a href="../guanliyuan/ChaKanGongGao.jsp">查看公告</s:a></td>
				<td width="20%"><s:a href="../guanliyuan/ShiWuXinXi.jsp">失物招领信息</s:a></td>
			</tr>
		</table>
	</s:div>
	<hr noshade />
	物品详细信息:
	<table border="1" cellspacing="0" cellpadding="0" bgcolor="#a4d5f6"
		width="80%" align="center">
		<tr>
			<th height="30">序号</th>
			<th height="30">标题</th>
			<th height="30">类别</th>
			<th height="30">信息说明</th>
			<th height="30">图片名称</th>
			<th height="30">发布时间</th>
		</tr>
		<%
			String num = request.getParameter("num");//获取上个页面传递的物品number,用来详情
			
			DB xiangqing = new DB();
			//xiangqing.ShiWuXiangQing(request, num);
			xiangqing.ShiWuXiangQing(request, num);
			ArrayList swxx = (ArrayList) session.getAttribute("shiwuxiangqing");
			if (swxx == null || swxx.size() == 0) {
		%>
		<s:div align="center"><%="很抱歉，没有查询到物品详情！"%></s:div>
		<%
			} else {
				for (int i = swxx.size() - 1; i >= 0; i--) {
					WuPinBean ff = (WuPinBean) swxx.get(i);
		%>
		<tr align="center">
			<td><%=ff.getNumber()%></td>
			<td><%=ff.getBiaoTi()%></td>
			<td><%=ff.getType()%></td>
			<td><%=ff.getShuoMing()%></td>
			<td><%=ff.getPicturn()%></td>
			<td><%=ff.getTime()%></td>
		</tr>
		<tr align="center">
			<td colspan="6"><img src="../save/<%=ff.getPicturn()%>" /></td>
		</tr>
		<tr align="center">
			<td colspan="6"><a href="../guanliyuan/ShiWuXinXi.jsp">返回</a></td>
		</tr>
		<%
			}
			}
		%>
	</table>
	</form>
</body>
</html>

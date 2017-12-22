<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园失物招领系统</title>

</head>
<!--frameborder属性是为了是界面边界是否显示  -->

<frameset rows="18%,*,9%" framespacing="0" border="no" frameborder="0">
	<frame src=" <%=request.getContextPath()%>/main/shang.jsp" name="shang" scrolling="no">

	<frameset cols="10%,*,10%" framespacing="0" border="no" frameborder="0">
		<frame src=" <%=request.getContextPath()%>/main/left.jsp" name="left" scrolling="no">

		<frameset rows="10%,90%" framespacing="0" border="no" frameborder="0">
			<frame src=" <%=request.getContextPath()%>/main/top3.jsp" name="top3" scrolling="no">
			<frame src=" <%=request.getContextPath()%>/main/about.jsp" name="main">
		</frameset>

		<frame src=" <%=request.getContextPath()%>/main/right.jsp" name="right" scrolling="no">
	</frameset>

	<frame src=" <%=request.getContextPath()%>/main/bottom.jsp" name="bottom" scrolling="no">
</frameset>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
	<title>登录页面</title>
</head>
<body>
<h1>登录</h1>
<form action="<%=path%>/toHome" method="post">
	<span>用户名：<input id="username" name="username" placeholder="请输入用户名"/></span><br/>
	<span>密 码 ：<input id="password" name="password" placeholder="请输入密码"/></span><br/>
	<span><button type="submit">提交</button></span><br/>
	${msg}
</form>
</body>
</html>

<%--
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>
<!Doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
</head>
<body>
	<h1>登录</h1>
	<form action="<%=path%>/toHome" method="post">
		<span>用户名：<input id="username" name="username" placeholder="请输入用户名"/></span><br/>
		<span>密 码 ：<input id="password" name="password" placeholder="请输入密码"/></span><br/>
		<span><button type="submit">提交</button></span>
	</form>
</body>
</html>--%>

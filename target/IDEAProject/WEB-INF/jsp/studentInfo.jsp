<%@ page import="com.ssm.pojo.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

</style>
</head>

<body style = "padding: 60px;">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">henu论文评审</a>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="index.jsp">学生操作页面</a></li>
				<li><a href="submitInfo?user_id=${user1.user_id}">提交论文信息</a></li>
				<li><a href="submitPDF.jsp">提交论文</a></li>
				<li><a href="paperInform.jsp">查看论文信息</a></li>
			</ul>

			<c:set var="user1" value="${user1}" ></c:set>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${user1 != null}">
					<li><a href="#">Hello,${user1.username }</a></li>
					<li><a href="studentInfo.jsp?person_id=${user1.user_id}%>"><span class="glyphicon glyphicon-user"></span> 查看个人信息</a></li>
				</c:if>
				<li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
				<li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
				<%--<%} %>--%>
			</ul>
		</div>
	</div>
</nav>
	<!-- 注册窗口 -->
    <div class = "content" align = "left" style = "margin-left: 250px;margin-right: 250px;">
		<p class = "text-left">人员编号 :<b> ${user1.user_id} </b></p>
		<p class = "text-left">姓名 : <b> ${user1.username} </b></p>
		<p class = "text-left">学号 : <b>${student1.sno}</b></p>
		<p class = "text-left">身份证号 : <b>${student1.idnumber}</b></p>
		<p class = "text-left">院系 : <b>${student1.department}</b></p>
		<p class = "text-left">专业 : <b>${student1.major}</b></p>
		<p class = "text-left">层级 : <b>${student1.level}</b></p>
		<p class = "text-left">年级 : <b>${student1.grade}</b></p>
		<p class = "text-left">培养方向 : <b>${student1.cultivate}</b></p>
		<p class = "text-left">导师 : <b>${student1.tutor}</b></p>
		<p class = "text-left">导师职称 : <b>${student1.title}</b> </p>
	</div>
</body>
</html>
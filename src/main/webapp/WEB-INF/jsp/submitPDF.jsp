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
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>提交论文</title>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body style = "padding: 80px;">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">CPRMS</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="index.jsp">学生操作页面</a></li>
<%--					<li><a href="submitInfo?user_id=${user1.user_id}">提交论文信息</a></li>--%>
					<li><a href="#">提交论文</a></li>
					<li><a href="paperInform.jsp">查看论文信息</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
<%--					<c:if test="${user != null}">--%>
<%--						<li><a href="#">Hello,${user.username }</a></li>--%>
<%--						<li><a href="studentInfo?user_id=${user.user_id}"><span class="glyphicon glyphicon-user"></span> 查看个人信息</a></li>--%>
<%--					</c:if>--%>
					<li><a  href="Logout"><span class="glyphicon glyphicon-log-out"></span> 登出</a></li>
					<li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
					<li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">               
		<table class="table table-hover">
			<caption>我提交的论文信息</caption>
			<thead>
				<tr>
					<th>论文编号</th>
					<th>标题</th>
					<th>类型</th>
					<th> </th>
				</tr>
			</thead>
			<tbody>
				<%--<%
					if(paperList != null)
					{
						Iterator <Paper> it2 = paperList.iterator();
			        	while(it2.hasNext()){
			        		Paper paper = it2.next();
			    %>--%>
				<tr>
					<%--<td><%=paper.getPaper_number() %></td>
					<td><%=paper.getTitle() %></td>
					<td><%=paper.getPaper_type()%></td>--%>
					<td>
						<a href="setPDF.jsp?paper_number=<%--<%=paper.getPaper_number() %>--%>">
						<button  type="button" class="btn  btn-success">
            				<span class="glyphicon glyphicon-plus" ></span>上传
       				 	</button>
       				 	</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
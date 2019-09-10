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
<html>
<head>
    <title>学校页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style = "padding: 60px;" >
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">henu论文评审</a>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="index.jsp">学校操作页面</a></li>
                <li><a href="prefers.jsp">查看论文评审结果</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">
                <%--<c:if test="${user != null}">--%>
                    <li><a href="#">Hello,<%--${user.username }--%></a></li>
                    <li><a href="studentInfo?user_id=<%--${user.user_id}--%>"><span class="glyphicon glyphicon-user"></span> 查看个人信息</a></li>
                <%--</c:if>--%>
                <li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
                <%--<%} %>--%>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>

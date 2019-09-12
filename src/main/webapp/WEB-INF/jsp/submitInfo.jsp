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
<title>提交论文信息</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style = "padding: 80px;">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">henu论文评审</a>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-left">
				<li class=""><a href="index.jsp">学生操作页面</a></li>
				<li class="active" ><a href="#">提交论文信息</a></li>
				<li><a href="submitPDF.jsp">提交论文</a></li>
				<li><a href="paperInform.jsp">查看论文信息</a></li>
			</ul>


			<ul class="nav navbar-nav navbar-right">
				<c:if test="${user != null}">
					<li><a href="#">Hello,${user.username}</a></li>
					<li><a href="studentInfo?user_id=${user.user_id}"><span class="glyphicon glyphicon-user"></span> 查看个人信息</a></li>
				</c:if>
				<li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
				<li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
				<%--<%} %>--%>
			</ul>
		</div>
	</div>
</nav>
	<div class = "content" align = "left" style = "margin-left: 150px;margin-right: 250px;">
		<form class="form-group" method="post" action="SubmitPaperInfo">
        	<div class="form-group">
            	<label>学生姓名</label>
                <input name="studentName" class="form-control" type="text" value="${student.name}">
				<input name="studentId"  style="display: none" class="form-control disabled" type="text" value="${student.stu_id}">
             </div>
            <br>
            <div class="form-group">
                <label>论文标题(必填)</label>
                <input name="paperTitle" class="form-control" type="text" placeholder="author major">
            </div>
            <br>
            <div class="form-group">
                <label>导师姓名(必填)</label>
                <input name="tutorName" class="form-control" type="text" value="${student.tutor}" placeholder="tutor name">
            </div>
            <br>
             <div class="alert alert-info">注：作者必须已在本系统注册,否则无法发表论文！</div>
             <div class="form-group">
      			<button type="submit" class="btn btn-default">提交信息</button>
  			 </div>
		</form>
	</div>
	
	
	<div id="success" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-title">
                    <h1 class="text-center">提交结果</h1>
                </div>
                <div class="modal-body">
                	<%--<%if (message != null ) { %>
                	<div class="alert alert-danger"><%=message %></div>
   					<%} %>
					<%if (smessage != null ) { %> 
                	<div class="alert alert-success"><%=smessage %></div>
   					<%} %>--%>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
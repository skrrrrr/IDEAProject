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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style = "padding: 60px;">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">河南大学</a>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="index.jsp">论文评审系统</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        论文提交
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="submitAbs.jsp">提交摘要</a></li>
                        <li><a href="submitPDF.jsp">提交论文</a></li>
                        <li><a href="paperInform.jsp">查看论文信息</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        论文评审
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="prefers.jsp">设置标注</a></li>
                        <li><a href="reviewPaper.jsp">审阅论文</a></li>
                        <li><a href="discuss.jsp">建议</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        系统管理员
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="managePC.jsp">管理审批员</a></li>
                        <li><a href="assignPaper.jsp">分配论文</a></li>
                        <li><a href="sendLetter.jsp">发送结果</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
                <%--<%} %>--%>
            </ul>
        </div>
    </div>
</nav>

<!-- 登录窗口 -->
<div id="login" class="modal fade" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-title">
                <h1 class="text-center">登录</h1>
            </div>
            <div class="modal-body">
                <form class="form-group" method="post" action="<%=path%>/toHome">
                    <div class="form-group">
                        <label for="username">用户名</label>
                        <input id="username" name="username" class="form-control" type="text" placeholder="name">
                    </div>
                    <div class="form-group">
                        <label for="pwd">密码</label>
                        <input id="pwd" name="password" class="form-control" type="text" placeholder="email">
                    </div>
                    <%--                            <%if (message != null) { %> --%>
                    <div class="alert alert-danger"><%--<%=message %>--%>${msg}</div>
                    <%--							<%} %>--%>
                    <div class="text-right">
                        <button class="btn btn-default" type="submit">登录</button>
                        <button class="btn btn-danger" data-dismiss="modal">取消</button>
                    </div>
                    <a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
                </form>
            </div>
        </div>
    </div>
</div>
<%--    <%if (message != null) { %>
    <script type="text/javascript">
          $(function(){
                   $('#login').modal('show')
          });
   </script>
   <%} %>--%>
</body>
</html>

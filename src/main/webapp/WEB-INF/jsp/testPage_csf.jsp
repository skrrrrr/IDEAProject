<%--
  Created by IntelliJ IDEA.
  User: Mango
  Date: 2019/9/12
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>分页查询</title>
</head>
<body>
<table border="1">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>论文编号</th>
        <th>所属院系</th>
        <th>专业</th>
        <th>级别</th>
        <th>类别</th>
        <th>文科/理科</th>
        <th>年级</th>
        <th>培养方案</th>
        <th>导师</th>
        <th>论文题目</th>
    </tr>
    <c:forEach items="${pageInfo.list}" var="student">
        <tr>
            <td>${student.sno}</td>
            <td>${student.name}</td>
            <td>${student.idnumber}</td>
            <td>${student.department}</td>
            <td>${student.major}</td>
            <td>${student.level}</td>
            <td>${student.category}</td>
            <td>${student.subject}</td>
            <td>${student.grade}</td>
            <td>${student.cultivate}</td>
            <td>${student.tutor}</td>
            <td>${student.title}</td>
        </tr>
    </c:forEach>
</table>
<c:set var="pageSize" value="1"/>
<a href="/studentByPage?pageNumber=1&pageSize=${pageSize}"
   <c:if test="${pageInfo.pageNumber<=1}">onclick="javascript:return false;" </c:if>>首页</a>
<a href="/studentByPage?pageNumber=${pageInfo.pageNumber-1}&pageSize=${pageSize}"
   <c:if test="${pageInfo.pageNumber<=1}">onclick="javascript:return false;" </c:if>>上一页</a>
<a href="/studentByPage?pageNumber=${pageInfo.pageNumber+1}&pageSize=${pageSize}"
   <c:if test="${pageInfo.pageNumber>=pageInfo.totalNumber}">onclick="javascript:return false;" </c:if>>下一页</a>
<a href="/studentByPage?pageNumber=${pageInfo.totalNumber}&pageSize=${pageSize}"
   <c:if test="${pageInfo.pageNumber>=pageInfo.totalNumber}">onclick="javascript:return false;" </c:if>>末页</a>
当前页${pageInfo.pageNumber}共${pageInfo.totalNumber}页<br/>
<form action="/studentByPage">
    跳转到<input type="number" max="${pageInfo.totalNumber}" min="1" name="pageNumber" value="${pageInfo.pageNumber}"/>页
    <input type="hidden" name="pageSize" value="${pageSize}"/>
    <input type="submit" value="跳转"/>
</form>
</body>
</html>

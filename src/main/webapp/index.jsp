<%--
  Created by IntelliJ IDEA.
  User: Logos
  Date: 2021/8/11
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>欢迎光临</title>
</head>
<body>
    <div align="center" style="color: cornsilk">
        <a href="addStudent.jsp">学生注册</a>
        <br>
        <a href="findStudent.jsp">查询学生</a>
    </div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Logos
  Date: 2021/8/11
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>

<html>
<head>
    <base href="<%=basePath%>">
    <title>注册学生</title>
</head>
<body>
    <div align="center">
        <form method="post" action="student/add.do">
            <table border="1px">
                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="rname"></td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td><input type="text" name="rage"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="注册">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

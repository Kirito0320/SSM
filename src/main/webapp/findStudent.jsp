<%--
  Created by IntelliJ IDEA.
  User: Logos
  Date: 2021/8/11
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>

<html>
<head>
    <base href="<%=basePath%>">
    <title>查询学生</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            doAjax();
            $("#butt").click(function () {
                $("#content").empty();
                doAjax();
            })
        })

        function doAjax(){
            $.ajax({
                url:"student/find.do",
                type:"post",
                dataType:"json",
                success:function (data) {
                    $.each(data,function (i,n) {
                        $("#content").append("<tr><td>"+n.id+"</td><td>"+n.name+"</td><td>"+n.age+"</td></tr>");
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table border="1px">
            <thead>
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>年龄</td>
            </tr>
            </thead>
            <tbody id="content"></tbody>
            <tr ><td colspan="3" align="center"><input type="button" id="butt" value="刷新"></td> </tr>
        </table>
    </div>
</body>
</html>

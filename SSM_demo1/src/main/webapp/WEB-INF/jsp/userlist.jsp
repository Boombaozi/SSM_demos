<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="Path" value="${pageContext.request.contextPath}"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + '/';
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<div class="container">

    <div class="col-xs-12 col-sm-9">
        <div>


            <form class="form-inline" action="${proPath}/user/userlist.do" method="post">
                <h4>信息检索</h4><br>
                <label>学号</label>
                <input type="text" name="id">
                <label>姓名</label>
                <input type="text" name="name">
                <label>性别</label>
                <input type="radio" name="sex" value="男">男
                <input type="radio" name="sex" value="女">女
                <label>邮箱</label>
                <input type="text" name="email">
                <button type="submit" class="btn btn-info">查询</button>
            </form>

            <form class="form-inline" action="${proPath}/user/deleteUserByIds.do" method="post">


            <table class="table table-hover">

                <thead>
                <tr>
                    <th><button type="submit" class="btn btn-danger">批量删除</button></th>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>密码</th>
                    <th>邮箱</th>
                    <th>最后修改时间</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${user}" var="user">

                    <tr>
                        <td>
                            <input type="checkbox" name="id" value="${user.id}">
                        </td>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.sex}</td>
                        <td>${user.password}</td>
                        <td>${user.email}</td>
                        <td>${user.create_at}</td>
                        <td><a href="${proPath}/user/toupdateuser.do?id=${user.id}">修改</a></td>
                        <td><a href="${proPath}/user/deleteuser.do?id=${user.id}">删除</a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            </form>
        </div>
    </div>
</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
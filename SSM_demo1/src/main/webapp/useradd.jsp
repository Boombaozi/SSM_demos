<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/2/7
  Time: 1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row">
    <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
        <div class="login-panel panel panel-default">
            <div class="panel-heading">管理员登录</div>
            <div class="panel-body">


                <form role="form" action="${pageContext.request.contextPath }/servlet/loginServlet" method="post">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="账号" name="id" type="text" autofocus>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="密码" name="password" type="password" value="">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input name="remember" type="checkbox" value="Remember Me">记住密码
                            </label>
                        </div>
                        <input type="submit" class="btn btn-primary" value="登录">

                    </fieldset>
                </form>


            </div>
        </div>
    </div><!-- /.col-->
</div><!-- /.row -->


</body>
</html>

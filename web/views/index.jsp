<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/6
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- 这是一个html5 doctype声明 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>OnLineJudge</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="../css/common/init.css">
    <link rel="stylesheet" href="../css/common/main.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/vendor/modernizr-2.8.3.min.js"></script>
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }
    </style>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please
    <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please
    <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">OnLineJudge</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <form class="navbar-form navbar-right" name="login_form"
                  action="<%=path%>/student/student_stuLogin.action" method="post">
                <div style="display:inline-block">
                    <input required='' type='text' name='studentName' id="studentName">
                    <label alt='请输入用户名' placeholder='用户名'></label>
                </div>
                <div style="display:inline-block">
                    <input required='' type='password' name="studentPassword" id="studentPassword">
                    <label alt='请输入密码' placeholder='密码'></label>
                </div>
                <button type="submit" class="btn btn-success">登陆</button>
                <button type="button" class="btn btn-success">
                    <a href="register.jsp" class="btn-register">注册</a>
                </button>
            </form>
        </div>
        <!--/.navbar-collapse -->
    </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>Hello, world!</h1>
        <span>
            <h2><em>i++和++i的世界</em></h2>
            <h2><em>跌宕着无穷与循环</em></h2>
            <h2><em>在递归中走出世界的尽头！</em></h2>
        </span>
       <%-- <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>--%>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>在线竞赛</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris
                condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis
                euismod. Donec sed odio dui.
            </p>
            <%--<p><a class="btn btn-default" href="#" role="button">Learn more &raquo;</a></p>--%>
        </div>
        <div class="col-md-4">
            <h2><a href=<%=path%>/problemInfo/problemInfo_queryProblemList.action>题目栅栏</a></h2>
           <%-- <p><a class="btn btn-default" href="#" role="button">Learn more &raquo;</a></p>--%>
        </div>
        <div class="col-md-4">
            <h2>在线编译</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula
                porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
                fermentum massa justo sit amet risus.</p>
           <%-- <p><a class="btn btn-default" href="#" role="button">Learn more &raquo;</a></p>--%>
        </div>
    </div>
</div>
<!-- /container -->
<hr>
<div class="footer" id="footer">
    <p>&copy; Seminhar 2016</p>
</div>
<script src="../js/plugins.js"></script>
<script src="../js/main.js"></script>
</body>

</html>
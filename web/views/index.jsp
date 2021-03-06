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
        <%try {String stuName =(String ) session.getAttribute("stu_login_success_session");%>
        <%if(stuName==null||stuName.length()<0){ System.out.println(session.getAttribute("stu_login_success_session"));%>
            <div id="navbar" class="navbar-collapse collapse" >
            <form class="navbar-form navbar-right" name="login_form" id="login_form"
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
    <%}else {%>
        <div class="navigation">
            <ul>
                <li>欢迎您！</li>
                <li><a href=""><%=stuName%></a></li>
                <li><a href="<%=path%>/student/student_stuLogout.action">退出</a></li>
            </ul>
        </div>
  <%--      <div class="welcome navbar-right">
           欢迎 <%=stuName%><br>
            <a class="welcome  welcomeLogout" href="<%=path%>/student/student_stuLogout.action">退出</a>
        </div>--%>
        <%}%>
        <%
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
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
        <div class="col-md-4" id="col-md-1">
            <h2><a href="#">在线竞赛</a></h2>
            <p>
            </p>
            <%--<p><a class="btn btn-default" href="#" role="button">Learn more &raquo;</a></p>--%>
        </div>
        <div class="col-md-4" id="col-md-2">
            <h2><a href=<%=path%>/problemInfo/problemInfo_queryProblemList.action>题目栅栏</a></h2>
            <%-- <p><a class="btn btn-default" href="#" role="button">Learn more &raquo;</a></p>--%>
        </div>
        <div class="col-md-4" id="col-md-3">
            <h2><a href="#">在线编译</a></h2>
            <p></p>
            <%-- <p><a class="btn btn-default" href="#" role="button">Learn more &raquo;</a></p>--%>
        </div>
    </div>
</div>
<!-- /container -->

<div id="footer">
    <p>Copyright© Seminhar 2016版权所有 </p>
</div>
<script src="../js/plugins.js"></script>
<script src="../js/main.js"></script>
</body>

</html>
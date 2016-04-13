<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/29
  Time: 0:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>OnLinJudge后台管理系统</title>
    <link rel="stylesheet" href="../../css/backStage/backStage.css">
</head>
<body>
<div class="head">
    <h3 class="head_text fr">OnLinJudge后台管理系统</h3>
</div>
<!--用户登出操作bar-->
<div class="operation_user clearfix">
    <div class="link fr">
        <a href="#" class="icon icon_i">首页</a><span></span>
        <a href="#" class="icon icon_n">刷新</a><span></span>
        <a href="#" class="icon icon_e">退出</a>
    </div>
</div>
<div class="content clearfix">
    <div class="main">
        <!--右侧内容-->
        <div class="cont">
            <div class="details">
                <div class="details_operation clearfix">
                    <div class="fr">
                        <div class="text">
                            <span>搜索</span>
                            <input type="text" value="" class="search">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--左侧列表-->
    <div class="menu">
        <div class="cont">
            <div class="title">系统管理</div>
            <ul class="mList">
                <li>
                    <h3><span>-</span>学生管理</h3>
                    <dl>
                        <dd><a href="<%=path%>/student/student_stuQuery.action">学生列表</a></dd>
                        <dd><a href="#">添加学生</a></dd>
                    </dl>
                </li>
                <li>
                    <h3><span>-</span>教师管理</h3>
                    <dl>
                        <dd><a href="#">教师列表</a></dd>
                        <dd><a href="#">添加教师</a></dd>
                    </dl>
                </li>
                <li>
                    <h3><span>-</span>试题管理</h3>
                    <dl>
                        <dd><a href="#">试题列表</a></dd>
                        <dd><a href="#">添加试题</a></dd>
                    </dl>
                </li>
                <li>
                    <h3><span>-</span>竞赛管理</h3>
                    <dl>
                        <dd><a href="#">竞赛列表</a></dd>
                        <dd><a href="#">添加竞赛</a></dd>
                        <dd><a href="#">竞赛申请</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>

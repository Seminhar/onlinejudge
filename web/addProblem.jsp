<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/4/4
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加题目</title>
    <link rel="stylesheet" href="css/backStage/addProblem.css" />
</head>
<body>
<div class="problem_container">
    <form id="addProblem_form" action="<%=path%>/problemInfo/problemInfo_addProblemInfo.action" method="post">
        <ul class="ulColumn2">
            <li>
                <span class="item_name" style="width:120px;">题目名字：</span>
                <input type="text"  name="problemName" class="textbox textbox_295" />
            </li>
            <hr />
            <li>
                <span class="item_name" style="width:120px;">题目描述:</span>
                <textarea  name="problemContent" class="textarea" style="width:500px;height:100px;"></textarea>
            </li>
            <li>
                <span class="item_name" style="width:120px;">输入</span>
                <textarea name="inPut" class="textarea" style="width:500px;height:100px;"></textarea>
            </li>
            <li>
                <span class="item_name" style="width:120px;">输出</span>
                <textarea name="outPut" class="textarea" style="width:500px;height:100px;"></textarea>
            </li>
            <li>
                <span class="item_name" style="width:120px;">样例输入</span>
                <textarea name="exInput" class="textarea" style="width:500px;height:100px;"></textarea>
            </li>
            <li>
                <span class="item_name" style="width:120px;">样例输出</span>
                <textarea  name="exOutput" class="textarea" style="width:500px;height:100px;"></textarea>
            </li>
            <li>
                <span class="item_name" style="width:120px;"></span>
                <input type="submit"/>
            </li>
        </ul>
    </form>
</div>
<div class="footer">
    <p class="text-muted text-center">Copyright © 2016 </p>
</div>
</body>
</html>

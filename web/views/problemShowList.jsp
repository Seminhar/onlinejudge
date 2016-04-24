<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/29
  Time: 1:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<link rel="stylesheet" href="../../css/backStage/table.css">
<body>
<div id="mainContainer">
    <div class="list_problem_title">
       <label><h1>题目列表</h1></label>
    </div>
    <table class="table">
        <tr>
            <th>题号</th>
            <th>题目</th>
            <th>提交</th>
            <th>通过</th>
            <th>正确率</th>
        </tr>
        <s:iterator value="#session.problemInfo_queryAllList_success" var="pInfo">
            <tr>
                <td style="width:265px;">
                    <div class="cut_title ellipsis">
                        <s:property value="#pInfo.problemId"/>
                    </div>
                </td>
                <td>
                    <a href=<%=path%>/problemInfo/problemInfo_problemShow.action?problemId=<s:property value="#pInfo.problemId"/>>
                    <s:property value="#pInfo.problemName"/>
                    </a>
                </td>
                <td><s:property value="#"/></td>
                <td><s:property value="#"/></td>
                <td><s:property value="#"/></td>
            </tr>
        </s:iterator>
    </table>

</div>
</body>
</html>

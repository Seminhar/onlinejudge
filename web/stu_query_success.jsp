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
<style type="text/css">
    table {
        border-collapse: collapse;
        border-spacing: 0
    }
    .table {
        width: 100%;
    }

    .table th {
        border: 1px #d2d2d2 solid;
        height: 40px;
        line-height: 40px;
    }

    .table td {
        border: 1px #d2d2d2 solid;
        padding: 10px 8px;
    }

    .table tr:nth-child(odd) {
        background: #f8f8f8;
    }

    .table tr:hover {
        background: #f9f9f9;
    }

    .table td a {
        color: #19a97b;
        margin: 0 5px;
        cursor: pointer;
    }

    .table td .inner_btn {
        background: #F9F;
        color: white;
        padding: 5px 8px;
        border-radius: 2px;
    }

    .table td .inner_btn:hover {
        background: #ffa4ff;
        color: #f8f8f8;
    }

    .table td .cut_title {
        width: 265px;
    }
</style>
<body>
<div id="mainContainer">
    <table class="table">
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>学院</th>
            <th>邮箱</th>
            <th>操作</th>
        </tr>
        <s:iterator value="#session.queryAllStudent_list" var="stu">
        <tr>
            <td style="width:265px;">
                <div class="cut_title ellipsis">
                    <s:property value="#stu.studentNum"/>
                </div>
            </td>
            <td><s:property value="#stu.studentName"/></td>
            <td><s:property value="#stu.studentGender"/></td>
            <td><s:property value="#stu.studentCollege"/></td>
            <td><s:property value="#stu.studentEmail"/></td>
            <td>
                <a href="<%=path%>/students/Students_delete.action?sid=<s:property value="#stu.studentNum"/>"
                   onclick="javascript: return confirm('真的要删除吗？');">删除
                </a>
            </td>
        </tr>
        </s:iterator>
    </table>

</div>
</body>
</html>
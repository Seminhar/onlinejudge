<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/27
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>SystemManager</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

</head>

<body>
<div>
    ��Ŀ����
    <ul>
        <li><a href="ProblemServlet?action=viewProblem">�鿴��Ŀ</a></li>
        <li><a href="ProblemServlet?action=jmpToAddProblem">������Ŀ</a></li>
        <li><a href="ProblemServlet?action=jmpToModifyProblem">ɾ�����޸�</a>
        </li>
    </ul>
    <br> ���͹���
    <ul>
        <li><a href="ProblemServlet?action=jmpToAddProblemType">��������</a>
        </li>
        <li><a href="ProblemServlet?action=jmpToAddProblemType">ɾ�����޸�</a>
        </li>
    </ul>
    <br> �ڴ�ʱ������
    <ul>
        <li><a href="">��������</a></li>
        <li><a href="">�޸ġ�ɾ��</a></li>
    </ul>
    <br> �û�����
    <ul>
        <li><a href="">�鿴�û�</a></li>
        <li><a href="">�����û�</a></li>
        <li><a href="">ɾ�����޸�</a></li>
        <li><a href="">�����û�</a></li>
    </ul>
    <br> �û������
    <ul>
        <li><a href="">�鿴�û���</a></li>
        <li><a href="">�����û���</a></li>
        <li><a href="">ɾ�����޸�</a></li>
        <li><a href="">�����û���</a></li>
    </ul>
</div>
</body>
</html>

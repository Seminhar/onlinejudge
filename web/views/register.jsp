<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link rel="stylesheet" href="../css/common/register.css"/>
    <script type="text/javascript" src="../js/register/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="../js/register/regform.js"></script>
</head>
<body>
<div>
    <div class="form-div">
        <form id="reg-form" name="reg-form" method="post"
              action="<%=path%>/student/student_stuRegister.action">
            <div>
                <!--用户名-->
                <input name="studentName" type="text" id="studentName" placeholder="请输入用户名"
                       easyform="length:4-16;char-normal;real-time;"
                       message="用户名必须为4—16位的英文字母或数字"
                       easytip="disappear:lost-focus;theme:blue;"
                       ajax-message="用户名已存在!">

            </div>
            <div>
                <!--密码--><input name="studentPassword" type="password" id="psw1" placeholder="请输入密码"
                                easyform="length:6-16;"
                                message="密码必须为6—16位"
                                easytip="disappear:lost-focus;theme:blue;">
            </div>
            <div>
                <!--确认密码--><input name="psw2" type="password" id="psw2" placeholder="请确认密码"
                                  easyform="length:6-16;equal:#psw1;"
                                  message="两次密码输入要一致"
                                  easytip="disappear:lost-focus;theme:blue;">

            </div>
            <div>
                <!--邮箱--><input name="studentEmail" type="text" id="studentEmail" placeholder="请输入邮箱地址"
                                easyform="email;real-time;"
                                message="请输入正确的Email格式"
                                easytip="disappear:lost-focus;theme:blue;"
                                ajax-message="这个Email地址已经被注册过，请换一个吧!">
            </div>
            <div class="buttons">
                <input value="注 册" type="submit">
                <a href="index.jsp">
                    <input value="已有账号" type="button">
                </a>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('#reg-form').easyform();
    });
</script>

</body>
</html>

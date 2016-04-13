<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/4/4
  Time: 1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="org.apache.struts2.ServletActionContext" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <title>
        <s:property value="${sessionScope.problemInfo.problenName}"></s:property>
        GZS送温暖
    </title>
    <link rel="stylesheet" type="text/css" href="../css/problem/problemShow.css">
</head>

<body>
<div class="container main">
    <h2 class="text-center"> <s:property value="${sessionScope.problemInfo.problenName}"></s:property></h2>

    <p class="text-muted text-center">
        发布时间: 2015年9月6日 15:18&nbsp;&nbsp; 时间限制: 1000ms&nbsp;&nbsp; 内存限制: 256M
    </p>

    <div>
        <div class="problem-section">
            <label class="problem-label">描述</label>
            <div class="problem-detail">
                <p> </p>
                <p style="margin-bottom: 0cm; line-height: 100%">&nbsp; &nbsp; 众所周知，GZS是一个总是考第一的大学霸，为什么呢？因为GZS喜欢思考！(逃…</p>
                <p style="margin-bottom: 0cm; line-height: 100%">当然，GZS也有不愿意动脑的时候，给你N个正整数(可以重复)，GZS希望让你告诉他这些正整数里面第K小的数是多少。简单吗，ACCEPT it！</p>
            </div>
        </div>
        <div class="problem-section">
            <label class="problem-label">输入</label>

            <p class="problem-detail">第一行为一个整数N ( N &lt;= 100000) 代表整数个数； 第二行为N个整数，并且每个正整数的值都不大于10^6； 第三行为一个整数K ( K &lt;= N );</p>
        </div>
        <div class="problem-section">
            <label class="problem-label">输出</label>

            <p class="problem-detail">输出一行，包含一个整数。这个整数就是这个序列里面排第K小的数。</p>
        </div>

        <div class="problem-section">
            <label class="problem-label">样例输入1</label>
					<pre>
5
1 2 2 4 5
3</pre>

        </div>
        <div class="problem-section">
            <label class="problem-label">样例输出1</label>
					<pre>
2</pre>
        </div>
        <div>
            <label>选择语言</label>
            <div>
                <label class="radio-inline">
                    <input type="radio" name="language" value="1" checked> C (GCC 4.8)
                </label>
                <label class="radio-inline">
                    <input type="radio" name="language" value="2"> C++ (G++ 4.3)
                </label>
                <label class="radio-inline">
                    <input type="radio" name="language" value="3"> Java (Oracle JDK 1.7)
                </label>
            </div>
        </div>
        <div id="code-field">
            <label class="problem-label">提交代码</label>
            <hr>
            <textarea id="code-editor"></textarea>
        </div>
        <hr>
        <div id="submit-code">
            <button type="button" class="btn btn-primary" id="submit-code-button">
                提交代码
            </button>
           <%-- <img src="/static/img/loading.gif" id="loading-gif">--%>
        </div>
        <div id="result">
        </div>
        <hr>
    </div>
</div>
<!-- footer begin -->
<div class="footer">
    <p class="text-muted text-center">Copyright © 2016 </p>
</div>
<!-- footer end -->
</body>

</html>

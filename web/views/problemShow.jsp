<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/4/4
  Time: 1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="entity.problemInfo" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    try {
        List<problemInfo> list = (List<problemInfo>) session.getAttribute("showProblemInfo_success");
   /* String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";*/
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <title>
        <%=list.get(0).getProblemName()
        %>
    </title>
    <link rel="stylesheet" type="text/css" href="../css/problem/problemShow.css">
</head>

<body>
<div class="container main">
    <h2 class="text-center">
        <%=list.get(0).getProblemName()
        %>
        <s:property value="session1.problemName"></s:property>
    </h2>
    <p class="text-muted text-center">
        时间限制: <%=list.get(0).getTimesLim()%>ms&nbsp;&nbsp; 内存限制: <%=list.get(0).getMemeryLim()%>M
    </p>

    <div>
        <div class="problem-section">
            <label class="problem-label">描述</label>
            <div class="problem-detail">
                <p></p>
                <p style="margin-bottom: 0cm; line-height: 100%">&nbsp; &nbsp; <%=list.get(0).getProblemContent()%>
                </p>
                <p style="margin-bottom: 0cm; line-height: 100%"></p>
            </div>
        </div>
        <div class="problem-section">
            <label class="problem-label">输入</label>

            <p class="problem-detail"><%=list.get(0).getInPut()%>
            </p>
        </div>
        <div class="problem-section">
            <label class="problem-label">输出</label>

            <p class="problem-detail"><%=list.get(0).getOutPut()%>
            </p>
        </div>

        <div class="problem-section">
            <label class="problem-label">样例输入1</label>
					<pre>
<%=list.get(0).getExInput()%></pre>

        </div>
        <div class="problem-section">
            <label class="problem-label">样例输出1</label>
					<pre>
<%=list.get(0).getExOutput()%></pre>
        </div>
        <form action="<%=path%>/submitInfo/submitInfo_submitCode.action" method="post">
                <input name="problemId" value=<%=list.get(0).getProblemId()%> hidden="hidden"></input>
                <input name="userId" value=<%=session.getAttribute("stu_login_success_session")%> hidden="hidden"></input>
                <label>选择语言</label>
                <div>
                    <%--     <label class="radio-inline">
                             <input type="radio" name="language" value="1" checked> C (GCC 4.8)
                         </label>
                         <label class="radio-inline">
                             <input type="radio" name="language" value="2"> C++ (G++ 4.3)
                         </label>
                         <label class="radio-inline">
                             <input type="radio" name="language" value="3"> Java (Oracle JDK 1.7)
                         </label>--%>
                    语言选择：
                    <select name="compLang">
                        <option>java</option>
                        <option>C++</option>
                        <option>C</option>
                    </select>
                </div>
            </div>
            <div id="code-field">
                <label class="problem-label">提交代码</label>
                <hr>
                <textarea class="code-editor" rows="20" name="sourceCode"></textarea>
            </div>
            <hr>
            <div id="submit-code">
                <button type="submit" class="btn btn-primary" id="submit-code-button">
                    提交代码
                </button>
                <%-- <img src="/static/img/loading.gif" id="loading-gif">--%>
            </div>
        </form>
        <%
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <div id="result">
        </div>
        <hr>
    </div>
</div>
<!-- footer begin -->
<div class="footer">
    <p class="text-muted text-center">Copyright © 2016 </p>
</div>
<script>
    document.getElementById("submit-code-button").onclick=function () {
        <%String stu_session=(String) session.getAttribute("stu_login_success_session");%>
        if(stu_session.length() <= 0) {
            alert("请登录后在进行相关操作！");
        }
    }
</script>
<!-- footer end -->
</body>

</html>

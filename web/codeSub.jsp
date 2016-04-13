<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/11
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>源码提交 </title>
</head>
<body>
 <div>
     <div>
         <div>
             <form name="sourceCode" >
               <div>
                 语言选择： <select name="langType">
                     <option>java</option>
                     <option>C++</option>
                  </select>
               </div>
                 <div name="codeArea">
                    <textarea>

                    </textarea>
                 </div>
             </form>
             <div>
                 测试结果：<textarea>

             </textarea>
             </div>
         </div>
     </div>
 </div>
</body>
</html>

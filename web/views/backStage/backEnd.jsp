<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/28
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>系统后端管理</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <link rel="stylesheet" href="../../css/dtree.css"/>
    <script type="text/javascript">var dtreeIconBasePath = "img/dtree";</script>
    <script type="text/javascript"  src="../../js/dtree.js"></script>
</head>
<body>
<script type="text/javascript">
    var treeMenu = [
        { level:1, name:"学生管理"},
        { level:2, name:"学生列表", ico:"img/dtree/icon_default.gif",link:"students/Students_query.action"},
        { level:1, name:"教师管理"},
        { level:2, name:"教师列表", ico:"img/dtree/icon_default.gif",link:"role_list.html"},
        { level:1, name:"信息管理"},
        { level:2, name:"新闻管理", ico:"img/dtree/icon_default.gif",link:"news_list.html"},
        { level:2, name:"公告管理", ico:"img/dtree/icon_default.gif",link:"bulletin_list.html"},
        { level:1, name:"题目管理"},
        { level:2, name:"添加题目", ico:"img/dtree/icon_default.gif",link:"role_list.html"},
        { level:2, name:"题目列表",ico:"img/dtree/icon_default.gif",link:""},
    ];
</script>
<div class="dtree" style="margin:10px;">
    <script type="text/javascript">
        //建立新树
        tree = new dTree('tree');
        tree.config.target = "MainFrame";
        tree.config.useCookies = false;
        var selNum = -1;
        var link = "";
        //根目录
        tree.add(0,-1,'管理中心', null, null, null, '', '');
        var count = 0;
        var pLevelIdArray = new Array();
        pLevelIdArray[1] = 0;
        var currLevel = 1;
        for (var i=0; i<treeMenu.length; i++) {
            var item = treeMenu[i];
            var itemLevel = item.level;
            pLevelIdArray[itemLevel+1] = ++count;
            if (item.link!=null && item.link!="") {
                if (item.ico!=null) {
                    tree.add(count, pLevelIdArray[itemLevel], item.name, item.link, null, null, item.ico, item.ico);
                } else {
                    tree.add(count, pLevelIdArray[itemLevel], item.name, item.link);
                }
            } else {
                if (item.ico!=null) {
                    tree.add(count, pLevelIdArray[itemLevel], item.name, null, null, null, item.ico, item.ico);
                } else {
                    tree.add(count, pLevelIdArray[itemLevel], item.name);
                }
            }
            if (item.select) {
                selNum = count;
                link = item.link;
            }
        }
        document.write(tree);
        tree.openAll();
        if (selNum != -1) {
            tree.openTo(selNum,true);
            top.document.frames["MainFrame"].location.href=link;
        }
    </script>
</div>
<div>

</div>
</body>
</html>

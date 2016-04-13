
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>后台管理系统</title>
		<link type="text/css" rel="stylesheet" href="css/backStage/backAdmin.css" />
		<script type="text/javascript" src="js/backStage/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/backStage/menu.js"></script>
	</head>

	<body>
		<div class="top"></div>
		<div id="header">
			<div class="logo">OnlineJudge后台管理系统</div>
			<div class="navigation">
				<ul>
					<li>欢迎您！</li>
					<li><a href="">张三</a></li>
					<li><a href="">修改密码</a></li>
					<li><a href="">设置</a></li>
					<li><a href="">退出</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div class="left_menu">
				<ul id="nav_dot">
					<li>
						<h4 class="M1"><span></span>系统公告</h4>
						<div class="list-item none">
							<a href=''>公告列表</a>
							<a href=''>发布公告</a>
						</div>
					</li>
					<li>
						<h4 class="M2"><span></span>学生管理</h4>
						<div class="list-item none">
							<a href="<%=path%>/student/student_stuQuery.action">学生列表</a>
							<a href=''>添加学生</a>
						</div>
					</li>
					<li>
						<h4 class="M3"><span></span>教师管理</h4>
						<div class="list-item none">
							<a href=''>教师列表</a>
							<a href=''>添加教师</a>							
						</div>
					</li>
					<li>
						<h4 class="M4"><span></span>试题管理</h4>
						<div class="list-item none">
							<a href=''>试题列表</a>
							<a href="addProblem.jsp">添加试题</a>
						</div>
					</li>
					<li>
						<h4 class="M5"><span></span>调研问卷</h4>
						<div class="list-item none">
							<a href=''>问卷列表</a>
							<a href=''>发布问卷</a>
						</div>
					</li>
					<li>
						<h4 class="M6"><span></span>数据统计</h4>
						<div class="list-item none">
							<a href=''>用户统计</a>
							<a href=''>试题统计</a>
							<a href=''>竞赛统计</a>
						</div>
					</li>
					<li>
						<h4 class="M7"><span></span>在线竞赛</h4>
						<div class="list-item none">
							<a href=''>竞赛列表</a>
							<a href=''>发布竞赛</a>
							<a href=''>竞赛审核</a>
						</div>
					</li>
					<li>
						<h4 class="M10"><span></span>系统管理</h4>
						<div class="list-item none">
							<a href=''>系统管理1</a>
							<a href=''>系统管理2</a>
							<a href=''>系统管理3</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="m-right">
				<!--<div class="right-nav">
					<ul>
						<li><img src="images/home.png"></li>
						<li style="margin-left:25px;">您当前的位置：</li>
						<li><a href="#">系统公告</a></li>
						<li>></li>
						<li><a href="#">最新公告</a></li>
					</ul>
				</div>-->
				<div class="main">
                    <iframe src="../index.jsp" width="100%" height="100%">
                    </iframe>
				</div>
			</div>
		</div>
		<div class="bottom"></div>
		<div id="footer">
			<p>Copyright© 2015 版权所有 </p>
		</div>
		<script>
			navList(12);
		</script>
	</body>

</html>
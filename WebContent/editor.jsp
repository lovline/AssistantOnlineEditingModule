<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="graduation.xidian.com.UserBean"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	setInterval(function() {
		var dd = new Date();
		var y = dd.getFullYear();
		var m = dd.getMonth() + 1;
		var d = dd.getDate();
		var h = dd.getHours();
		var mi = dd.getMinutes();
		var s = dd.getSeconds();
		var str = y + "年" + m + "月" + d + "日&nbsp;&nbsp;" + h + ":" + ((mi < 10) ? "0" : "") + mi + ":"
				+ ((s < 10) ? "0" : "") + s + "&nbsp;&nbsp;星期" + "日一二三四五六".charAt(dd.getDay())+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		document.getElementById("time").innerHTML = str;
	}, 1000);
//	这种方法很特别。。（简写的选择表达式处理很牛逼啊。要学会使用）
// 	function showtime()//创建函数
// 	{
// 		var nowTime = new Date();//创建时间对象实例
// 		var hours = nowTime.getHours();//获取当前小时数
// 		var minutes = nowTime.getMinutes();//获取当前分钟数
// 		var seconds = nowTime.getSeconds();//获取当前秒数
// 		var timer = " " + ((hours > 12) ? hours - 12 : hours);//将小时数质赋予变量timer
// 		timer += ((minutes < 10) ? "0:" : ":") + minutes;//将分钟数值赋予变量timer
// 		timer += ((seconds < 10) ? "0:" : ":") + seconds;//将秒数值赋予变量timer
// 		timer += " " + ((hours > 12) ? "pm" : "am");//将字符am或pm赋予变量timer
// 		document.getElementById('time').innerHTML = timer;
// 		setTimeout("showtime()", 1000);
// 	}
</script>
<script type="text/javascript">
	$(function(){
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/editorbg.jpg)");
		$("#welcome").css("opacity",0.7);
		$('a:contains("university")').text("")
		.append("<img style='width:150px' src='${pageContext.request.contextPath}/images/logo1.png'></img>");
		$("#beforeEditor").click(function(){
			$("#beforeEditor").hide("normal");
			$("#realEditor").show("normal","linear");
		});
	});
</script>

<!-- 页头 -->
<div class="panel panel-default">
	<div class="panel-body input-lg">Assistant Online Editing
		Module...</div>
</div>
<!-- 获取当前时间 -->
<div align="right" style="float: right">
	<c:if test="${ is_logged }">
		<span>
			<font color="green">您上次登录的时间为： </font> ${ lastVisited }
		</span>
	</c:if>
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	<span id="curtime">
		<font color="green">系统当前时间为：</font><span id="time"></span>
	</span>
</div>
<ul class="pager" style="opacity:0.5">
		<li><a href="index.jsp">&larr;首页 index</a></li>
</ul>

<!-- 这个是刚开始的界面 需要在调用后面的时候隐藏起来的 还要加入一些显示的动画的 ===done-->
<div id="beforeEditor">
	<div class="page-header col-md-8 col-md-offset-2 text-center">
		<h1>
			辅导信息在线系统研发 <small>欢迎界面</small>
		</h1>
		<hr />
	</div>
	
	<div class="jumbotron col-md-8 col-md-offset-2 text-center" id="welcome">
		<h1>Hello, 
			<c:choose>
				<c:when test="${ is_logged }">
					<font color="blue">${ username } </font>!
				</c:when>
				<c:otherwise><font color="blue">临时用户体验</font>!</c:otherwise>
			</c:choose>
		</h1>
		<p>just start your life , just do it .</p>
		<p>
			<a class="btn btn-success btn-lg" id="showPanel">show panel</a>
		</p>
	</div>
</div>

<div id="realEditor" style="display: none">
	<form action="editor" method="post">
		<div class="col-md-8 col-md-offset-2">
			<p class="navbar-text"></p>
			<p class="navbar-text"></p>
		</div>
		<div class="row" id="hidden_editor">
	  		<div class="col-md-4 col-md-offset-8">
	  			<c:choose>
					<c:when test="${ is_logged }">
						welcome <font color="blue">${ username } </font>
					</c:when>
					<c:otherwise>welcome friend! </c:otherwise>
				</c:choose>
				<img src="images/head.jpg" alt="远方的岛和星期五" class="img-rounded">
			</div>
		
			
			<div class="col-md-8 col-md-offset-2">
				<div class="form-group">
					<label for="exampleInputEmail1"><h3>my_editor_theme</h3></label> <input
						type="email" class="form-control" id="exampleInputEmail3"
						placeholder="enter your subject...">
				</div>
				<textarea id="editor1" name="editor1"><span
						style="font-size: 16px;">Initial value...</span>
					</p></textarea>
				<script type="text/javascript">
					CKEDITOR.replace('editor1');
				</script>
				<br>
				<div>
					<button type="submit" class="btn btn-primary">submit my
						editor</button>
				</div>
	
	
				<!-- 登陆成功 具有登陆后的所有权限 -->
				<c:if test="${ is_logged }">
						<font color="red">c:if #some codes...</font>
					</c:if>
	
	
			</div>
		</div>
	</form>
</div>

<%@ include file="footer.jsp" %>


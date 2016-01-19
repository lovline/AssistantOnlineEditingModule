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
		var str = y + "年" + m + "月" + d + "日&nbsp;&nbsp;" + h + ":" + mi + ":"
				+ s + "&nbsp;&nbsp;星期" + "日一二三四五六".charAt(dd.getDay());
		document.getElementById("time").innerHTML = str;
	}, 1000);
</script>
<script type="text/javascript">
	$(function(){
		$('a:contains("university")').text("")
		.append("<img style='width:150px' src='${pageContext.request.contextPath}/images/logo1.png'></img>");
	});
</script>

<!-- 页头 -->
<div class="panel panel-default">
	<div class="panel-body input-lg">Assistant Online Editing
		Module...</div>
</div>
<!-- 获取当前时间 -->
<span id="curtime">
	显示系统当前时间为：<span id="time"></span>
</span>
<!-- 这个是刚开始的界面 需要在调用后面的时候隐藏起来的 还要加入一些显示的动画的 -->
<div>
	<div class="page-header col-md-8 col-md-offset-2 text-center">
		<h1>
			辅导信息在线系统研发 <small>欢迎界面</small>
		</h1>
		<hr />
	</div>
	
	<div class="jumbotron col-md-8 col-md-offset-2 text-center">
		<h1>Hello, ${ username } !</h1>
		<p>just start your life , just do it .</p>
		<p>
			<a class="btn btn-success btn-lg" href="" role="button">show panel</a>
		</p>
	</div>
</div>

<form action="" method="post">
	<div class="row" id="hidden_editor">
	
  		<div class="col-md-4 col-md-offset-7">
			welcome <a href="">${ username }</a>
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
			<div>
				<button type="button" class="btn btn-primary">submit my
					editor</button>
			</div>


			<!-- 登陆成功 具有登陆后的所有权限 -->
			<c:if test="${ is_logged }">
					c:if #some codes...
				</c:if>


		</div>
	</div>
</form>


<%@ include file="footer.jsp" %>


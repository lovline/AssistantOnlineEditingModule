<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	$(function(){
		document.title = "错误处理";
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/errorbg.jpg)");
	});
</script>

<div class="col-md-6 col-md-offset-2">
	<div class="alert" role="alert"><font size="6">*&*&*</font></div>
	<h2><font color="white">对不起 , 登陆失败 --- login failuer</font></h2>
	<hr>
	
	<div>
		<!--
			这里要有一个方法区分这两者的区别，同时要在登陆页面直接给出那个用户名的值。 
			在loginSevlet中设置一个参数值，用c:if判断就可以了。
		-->
		<c:choose>
			<c:when test="${ check_username }">
				<h3><font color="red">用户名密码错误，可返回重新登录</font></h3>
			</c:when>
			<c:otherwise>
				<h3><font color="white">当前用户名不存在，可选择返回首页浏览本网站</font></h3>
			</c:otherwise>
		</c:choose>
		<hr>
		<ul class="pager" style="float: right">
		<li><a href="index.jsp" class="btn-lg">&larr;首页 index</a></li>
	</ul>
		<a href="login.jsp" class="btn btn-success btn-lg">重新登录</a>
	</div>
</div>
<div class="row" style="margin-top: 80px">
	<div class="col-md-12 text-center">
		<font color="white"><strong>版权所有 2016 &copy;</strong></font><a
			href="http://www.xidian.edu.cn/">&nbsp;&nbsp;xi'dian university</a> <br />
		<br /> <img id="xiaohui" style="width: 120px"
			src="${pageContext.request.contextPath}/images/logo.png"></img>
	</div>
</div>
</body>
</html>
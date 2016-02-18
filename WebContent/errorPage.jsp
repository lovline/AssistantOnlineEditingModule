<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	$(function(){
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/errorbg.jpg)");
	});
</script>

<div class="col-md-6 col-md-offset-2">
	<h2>对不起 , 登陆失败 --- login failuer</h2>
	<hr>
	<ul class="pager" style="float: right">
		<li><a href="index.jsp">&larr;首页 index</a></li>
	</ul>
	<div>
		<a href="login.jsp" class="btn btn-success btn-lg">重新登录</a>
	</div>
	
</div>
		

<%@ include file="footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>
<script type="text/javascript">
	$(function(){
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/loginbg.jpg)");
		$('a:contains("university")').css("color","blue").css("font-size","18px");
		//$("#xiaohui").fadeTo("fast","0.5"); 行不通
	
		//表单前验证javaScript方式
		$("#submitLogin").click(function(){
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;
			if (username == "" || username == null) {
				$("#username").attr("placeholder","用户名不能为空");
				return false;
			} else if(password == "" || password == null){
				$("#password").attr("placeholder","密码不能为空");
				return false;
			} else {
				return true;
			}
		});	
	});	
</script>
<div class="page-header col-md-7 col-md-offset-2">
  <h1>  西电智能教育辅导信息在线编辑   <small>登陆入口</small></h1>
</div>
<c:choose>
	<c:when test="${ is_logged }">
		<div class="col-md-7 col-md-offset-2">	
			<div align="right" style="float: right;">
				<a class="btn btn-primary" href="login" role="button" >注销logout</a>
			</div>
			<div>
				欢迎您 ，<font color="#FD5F2F" size="5">${ username }</font>&nbsp;&nbsp;! &nbsp;您已经成功登录 。
			</div>
			 <ul class="pager" style="opacity: 0.7">
				<li><a href="index.jsp">&larr;首页 index</a></li>
			 </ul>
		</div>
		<br>
	</c:when>
	<c:otherwise>
			<div class="row">
			<div class='col-md-8 col-md-offset-2'>
				<form class="form-horizontal" action="login" method="post" id="formLogin">
					<div class="form-group">
						<label for="email" class="col-md-2 control-label">user_name</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="username"
								name="username" placeholder="username">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-md-2 control-label">pass_word</label>
						<div class="col-sm-8">
							<input type="password" class="form-control" id="password"
								name="password" placeholder="password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox" name="remember"> <!-- checked选中 -->
									记住我的登录
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary btn-lg" id="submitLogin">登录</button>
							<ul class="pager" style="opacity: 0.7">
								<li><a href="index.jsp">&larr;首页 index</a></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
		</div>
	</c:otherwise>
</c:choose>

<%@ include file="footer.jsp" %>
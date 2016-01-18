<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>
<script type="text/javascript">
	$(function(){
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/bg.jpg)");
		$('a:contains("university")').css("color","blue").css("font-size","18px");
		//$("#xiaohui").fadeTo("fast","0.5"); 行不通
	});
</script>
<div class="page-header col-md-7 col-md-offset-2">
  <h1>  西电智能教育辅导信息在线编辑   <small>登陆入口</small></h1>
</div>
<div class="row">
	<div class='col-md-8 col-md-offset-2'>
		<form class="form-horizontal" method="post">
			<div class="form-group">
				<label for="email" class="col-md-2 control-label">user_name</label>
				<div class="col-sm-8">
					<input type="email" class="form-control" id="username"
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
						<label> <input type="checkbox" name="remember" checked>
							记住我的登录
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary btn-lg">登录</button>
				</div>
			</div>
		</form>
	</div>
</div>


<%@ include file="footer.jsp" %>
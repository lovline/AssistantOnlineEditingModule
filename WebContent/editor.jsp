<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="graduation.xidian.com.UserBean"%>
<%@ include file="header.jsp" %>

<!-- 回到顶部功能 -->
<div class="go-top">
     <div class="arrow"></div>
     <div class="stick"></div>
</div>
<style type="text/css">
	div.go-top {
	    display: none;
	    opacity: 0.6;
	    z-index: 999999;
	    position: fixed;
	    bottom: 60px;
	    left: 90%;
	    margin-left: 40px;
	    border: 1px solid #a38a54;
	    width: 38px;
	    height: 38px;
	    background-color: #eddec2;
	    border-radius: 3px;
	    cursor: pointer;
	}
	div.go-top:hover {
	    opacity: 1;
	    filter: alpha(opacity=100);
	}
	div.go-top div.arrow {
	    position: absolute;
	    left: 10px;
	    top: -1px;
	    width: 0;
	    height: 0;
	    border: 9px solid transparent;
	    border-bottom-color: #cc3333;
	}
	div.go-top div.stick {
	    position: absolute;
	    left: 15px;
	    top: 15px;
	    width: 8px;
	    height: 14px;
	    display: block;
	    background-color: #cc3333;
	    -webkit-border-radius: 1px;
	    -moz-border-radius: 1px;
	    border-radius: 1px;
	}
</style>
<script type="text/javascript">
$(function() {
    $(window).scroll(function() {
        if ($(window).scrollTop() > 100)
            $('div.go-top').show();
        else
            $('div.go-top').hide();
    });
    $('div.go-top').click(function() {
        $('html, body').animate({scrollTop: 0}, 800);
    });
});
</script>
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
		document.title = "在线编辑";
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/editorbg.jpg)");
		$("#welcome").css("opacity",0.7);
// 		$('a:contains("university")').text("")
// 		.append("<img style='width:150px' src='${pageContext.request.contextPath}/images/logo1.png'></img>");
		$('.row div strong').css("color","white");
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
		<li><a href="index.jsp" class="btn-lg">&larr;首页 index</a></li>
</ul>

<!-- 这个是刚开始的界面 需要在调用后面的时候隐藏起来的 还要加入一些显示的动画的 ===done-->
<div id="beforeEditor" style="<%=(session.getAttribute("numVisited"))==null ? "display: block" : "display: none" %>">
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

<div id="realEditor" style="<%=(session.getAttribute("numVisited"))==null ? "display: none" : "display: block" %>">
	
	<div class="col-md-8 col-md-offset-2">
		<p class="navbar-text"></p>
		<p class="navbar-text"></p>
	</div>
	<div class="col-md-5 col-md-offset-7">
		<c:choose>
			<c:when test="${ is_logged }">
						welcome <font color="blue">${ username } </font>
				<a target="_blank"
					href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=GCkoLyEhLywoIC1YaWk2e3d1"
					style="text-decoration: none;"><img src="images/ico_mailme.png" /></a>
			</c:when>
			<c:otherwise>welcome friend! </c:otherwise>
		</c:choose>
		<img src="images/head.jpg" alt="远方的岛和星期五" class="img-rounded">
	</div>

	<div class="col-md-8 col-md-offset-2" style="margin-top: 10px;">
		<img src="images/ckeditor.jpg" title="请点击使用在线编辑模块" data-toggle="collapse"
			data-target="#demo" style="opacity:0.7"></img>
		<div id="demo" class="collapse">
			<form action="editor" method="post">
				<div class="row" id="hidden_editor">
						<div class="form-group">
							<label for="exampleInputEmail1"><h3>my_editor&nbsp;&nbsp;&nbsp;</h3></label>
							<!-- 作为div弹出层的部分 是bootstrap jQuery插件所自带的功能 很好用。 -->
							<a data-toggle="modal" data-target="#exampleModal"
								data-whatever="@mdo"> <font size="3">{-- 简单文本快速编辑 --}</font></a>
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="exampleModalLabel">new
												editor ~</h4>
										</div>
										<div class="modal-body">
											<div class="form-group">
												<label for="recipient-name" class="control-label">emergency
													contact person@</label> <input type="text" class="form-control"
													id="recipient-name" name="emergency_person">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">emergency
													message:</label>
												<textarea class="form-control" id="message-text"
													name="editor2" rows="7" placeholder="留言内容不能超过140字"></textarea>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">close</button>
											<button type="submit" class="btn btn-primary">save
												editor</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<textarea id="editor1" name="editor1"></textarea>
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
			</form>
		</div>
		<hr>
		<img src="images/mathjax.jpg" title="请点击查看数学展示编辑模块" data-toggle="collapse"
			data-target="#demo2" style="opacity:0.7;margin-bottom:10px"></img>
		<div id="demo2" class="collapse"> <!-- class="collapse in"指的是默认打开折叠层 -->
			<div style="margin-top: 10px;margin-bottom:10px; background-color: #F1F1F1;">
					<font size="4" color="black">
					【 $1 \over 3$ 】
					【 $\sqrt[n]{3}$ 】
					【 $\alpha$ 】
					【 $\Gamma$ 】
					【 $\delta$ 】 <br><br>
					【 $\sideset{^1_2}{^3_4}\bigotimes$ 】
					【 $\left. \frac{{\rm d}u}{{\rm d}x} \right| _{x=0}$ 】
					【 $\vec{a} \cdot \vec{b}=0$ 】
					【 $\int_0^1 x^2 {\rm d}x$ 】<br>
					【 $\lim_{n \rightarrow +\infty} \frac{1}{n(n+1)}$ 】
					【 $\sum_{i=0}^n \frac{1}{i^2}　和　\prod_{i=0}^n \frac{1}{i^2}$ 】
					【 $\overbrace{a+\underbrace{b+c}_{1.0}+d}^{2.0}$ 】<br>
					【 $x^{y^z}=(1+{\rm e}^x)^{-2xy^w}$ 】
					【 $x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ 】
					【 $f(x,y,z) = 3y^2z \left( 3+\frac{7x+5}{1+y^2} \right)$ 】<br><br>
					【 $f(x_1,x_2,\ldots,x_n) = x_1^2 + x_2^2 + \cdots + x_n^2$ 】
					【 $J_\alpha(x) = \sum_{m=0}^\infty \frac{(-1)^m}{m! \Gamma (m + \alpha + 1)} {\left({ \frac{x}{2} }\right)}^{2m + \alpha}$ 】
					</font>
			</div>
		</div>
		<hr>
		<img src="images/LaTex.jpg" title="点击使用数学公式编辑模块" data-toggle="collapse" data-target="#demo3"></img>
		<div id="demo3" class="collapse">
			<iframe src="http://www.codecogs.com/latex/eqneditor.php" width="780px" height="500px" ></iframe>
		</div>
		<hr>
	</div>
	
	
</div>

<%@ include file="footer.jsp" %>
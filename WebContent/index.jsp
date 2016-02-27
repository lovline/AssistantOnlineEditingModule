<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="graduation.xidian.com.UserBean"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	$(function(){
		document.title = "毕业设计导航";
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/indexbg.jpg)");
		$("#xidian_index").css("opacity",0.7);
	});
</script>

	<div class="row" id="clearFloat">
		<div class="col-md-8 col-md-offset-2">
			<div align="right" style="float: right;">
				<address>
				  <strong>xi'dian university address</strong><br>
				  	&nbsp;&nbsp;266号, 兴隆段<br>
				   	&nbsp;&nbsp;西沣路, 长安区<br>
				    &nbsp;&nbsp;西安市, 陕西省, China<br>
				    &nbsp;&nbsp;<abbr title="Phone">P:</abbr> <a href="http://www.xidian.edu.cn/">http://www.xidian.edu.cn/</a>
				</address>
			</div>
			<br>
			<h1>Mask all lists here !<small>&nbsp;&nbsp;&nbsp;you have the chance</small></h1>
			<hr style="opacity:0.4">
			<div id="xidian_index">
				<div class="alert alert-success" role="alert"><a href="xidianViews.jsp"><font size="4px">1.大美西电(xi'dian views)</font></a></div>
				<div class="alert alert-info" role="alert"><a href="login.jsp"><font size="4px">2.XDer 登陆首页(login page)</font></a></div>
				<div class="alert alert-warning" role="alert"><a href="message.jsp"><font size="4px">3.寄语堂--说出你的故事(message board)</font></a></div>
				<div class="alert alert-danger" role="alert"><a href="editor.jsp"><font size="4px">4.在线编辑页面(primary page)</font></a></div>
			</div>
		</div>
	</div>
	



<%@ include file="footer.jsp" %>
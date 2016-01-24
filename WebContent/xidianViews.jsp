<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	$(function(){
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/viewbg.jpg)");
	});
</script>
<!-- 有一个问题是：这些链接只能属于西电内网，外网访问不到，还需要后续修改。 -->
<div class="col-md-10 col-md-offset-1">
	<ul class="breadcrumb">
		<li><font size="5px"><a href="index.jsp">首页  index</a>&nbsp;&nbsp;<span class="divider">/</span></font></li>
		<li class="active"><font size="4px">西军电 xi'dian views</font></li>
	</ul>
	
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}/images/xdfg.jpg"
					alt="西电校园风光" title="西电校园风光">
				<div class="caption">
					<h3>campus scenery</h3>
					<p>It is the most beautiful university .</p>
					<p><a href="http://www.xidian.edu.cn/xxgk/xydy/xyfj.htm" class="btn btn-primary" role="button">校园风光</a></p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}/images/jsfc.jpg"
					alt="西电教师风采" title="西电教师风采">
				<div class="caption">
					<h3>teachers' elegant</h3>
					<p>There are the most excellent team of teachers</p>
					<p><a href="http://web.xidian.edu.cn/" class="btn btn-primary" role="button">教师风采</a></p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}/images/xdxs.jpg"
					alt="西电辉煌校史" title="西电辉煌校史">
				<div class="caption">
					<h3>glorious campus schoolyard</h3>
					<p>It was one of the world-famous universities .</p>
					<p><a href="http://www.xidian.edu.cn/xxgk/hhxs/lsqzdzsyt.htm" class="btn btn-primary" role="button">辉煌校史</a></p>
				</div>
			</div>
		</div>
	</div>
</div>




<%@ include file="footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	$(function(){
		document.title = "大美西电";
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
					
					<!-- 作为div弹出层的部分 是bootstrap jQuery插件所自带的功能 很好用。 -->
					<p><a class="btn text-center btn-primary" data-toggle="modal" href="#myModal"
						data-keyboard="true" data-backdrop="true">校园风光</a></p>
					<div class="modal" id="myModal" style="width: 750px;height: 550px;margin: auto;" >
						<div class="modal-header">
							<a class="close" data-dismiss="modal">×</a>
						</div>
						<div class="modal-body">
						
							<!-- 用旋转木马的方式来呈现西电照片 -->
							<div id="myCarousel" class="carousel slide">
								<!-- Carousel items -->
								<div class="carousel-inner">
									<div class="active item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg01.jpg">
									</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg02.jpg">
										</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg03.jpg">
									</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg04.jpg">
										</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg05.jpg">
										</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg06.jpg">
										</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg07.jpg">
										</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg08.jpg">
									</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg09.jpg">
									</div>
									<div class="item">
										<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg10.jpg">
										</div>
								</div>
								<!-- Carousel nav -->
								<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
								<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
							</div>

						</div>
						<div class="modal-footer">
							<a href="" class="btn"><font color="white">close</font></a>
						</div>
					</div>
				
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
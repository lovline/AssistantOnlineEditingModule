<%@ include file="header.jsp" %>

<!-- 	<div id="carousel1" class="carousel slide"> -->
<!-- 			<div class="carousel-inner"> -->
<!-- 				<div class="item active"> -->
<%-- 					<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg01.jpg"> --%>
<!-- 					<div class="carousel-caption">图片一</div> -->
<!-- 				</div> -->
<!-- 				<div class="item active"> -->
<%-- 					<img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg02.jpg"> --%>
<!-- 					<div class="carousel-caption">图片一</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<a href="#carousel1" data-slide="prev" class="left carousel-control">,</a> -->
<!-- 			<a href="#carousel1" data-slide="next" class="right carousel-control">.</a>		 -->
<!-- 		</div> -->

<div id="myCarousel" class="carousel slide">
	<!-- Carousel items -->
	<div class="carousel-inner">
		<div class="active item"><img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg02.jpg"></div>
		<div class="item"><img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg01.jpg"></div>
		<div class="item"><img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg04.jpg"></div>
	</div>
	<!-- Carousel nav -->
	<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
	<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>


<%@ include file="footer.jsp" %>
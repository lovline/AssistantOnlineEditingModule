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

<%-- <div id="myCarousel" class="carousel slide">
	<!-- Carousel items -->
	<div class="carousel-inner">
		<div class="active item"><img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg02.jpg"></div>
		<div class="item"><img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg01.jpg"></div>
		<div class="item"><img alt="fg01" src="${pageContext.request.contextPath}/images/xidianViews/fg04.jpg"></div>
	</div>
	<!-- Carousel nav -->
	<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
	<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div> --%>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">New message</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="control-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>

<%@ include file="footer.jsp" %>
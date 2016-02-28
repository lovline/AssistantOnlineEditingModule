<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<!-- 旋转木马测试 -->
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

<!-- 悬浮窗测试 -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button>
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
</div> -->

<!-- 测试折叠内容的代码 -->
<!-- 	<button class="btn btn-danger" data-toggle="collapse" data-target="#demo">  简单手风琴效果</button> -->
<div class="col-md-8 col-md-offset-2">
	<div class="alert alert-success" role="alert">click the photo and do what you want !</div>
	<img src="images/ckeditor.jpg" title="在线编辑模块" data-toggle="collapse" data-target="#demo"></img>
	<div id="demo" class="collapse"> 这尼玛是什么鬼。。</div>
	<hr><hr>
	<div class="alert alert-success" role="alert">click the photo and do what you want !</div>
	<img src="images/mathjax.jpg" title="数学公式编辑模块" data-toggle="collapse" data-target="#demo2"></img>
	<div id="demo2" class="collapse"> 1245jkde。。</div>
</div>

<!-- 回到顶部测试 -->
<button class="glyphicon glyphicon-open btn-lg" aria-hidden="true" aria-label="返回顶部"></button>

  
<!-- <!-- 网页中显示数学公式测试  这里使LaTex语法编写
$$1 \over 3$$
$$\sqrt[n]{3}$$
$$\alpha$$
$$\Gamma$$
$$\delta$$
$$\sideset{^1_2}{^3_4}\bigotimes$$
$$\left. \frac{{\rm d}u}{{\rm d}x} \right| _{x=0}$$
$$\vec{a} \cdot \vec{b}=0$$
$$\int_0^1 x^2 {\rm d}x$$
$$\lim_{n \rightarrow +\infty} \frac{1}{n(n+1)}$$
$$\sum_{i=0}^n \frac{1}{i^2}　和　\prod_{i=0}^n \frac{1}{i^2}$$
$$\overbrace{a+\underbrace{b+c}_{1.0}+d}^{2.0}$$
$$x^{y^z}=(1+{\rm e}^x)^{-2xy^w}$$
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
$$f(x,y,z) = 3y^2z \left( 3+\frac{7x+5}{1+y^2} \right)$$
$$f(x_1,x_2,\ldots,x_n) = x_1^2 + x_2^2 + \cdots + x_n^2$$
$$J_\alpha(x) = \sum_{m=0}^\infty \frac{(-1)^m}{m! \Gamma (m + \alpha + 1)} {\left({ \frac{x}{2} }\right)}^{2m + \alpha}$$
 --> 


<%@ include file="footer.jsp" %>
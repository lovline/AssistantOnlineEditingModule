<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
	$(function(){
		//留言板的背景照片用手机上面那张雪天的。晚上传。
	});
</script>
<div class="col-md-8 col-md-offset-2">
	<h1>Message Page</h1>
	<form action="message" method="post">
		message...
		<button type="submit">submit</button>
	

		<!-- 作为div弹出层的部分 是bootstrap jQuery插件所自带的功能 很好用。 -->
		<a class="btn text-center" data-toggle="modal" href="#myModal"
			data-keyboard="true" data-backdrop="true">点击"ESC关闭，遮蔽背景"演示</a>
		<div class="modal" id="myModal" style="width:600px;height:400px;margin:auto;" >
			<div class="modal-header">
				<a class="close" data-dismiss="modal">×</a>
				<h3><font color="green">leave your messages .</font></h3>
			</div>
			<div class="modal-body">
				<textarea rows="5" cols="78" placeholder="提交信息不得多于140字..."></textarea>
			</div>
			<div class="modal-footer">
				<a href="" class="btn">close</a> <a href="message" class="btn">save message</a>
			</div>
		</div>


	</form>
</div>



<%@ include file="footer.jsp" %>
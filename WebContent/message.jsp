<%@page import="graduation.xidian.com.MessageBean"%>
<%@page import="graduation.xidian.com.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

<style type="text/css">
	#message_table
	{
		color:white;
	}
	#message_header, #message_number
	{
		color:red;
	}
</style>
<script type="text/javascript">
	var flag = true;
	$(function(){
		$("body").css("background-image","url(${pageContext.request.contextPath}/images/messagebg.jpg)");
		$("#show_message").click(function(){
			if(flag){
				flag = false;
				$("#show_message").text("show messages");
				$("#message_table").hide();
			}else{
				flag = true;
				$("#show_message").text("hide messages");
				$("#message_table").show();
			}
		});
	});
</script>
<div class="col-md-8 col-md-offset-2">
	<h2>Message Board&nbsp;&nbsp;&nbsp;&nbsp;
		<small>
			<!-- 作为div弹出层的部分 是bootstrap jQuery插件所自带的功能 很好用。 -->
			<a class="btn text-center" data-toggle="modal" href="#myModal"
				data-keyboard="true" data-backdrop="true"><font color="#0180DD"><font size="4">{-- 查看留言浮窗 --}</font></font></a>
		</small>
	</h2>
	<form action="message" method="post">
		<div class="alert col-md-6">
			<a class="close" data-dismiss="alert"></a> <strong>在这里</strong>
			请写下你想要说的话。
		</div>
		<ul class="pager" style="opacity: 0.7">
			<li><a href="index.jsp" class="btn-lg">&larr;首页 index</a></li>
		</ul>
		<div>
			<textarea rows="7" cols="90" name="message1" placeholder="提交信息不得多于140字..."></textarea>
		</div>
		<div class="alert col-md-10"></div>
		<div>
			<button type="submit" class="btn btn-success">提交你的留言save messages</button>
		</div>
		<br>
	</form>
	
	<!-- 悬浮窗的呈现部分。 -->
	<div class="modal" id="myModal" style="width:900px;height:500px;margin:auto;">
		<div class="modal-header">
			<a class="close" data-dismiss="modal">×</a>
			<button id="show_message" class="btn btn-info">hide messages</button>
		</div>
		<div class="modal-body">
			<!-- 这是显示留言内容的部分div -->
			<%
				MessageBean messageBean = new MessageBean();
				List<MessageBean> list = messageBean.getFromMysqlMessage();
				request.setAttribute("message_list", list);
			%>
			<div>	
				<table class="table table-condensed" id="message_table">
					<tr id="message_header">
						<td>message_id</td>
						<td>message_owner</td>
						<td>message_content</td>
						<td>message_datetime</td>
					</tr>
					<c:forEach items="${ requestScope.message_list }" var="list_message" varStatus="status">
						<tr>
							<td id="message_number">${ status.count }</td>
							<td>${ list_message.message_user_name }</td>
							<td>${ list_message.getMessage() }</td>
							<td>${ list_message.getMessage_time() }</td>
						</tr>
					</c:forEach>	
				</table>
			</div>			
		</div>
		<div class="modal-footer">
			<a href="" class="btn btn-primary">close</a>
		</div>
	</div>

</div>



<%@ include file="footer.jsp" %>
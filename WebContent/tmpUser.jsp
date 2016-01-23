<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

	<h3>login failuer</h3>
	<br>
	<a href="editor.jsp">临时用户登录</a>
	
		<p> ${ is_logged } </p>
		<c:if test="${ is_logged }">
			<button>@#$%^&*()</button>
		</c:if>


<%@ include file="footer.jsp" %>
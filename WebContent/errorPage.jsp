<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="header.jsp" %>

	<h3>login failuer</h3>
	<br>
	<ul class="pager">
		<li><a href="index.jsp">&larr;首页 index</a></li>
	</ul>
		<p> ${ is_logged } </p>
		<c:if test="${ is_logged }">
			<button>@#$%^&*()</button>
		</c:if>


<%@ include file="footer.jsp" %>
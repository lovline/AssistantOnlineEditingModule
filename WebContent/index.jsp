<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript call ckeditor</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css"></link>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	
	
</script>
</head>
<body>
	 <form method="post">
        <p>
            My Editor:<br />
            <textarea id="editor1" name="editor1">&lt;p&gt;Initial value.&lt;/p&gt;</textarea>
            <script type="text/javascript">
                CKEDITOR.replace( 'editor1' );
            </script>
        </p>
        <p>
            <input type="submit" />
        </p>
    </form>
</body>
</html>
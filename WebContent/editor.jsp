<%@ include file="header.jsp" %>
<script type="text/javascript">
	$(function(){
		$('a:contains("university")').text("")
		.append("<img style='width:150px' src='${pageContext.request.contextPath}/images/logo1.png'></img>");
	});
</script>
 <form method="post">  
	  <div class="row">
	  		<div class="col-md-8 col-md-offset-2">
				<div class="form-group">
					<label for="exampleInputEmail1"><h3>my_editor_theme</h3></label>
					<input type="email" class="form-control "
						id="exampleInputEmail3" placeholder="enter your subject...">
				</div>
				<hr>
				<textarea id="editor1" name="editor1"><span style="font-size:16px;">Initial value...</span></p></textarea>
	            <script type="text/javascript">
	                CKEDITOR.replace( 'editor1' );
	            </script>
	        	<div><button type="button" class="btn btn-primary">submit my editor</button></div>
	      
			      	
			      	
				<div>
					<p>${ request.getAttribute("userBean").username }</p>
				</div>
				
				<c:if test='session.getAttribute("is_logged")'>
					<button>@#$%^&*()</button>
				</c:if>


	      	
	      
	      </div>
	</div>
 </form>


<%@ include file="footer.jsp" %>
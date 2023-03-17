<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h2>Add a new note:</h2>

	<!-- This is add form --> 
		<form action="SaveNoteServlet" method="post">
		
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input
					required
					name="title"
				 	type="text"
				  	class="form-control" 
				 	id="title"
				 	aria-describedby="emailHelp" 
				 	placeholder="Enter title here" />
			</div>
			
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				required
				name="content"
				id="content" 
				placeholder="Enter your content" 
				class="form-control"
				style="height:250px"
				></textarea>
			</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add Your Note</button>
		</div>
			
		</form>
	</div>
</body>
</html>
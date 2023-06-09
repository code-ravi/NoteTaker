<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Your Notes : Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container">
		<%@include file="navbar.jsp"%>
	<h1>Edit your note</h1>
	<br>
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	s.close();
	%>
	
	<!-- This is update form -->
			<form action="UpdateServlet" method="post">
			<input value="<%= note.getId()%>" name="noteId" type="hidden"/>
		
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input
					required
					name="title"
				 	type="text"
				  	class="form-control" 
				 	id="title"
				 	aria-describedby="emailHelp" 
				 	placeholder="Enter title here" 
				 	value= "<%= note.getTitle() %>"
				 	/>
			</div>
			
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				required
				name="content"
				id="content" 
				placeholder="Enter your content" 
				class="form-control"
				style="height:250px"><%= note.getContent()%>
				</textarea>
			</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>
		</form>
	</div>
</body>
</html>
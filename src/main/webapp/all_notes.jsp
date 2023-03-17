<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>

<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>

<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h2 class="text-uppercase">All Notes :</h2>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();

				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top pl-4 pt-4 mx-auto" style="max-width: 70px"
						src="img/notes.png" alt="Card image cap">
					<div class="card-body p-5">
						<h5 class="card-title text-center"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p class="text-right text-primary"><strong>Added/Edited date: <%= note.getAddedDate()%></strong></p>
						<div class="container text-center mt-3">
							<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a> 
							<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger ml-3">Delete</a>
						</div>

					</div>
				</div>

				<%
				}

				s.close();
				%>
			</div>
		</div>



	</div>


</body>
</html>
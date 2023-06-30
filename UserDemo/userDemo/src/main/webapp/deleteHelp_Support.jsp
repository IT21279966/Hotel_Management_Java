<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Details</title>
</head>
<body>
	
		<!-- Catch the data that passed from help_success url -->
	<%
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
	%>
	
	<h1>Delete Your Inserted Data</h1>
	
	<!-- Display Caught data -->
	<form action = "deletenow" method="post">
		ID <input type="text" name = "userid" value="<%= userid %>" readonly><br>
		Name <input type="text" name = "name" value="<%= name %>" readonly><br>
		Email <input type="text" name = "email" value="<%= email %>" readonly><br>
		Inquiry <input type="text" name = "inquiry" value="<%= inquiry %>" readonly><br>
		
		<input type="submit" name = "submit" value="Delete My Data"><br>
		
	</form>
	
	
</body>
</html>
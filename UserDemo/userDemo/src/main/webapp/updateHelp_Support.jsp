<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Help&Support</title>
</head>
<body>
	
	<!-- Catch the data that passed from help_success url -->
	<%
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
	%>
	
	<!-- Display Caught data -->
	<form action = "updatenow" method="post">
		ID <input type="text" name = "userid" value="<%= userid %>" readonly><br>
		Name <input type="text" name = "name" value="<%= name %>"><br>
		Email <input type="text" name = "email" value="<%= email %>"><br>
		Inquiry <input type="text" name = "inquiry" value="<%= inquiry %>"><br>
		
		<input type="submit" name = "submit" value="Update"><br>
		
	</form>
</body>
</html>
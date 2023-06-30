<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to hotel</title>
</head>
<body>
	
	<c:forEach var="use" items = "${userDetails}">
	<h1>Hello,</h1>
	<h1>${use.name}</h1>
	</c:forEach>
	
	<!-- Display Logged user details -->
	
	<table border = "1">
	<c:forEach var="use" items = "${userDetails}">
		
		<tr>
		<td>User ID</td>
		<td>${use.userid}</td> <!-- by . access user class and call getUserid() method--> 		
	</tr>
	
	<tr>
		<td>User's Name</td>
		<td>${use.name}</td>
	</tr>
	
	<tr>
		<td>User Email</td>
		<td>${use.uEmail}</td>
	</tr>
	
	<tr>
		<td>User Mobile Number   </td>
		<td>${use.uPhone}</td>
	</tr>	
		
	<tr>
		<td>User's user name</td>
		<td>${use.uname}</td>
	</tr>	
		

	</c:forEach>
	</table>
	<br>
	
	<!-- Navigate to home page -->	
		
	<a href ="Home_afterlog.jsp">
		<button type="button">Go to home page</button>
	</a>
</body>
</html>
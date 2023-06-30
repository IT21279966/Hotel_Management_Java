<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
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
</body>
</html>
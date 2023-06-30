<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful</title>
</head>
<body>
	
	<h1>Your response is recorded<br>
		Thank You		
	</h1>
	<br>
	
<table border = "1">
	<c:forEach var="supHelp" items = "${displayDetails}">
	
	<c:set var="userid" value="${supHelp.userid}"/>
	<c:set var="name" value="${supHelp.name}"/>
	<c:set var="email" value="${supHelp.email}"/>
	<c:set var="inquiry" value="${supHelp.inquiry}"/>
	
		
	<tr>
		<td>User ID</td>
		<td>${supHelp.userid}</td> <!-- by . access user class and call getUserid() method--> 		
	</tr>
	
	<tr>
		<td>User's Name</td>
		<td>${supHelp.name}</td>
	</tr>
	
	<tr>
		<td>User Email</td>
		<td>${supHelp.email}</td>
	</tr>	
		
	<tr>
		<td>User's Inquiry</td>
		<td>${supHelp.inquiry}</td>
	</tr>	
		

	</c:forEach>
	</table>
	
	<!-- Connect to updateHelp_Support.jsp via url-->
	
	<c:url value="updateHelp_Support.jsp" var="updateSupport">
		<c:param name="userid" value = "${userid}"/>
		<c:param name="name" value = "${name}"/>
		<c:param name="email" value = "${email}"/>
		<c:param name="inquiry" value = "${inquiry}"/>
	</c:url>
	
	<!-- Ok button -->
	<form action = "help&sup.jsp" method = post">
		<input type="submit" name="submit" value="Ok.">
	</form>
	
	<br>
	
	<!-- Update Now button >>> Navigate to updateHelp_Support.jsp page-->
	<a href="${updateSupport}">
	<input type="button" name="update" value="Update Now">
	</a>
	
	<br>
	
	<!-- Delete data button -->
	<c:url value="deleteHelp_Support.jsp" var = "deleteSupport">
		<c:param name="userid" value="${userid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="inquiry" value="${inquiry}"/>
	</c:url>
	
	<!-- Delete data button >>> Navigate to deleteHelp_Support.jsp page-->
	<a href="${deleteSupport}">
	<input type="button" name="delete" value="Delete data">
	</a>
	

	
</body>
</html>
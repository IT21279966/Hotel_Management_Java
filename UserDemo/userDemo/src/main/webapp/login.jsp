<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Login Page</title>


<!-- *************************CSS**************************** -->

<style>

	body {
	background-color: #ADD8E6;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;

}

*{
    font-family: cursive;
    box-sizing: padding-box;

}

form {

    width: 1000px;
    border: 3px solid rgb(177, 142, 142);
    padding: 20px;
    background-color: #DF823B;
    border-radius: 20px;

}

h2 {

    text-align: center;
    margin-bottom: 40px;

}

input {

    display: block;
    border: 2px solid #ccc;
    width: 95%;
    padding: 10px;
    margin: 10px auto;
    border-radius: 5px;

}

label {

    color: white;
    font-size: 18px;
    padding: 10px;

}

button {

    float: right;
    background-color: #22A7E1;
    padding: 10px 15px;
    color: white;
    border-radius: 5px;
    margin-right: 10px;
    border: none;

}

button:hover{

    opacity: 0.6;

}

.error {

   background: #F2DEDE;
   color: #0c0101;
   padding: 10px;
   width: 95%;
   border-radius: 5px;
   margin: 20px auto;

}

h1 {

    text-align: center;
    color: rgb(134, 3, 3);

}

a {

    float: right;
    background: rgb(183, 225, 233);
    padding: 10px 15px;
    color: #fff;
    border-radius: 10px;
    margin-right: 10px;
    border: none;
    text-decoration: none;

}

a:hover{

    opacity: 0.7;

}
</style>
</head>
<body>
	
	<h1>Login Page</h1>
	
	
	<!-- Log-in form -->
	
	<form action="Log" method="post">
		User Name <input type="text" name="uid" placeholder="Enter your username" required><br>
		Password <input type="password" name="pass" placeholder="Enter your password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 5 or more characters" required><br>
		<input type="submit" name="submit" value="Login">
	</form>
	

</body>
</html>
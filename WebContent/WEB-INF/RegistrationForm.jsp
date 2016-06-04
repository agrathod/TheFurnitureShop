<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>

<spring:url value="/resources/css/style.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />
<body>

	<div>
		<h1 class="title" align="left">The Furniture Shop</h1>
		<a href="/TheFurnitureShop/loginForm">

			<button class="login" name="btn_login" type="button">Login</button>
		</a>

		<div class="clearClass"></div>
	</div>

	<ul>
		<li><a href="/TheFurnitureShop/">Home</a></li>
		<li><a href="/TheFurnitureShop/About">About</a></li>
	</ul>


	<h1>Registration Form</h1>

	<form action="/TheFurnitureShop/submitRegistrationForm" method="post">
		<p>
			First Name: <input type="text" name="firstName" />
		</p>
		<p>
			Last Name: <input type="text" name="lastName" />
		</p>
		<p>
			User Name: <input type="text" name="userName" />
		</p>
		<p>
			Password: <input type="password" name="password" />
		</p>
		<p>
			Street: <input type="text" name="street" />
		</p>
		<p>
			City: <input type="text" name="city" />
		</p>
		<p>
			State: <input type="text" name="state" />
		</p>
		<p>
			Zip Code: <input type="text" name="zipcode" />
		</p>
		<input type="submit" value="Complete Registration" />
	</form>

	<footer class="pageFooter">
		<h3 align="center">© The Furniture Shop 2016</h3>
	</footer>
</body>
</html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
</head>

<spring:url value="/resources/css/style.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />
<body>
	<div>
		<h1 class="title" align="left">The Furniture Shop</h1>
		<a href="/TheFurnitureShop/registrationForm"><button
				class="register" type="button">Register</button> </a> <a
			href="/TheFurnitureShop/loginForm">

			<button class="login" name="btn_login" type="button">Login</button>
		</a>

		<div class="clearClass"></div>
	</div>

	<ul>
		<li><a href="/TheFurnitureShop/">Home</a></li>
		<li><a href="/TheFurnitureShop/About">About</a></li>
	</ul>

	<h1 align="center">About</h1>

	<p align="center">At The Furniture Shop, we provide high quality
		products with the most affordable prices. OuAtr prime goal is customer
		satisfaction and we provide them with a variety of products to match
		their needs.</p>
	<p align="center">We have talented staff which understand the needs
		of our customers and provides the best possible assistance to them.</p>

	<footer class="pageFooter">
		<h3 align="center">© The Furniture Shop 2016</h3>
	</footer>

</body>
</html>
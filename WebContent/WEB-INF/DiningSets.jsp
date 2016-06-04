<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dining Sets</title>
</head>
<spring:url value="/resources/css/style.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />
<body>
	<div>
		<h1 class="title" align="left">The Furniture Shop</h1>
		<a href="/TheFurnitureShop/registrationForm"><button
				class="register" type="button">Register</button> </a>

		<c:choose>
			<c:when test="${username == null}">
				<a href="/TheFurnitureShop/loginForm">
					<button class="login" name="btn_login" style="visibility: visible"
						type="button">Login</button>
				</a>

				<a href="/TheFurnitureShop/logout">
					<button class="login" name="btn_logout" style="visibility: hidden"
						type="button">Logout</button>
				</a>

				<br />
			</c:when>
			<c:otherwise>
				<a href="/TheFurnitureShop/loginForm">
					<button class="login" name="btn_login" style="visibility: hidden"
						type="button">Login</button>
				</a>

				<a href="/TheFurnitureShop/logout">
					<button class="login" name="btn_logout" style="visibility: visible"
						type="button">Logout</button>
				</a>

			</c:otherwise>
		</c:choose>

		<div class="clearClass"></div>
	</div>

	<ul>
		<li><a href="/TheFurnitureShop/">Home</a></li>
		<li><a href="/TheFurnitureShop/About">About</a></li>
	</ul>
	<div>
		<h1 align="center" class="productsListCategory">Dining Sets</h1>
	</div>


	<div id="productsListDiv" class="productsListDiv">
		<div>
			<img
				src=" <spring:url value="/resources/images/diningsets/diningset.jpg" />"
				alt="table Icon">
		</div>
		<div>
			<div class="productDetails">
				<h2>Dining Set 1</h2>
				<article>
					<p>Our new range of dining sets combines simplicity, durability
						and comfort in one product. The new dining sets comes in various
						colors to match your dining rooms perfectly.</p>
					<p>The dining sets have comfortable chairs with a nice
						finishing touch to provide an overall attractive look to table.</p>
				</article>
			</div>
		</div>
	</div>

	<div id="productsListDiv" class="productsListDiv">
		<div>
			<img
				src=" <spring:url value="/resources/images/diningsets/diningset2.jpg" />"
				alt="table Icon">
		</div>
		<div>
			<div class="productDetails">
				<h2>Dining Set 2</h2>
				<article>
					<p>Our new range of dining sets combines simplicity, durability
						and comfort in one product. The new dining sets comes in various
						colors to match your dining rooms perfectly.</p>
					<p>The dining sets have comfortable chairs with a nice
						finishing touch to provide an overall attractive look to table.</p>
				</article>
			</div>
		</div>
	</div>
	<div id="productsListDiv" class="productsListDiv">
		<div>
			<img
				src=" <spring:url value="/resources/images/diningsets/diningset3.jpg" />"
				alt="table Icon">
		</div>
		<div>
			<div class="productDetails">
				<h2>Dining Set 3</h2>
				<article>
					<p>Our new range of dining sets combines simplicity, durability
						and comfort in one product. The new dining sets comes in various
						colors to match your dining rooms perfectly.</p>
					<p>The dining sets have comfortable chairs with a nice
						finishing touch to provide an overall attractive look to table.</p>
				</article>
			</div>
		</div>
	</div>

	<footer class="pageFooter">
		<h3 align="center">© The Furniture Shop 2016</h3>
	</footer>
</body>
</html>
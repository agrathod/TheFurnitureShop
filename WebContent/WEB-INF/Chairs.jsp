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
<title>Chairs</title>
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
		<h1 align="center" class="productsListCategory">Chairs</h1>
	</div>


	<div id="productsListDiv" class="productsListDiv">
		<div>
			<img
				src=" <spring:url value="/resources/images/chairs/chairs.jpg" />"
				alt="table Icon">
		</div>
		<div>
			<div class="productDetails">
				<h2>Chair 1</h2>
				<article>
					<p>Add a touch of sophisticated and professional look to your
						office or house with our large range of chairs. The chairs are
						highly adjustable and comes with steel or wooden finish.</p>
					<p>The chairs provides various other functionalities like gas
						lift, tension adjuster knob, hooded double wheel caster etc. to
						provide you with comfort and ease.</p>
				</article>
			</div>
		</div>
	</div>

	<div id="productsListDiv" class="productsListDiv">
		<div>
			<img
				src=" <spring:url value="/resources/images/chairs/chairs2.jpg" />"
				alt="table Icon">
		</div>
		<div>
			<div class="productDetails">
				<h2>Chair 2</h2>
				<article>
					<p>Add a touch of sophisticated and professional look to your
						office or house with our large range of chairs. The chairs are
						highly adjustable and comes with steel or wooden finish.</p>
					<p>The chairs provides various other functionalities like gas
						lift, tension adjuster knob, hooded double wheel caster etc. to
						provide you with comfort and ease.</p>
				</article>
			</div>
		</div>
	</div>
	<div id="productsListDiv" class="productsListDiv">
		<div>
			<img
				src=" <spring:url value="/resources/images/chairs/chairs3.jpg" />"
				alt="table Icon">
		</div>
		<div>
			<div class="productDetails">
				<h2>Chair 3</h2>
				<article>
					<p>Add a touch of sophisticated and professional look to your
						office or house with our large range of chairs. The chairs are
						highly adjustable and comes with steel or wooden finish.</p>
					<p>The chairs provides various other functionalities like gas
						lift, tension adjuster knob, hooded double wheel caster etc. to
						provide you with comfort and ease.</p>
				</article>
			</div>
		</div>
	</div>

	<footer class="pageFooter">
		<h3 align="center">© The Furniture Shop 2016</h3>
	</footer>
</body>
</html>
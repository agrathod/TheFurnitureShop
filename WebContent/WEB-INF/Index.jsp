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
<title>Home</title>
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

	<div id="centerDiv" class="centerProduct">
		<div>
			<img id="centerProductImage" class="centerProductImage"
				src=" <spring:url value="/resources/images/tables/table.jpg" />"
				alt="table Icon">
		</div>

		<div class="centerProductDetails">
			<h1 id="centerProductTitle">Table</h1>
			<a id="centerProductDescription">Accent your living rooms with out new range of Tables.</a>
		</div>

	</div>

	<div id="produtsDiv" class="productContainer">

		<div id="tables">
			<div>
				<a href="/TheFurnitureShop/tables"> <img
					src=" <spring:url value="/resources/images/tables/table.jpg" />"
					alt="table Icon">
				</a>
			</div>
			<div>
				<div class="productTitle">
					<p>Table</p>
				</div>
			</div>
		</div>
		<div id="chairs">
			<div>
				<a href="/TheFurnitureShop/chairs"> <img class="images"
					src="<spring:url value="/resources/images/chairs/chairs.jpg" />"
					alt="chair Icon">
				</a>
			</div>
			<div class="productTitle">
				<p>Chair</p>
			</div>
		</div>
		<div id="sofas">
			<div>
				<a href="/TheFurnitureShop/sofas"> <img class="images"
					src="<spring:url value="/resources/images/sofas/sofa.jpg" />"
					alt="sofa Icon">
				</a>
			</div>
			<div class="productTitle">
				<p>Sofa</p>
			</div>
		</div>
		<div id="diningsets">
			<div>
				<a href="/TheFurnitureShop/diningsets"> <img class="images"
					src="<spring:url value="/resources/images/diningsets/diningset.jpg" />"
					alt="diningset Icon">
				</a>
			</div>
			<div class="productTitle">
				<p>Dining Set</p>
			</div>
		</div>
	</div>

	<footer class="pageFooter">
		<h3 align="center">© The Furniture Shop 2016</h3>
	</footer>

	<script>
		setInterval(function() {
			imageChanger();
		}, 3000);

		function imageChanger() {
			var image = document.getElementById('centerProductImage');
			var title = document.getElementById('centerProductTitle');
			var description = document
					.getElementById('centerProductDescription');

			if (image.src
					.match("TheFurnitureShop/resources/images/tables/table.jpg")) {
				image.src = "resources/images/diningsets/diningset.jpg";
				title.innerHTML = "Dining Set";
				description.innerHTML = "Our new range of dining sets combines simplicity, durability and comfort in one product.";
			} else if (image.src
					.match("TheFurnitureShop/resources/images/diningsets/diningset.jpg")) {
				image.src = "resources/images/chairs/chairs.jpg";
				title.innerHTML = "Chairs";
				description.innerHTML = "Add a touch of sophisticated and professional look to your office or house with our large range of chairs.";
			} else if (image.src
					.match("TheFurnitureShop/resources/images/chairs/chairs.jpg")) {
				image.src = "resources/images/sofas/sofa.jpg";
				title.innerHTML = "Sofas";
				description.innerHTML ="Our new variety of sofas provides your living rooms with exquisite looks. ";
			} else {
				image.src = "resources/images/tables/table.jpg";
				title.innerHTML = "Tables";
				description.innerHTML ="Accent your living rooms with out new range of Tables.";
			}
		}
	</script>
</body>
</html>
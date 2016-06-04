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
<title>Registration Successful</title>
</head>
<spring:url value="/resources/css/style.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />
<body>


	<div>
		<h1 class="title" align="left">The Furniture Shop</h1>
		<a href="/TheFurnitureShop/registrationForm"><button
				class="register" type="button">Register</button> </a>


		<%
			try {
				Statement statement = null;
				ResultSet resultSet = null;
				String message = "";

				String connectionURL = "jdbc:mysql://localhost:3306/thefurnitureshop";
				Connection connection = null;
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection(connectionURL, "root", "root");
				String firstname = request.getParameter("firstName");
				String lastname = request.getParameter("lastName");
				String username = request.getParameter("userName");
				String password = request.getParameter("password");
				String street = request.getParameter("street");
				String city = request.getParameter("city");
				String state = request.getParameter("state");
				String zipcode = request.getParameter("zipcode");

				String sql = "insert into user (firstName, lastName, userName, password, street, city, state, zipcode) values ( "
						+ "\"" + firstname + "\"" + "," + "\"" + lastname + "\"" + "," + "\"" + username + "\"" + ","
						+ "\"" + password + "\"" + "," + "\"" + street + "\"" + "," + "\"" + city + "\"" + "," + "\""
						+ state + "\"" + "," + "\"" + zipcode + "\"" + ")";

				statement = connection.createStatement();
				int i = statement.executeUpdate(sql);

				if (i == 0) {
					message = "Registration failed";
				} else {
					message = "Registartion Sucessful";
				}
				
				request.setAttribute("message", message);
				connection.close();
			} catch (Exception ex) {
				out.print(ex.getMessage());
			}
		%>

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

	<h1>${message}</h1>
	<br>
	<br>

	<table>
		<tr>
			<td>First Name:</td>
			<td>${user.firstName}</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td>${user.lastName}</td>
		</tr>
		<tr>
			<td>Street:</td>
			<td>${user.street}</td>
		</tr>
		<tr>
			<td>City:</td>
			<td>${user.city}</td>
		</tr>
		<tr>
			<td>State:</td>
			<td>${user.state}</td>
		</tr>
		<tr>
			<td>Zip Code:</td>
			<td>${user.zipcode}</td>
		</tr>
	</table>


	<footer class="pageFooter">
		<h3 align="center">© The Furniture Shop 2016</h3>
	</footer>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/styles/FrontDeskHomePage.css" rel="stylesheet">
<title>Admin : Manage Patient</title>
</head>

<body>


	<h2 class="text-info">HMS System : Admin Manage Patient</h2>
	<h6 class="text-info">Logged in as - ${E.firstname}
		${E.middlename} ${E.lastname}</h6>

	<!-- Nav bar -->
	<nav class="navbar navbar-expand-sm bg-info">

	<ul class="navbar-nav ">
		<li class="nav-item"><a class="nav-link text-white"
			href="admin">Home</a></li>
		<li class="nav-item"><a class="nav-link text-white"
			href="manageemployee">Manage Employee</a></li>
		<li class="nav-item bg-secondary"><a class="nav-link text-white"
			href="#">Manage Patient</a></li>
		<li class="nav-item"><a class="nav-link text-white" href="logout">Logout</a>
		</li>

	</ul>

	</nav>
	<br>

<br><br>
	<div align="center">
		<h4>Patient List</h4>
		<br>
		<table class ="table table-bordered" style="margin-left:150px; width:75%;" >

			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Address</th>
			<th>Telephone</th>
			<th>Operations</th>

			<c:forEach var="Patient" items="${patlist}">
				<tr>

					<td>${Patient.firstname}</td>
					<td>${Patient.middlename}</td>
					<td>${Patient.lastname}</td>
					<td>${Patient.address}</td>
					<td>${Patient.telephone}</td>
					<td><a href="editPatient?id=${Patient.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deletePatient?id=${Patient.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			New Patient Register <a href="newPatient">here</a>
		</h4>
	</div>
</body>
</html>
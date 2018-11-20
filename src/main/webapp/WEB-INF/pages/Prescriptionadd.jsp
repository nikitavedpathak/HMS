<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link
	href="${pageContext.request.contextPath}/resources/styles/FrontDeskHomePage.css"
	rel="stylesheet">
<title>Examination Portal : Prescription</title>
</head>


<body>


	<h2 class="text-info">HMS System : Prescription Portal</h2>
	<h6 class="text-info">Logged in as - ${E.firstname}
		${E.middlename} ${E.lastname}</h6>

	<!-- Nav bar -->
	<nav class="navbar navbar-expand-sm bg-info">

	<ul class="navbar-nav ">
		<li class="nav-item"><a class="nav-link text-white" href="home">Home</a></li>
		<li class="nav-item"><a class="nav-link text-white" href="logout">Logout</a>
		</li>
	</ul>
	</nav>
	<br>

	<div id="vitals" class="jumbotron">
		<h5>Add Prescription</h5>

		<form:form action="savePrescription?id=${prescribe.visitid}"
			method="post" modelAttribute="prescribe">
			<table>
				<form:hidden path="visitid" />
				<tr>
					<td>Med No:</td>
					<td><form:input path="medno" type="number" /></td>
				</tr>

				<tr>
					<td>Medicine Name:</td>
					<td><form:input path="medicinename" /></td>
				</tr>

				<tr>
					<td>Quantity:</td>
					<td><form:input path="quantity" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Add"></td>
				</tr>
			</table>
		</form:form>

	</div>

	<!-- 	<div> -->
	<!-- 		<table> -->
	<!-- 			<thead> -->
	<!-- 				<th>Medno</th> -->
	<!-- 				<th>Name</th> -->
	<!-- 				<th>Quantity</th> -->
	<!-- 				<th>Operations</th> -->
	<!-- 			</thead> -->
	<!-- 			<tbody> -->
	<%-- 			<c:forEach var="x" items="${plist}"> --%>
	<!-- 				<tr>				 -->
	<%-- 					<td>${x.medicinename}</td> --%>
	<%-- 					<td>${x.quantity}</td> --%>
	<%-- 					<td><a href="delete?medid=${x.medno}">Delete</a></td> --%>
	<!-- 				</tr> -->
	<%-- 				</c:forEach> --%>
	<!-- 			</tbody> -->
	<!-- 		</table> -->

	<!-- 	</div> -->

	<h6>${msg}</h6>





</body>
</html>
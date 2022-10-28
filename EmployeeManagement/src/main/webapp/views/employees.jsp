<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<div class='container'>
		<h3>All Employees</h3>
		<hr>

		<!-- Add a search form -->

		<form action="/directory/search" class="form-inline">

			<!-- Add a button -->
			<a href="/directory/add-employee" class="btn btn-primary btn-sm mb-3">
				New Employee </a> <input type="search" name="fullName" placeholder="Name"
				class="form-control-sm ml-5 mr-2 mb-3" /> <input type="search"
				name="phone" placeholder="Phone Number"
				class="form-control-sm mr-2 mb-3" />

			<button type="submit" class="btn btn-success btn-sm mb-3">Search</button>
			<a href="/logout" class="btn btn-primary btn-sm mb-3 mx-auto">
				Logout </a>

		</form>

		<h1>List Of Employees</h1>
		<table class="table table-bordered table-striped t1">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Department</th>
					<th>Date Of Birth</th>
					<th>Date Of Joining</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Employees}" var="emp">
					<tr>
						<td><c:out value="${emp.fullName}" /></td>
						<td><c:out value="${emp.email}" /></td>
						<td><c:out value="${emp.phone}" /></td>
						<td><c:out value="${emp.department}" /></td>
						<td><c:out value="${emp.dob}" /></td>
						<td><c:out value="${emp.doj}" /></td>
						<td><a href="/directory/edit-employee?id=${emp.id}"
							class="btn btn-warning btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a href="/directory/delete?id=${emp.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
								Delete </a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>
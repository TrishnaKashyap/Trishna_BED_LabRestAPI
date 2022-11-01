<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<div class='container-lg'>
		<div class="d-flex justify-content-between align-items-center">
			<h3>Search Result</h3>
			<a href="/api/students/showformForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Student </a>
		</div>

		<table class="table table-hover table-dark">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><c:out value="${student.fname}" /></td>
					<td><c:out value="${student.lname}" /></td>
					<td><c:out value="${student.course}" /></td>
					<td><c:out value="${student.country}" /></td>
					<td><a
						href="/api/students/showformForUpdate?studentId=${student.id }"
						class="button">Update</a> <a
						href="/api/students/deleteStudentById?id=${student.id }">Delete</a>
					</td>
				</tr>
			</tbody>
		</table>
		<button class="btn btn-primary">
			<a href="/api/students/fetchAllStudents" style="color: #fff">Go
				back</a>
		</button>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Students</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class='container-lg mt-3'>
		<div class="d-flex justify-content-between align-items-center m-2">
			<h3>Search Result</h3>
			<a href="/api/students/showformForAdd" class="btn btn-primary">
				Add Student </a>
		</div>

		<table class="table table-hover table-dark text-center">
			<thead>
				<tr>
					<th>Student ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Students}" var="student">
					<tr>
						<td><c:out value="${student.id}" /></td>
						<td><c:out value="${student.fname}" /></td>
						<td><c:out value="${student.lname}" /></td>
						<td><c:out value="${student.course}" /></td>
						<td><c:out value="${student.country}" /></td>
						<td style="display: flex; justify-content: space-evenly;"><a
							href="/api/students/showformForUpdate?studentId=${student.id }"
							class="button" style="color: #fff"><i
								class="fa-solid fa-pen-to-square"></i></a><a
							href="/api/students/deleteStudentById?id=${student.id}"
							style="color: red"><i class="fa-solid fa-trash"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students</title>
</head>
<body>
	<h1>All Students</h1>
	<br/><br/>
	<table>
		<thead>
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Age</td>
				<td>Address</td>
				<td>City</td>
				<td>State</td>
			</tr>
		</thead>	
		<tbody>
			<c:forEach items="${students}" var="student">
				<c:set var="contact" value="${student.getContact()}"></c:set>
					<tr>
						<td>${student.getFirstName()}</td>
						<td>${student.getLastName()}</td>
						<td>${student.getAge()}</td>
						<td>${contact.getAddress()}</td>
						<td>${contact.getCity()}</td>
						<td>${contact.getState()}</td>	
			</c:forEach>
		</tbody>
	</table>
	<br/><br/><br/>
	<a href="/students/new">Create New Student</a> <br/>
	<a href="/contacts/new">Add Contact Information</a>
	
</body>
</html>
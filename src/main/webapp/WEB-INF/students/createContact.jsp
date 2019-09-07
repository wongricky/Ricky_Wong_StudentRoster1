<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Contact Info</title>
</head>
<body>
	<h1>Create New Contact Info</h1>
	<form:form action="/contacts/create" method="post" modelAttribute="contact">
		<table>
			<tr>
				<td>
					<h2>Student</h2>
				</td>
				<td>
					<form:select path="student">
						<c:forEach items="${students}" var = "student">
							<form:option value="${student.getId()}">${student.getLastName()},${student.getFirstName()}</form:option>
						</c:forEach>
					</form:select>
				</td>
				<tr>
					<td>
						<form:label path="address">Address</form:label>
						<form:errors path="address"/>
						<form:input path="address"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="city">City</form:label>
						<form:errors path="city"/>
						<form:input path="city"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="state">State</form:label>
						<form:errors path="state"/>
						<form:input path="state"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Create new contact info"/>
					</td>
				</tr>
		</table>
	</form:form>
</body>
</html>
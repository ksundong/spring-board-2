<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Board</title>
</head>
<body>
<h1>Board</h1>
<table>
	<thead>
	<tr>
		<th>No</th>
		<th>Subject</th>
		<th>Writer</th>
		<th>Hit</th>
		<th>Datetime</th>
	</tr>
	</thead>
	<c:forEach items="${list}" var="posts">
		<tr>
			<td><c:out value="${posts.id}" /></td>
			<td><c:out value="${posts.subject}" /></td>
			<td><c:out value="${posts.updated_user_id}" /></td>
			<td><c:out value="${posts.hit}" /></td>
			<td><c:out value="${posts.updated_datetime}" /></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>

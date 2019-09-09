<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, shrink-to-fit=no">
	<!-- IE -->
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		  crossorigin="anonymous">
	
	<title>Board</title>
</head>
<body>
<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">Board</h1>
</div>
<div class="container">
	<table class="table table-hover">
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
				<td><c:out value="${posts.id}"/></td>
				<td><c:out value="${posts.subject}"/></td>
				<td><c:out value="${posts.user_name}"/></td>
				<td><c:out value="${posts.hit}"/></td>
				<td><c:out value="${posts.updated_datetime}"/></td>
			</tr>
		</c:forEach>
	</table>
	
	<button class="btn btn-primary float-right">Write</button>
</div>
<!-- Optional Javascript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/include/top.jsp" />
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
<jsp:include page="/WEB-INF/include/bottom.jsp" />
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/include/top.jsp" />
<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">Board</h1>
</div>
<div class="container">
	<table class="table table-hover">
		<thead class="thead-dark">
		<tr>
			<th scope="col" class="text-center">No</th>
			<th scope="col" class="text-center">Subject</th>
			<th scope="col" class="text-center">Writer</th>
			<th scope="col" class="text-center">Hit</th>
			<th scope="col" class="text-center">Datetime</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="posts">
			<tr id="${posts.id}" onclick="viewpost(this.id)">
				<th scope="row" class="text-center"><c:out value="${posts.id}"/></th>
				<td><c:out value="${posts.subject}"/></td>
				<td class="text-center"><c:out value="${posts.user_name}"/></td>
				<td class="text-center"><c:out value="${posts.hit}"/></td>
				<td class="text-center"><c:out value="${posts.updated_datetime}"/></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	<button class="btn btn-primary float-right" id="writebutton">Write</button>
</div>
<!-- Optional Javascript -->
<script type="text/javascript">
	document.getElementById("writebutton").onclick = function () {
		location.href = "/board/writeform"
	};
	
	function viewpost(id) {
		location.href = "/board/view?id=" + id;
	}
</script>
<jsp:include page="/WEB-INF/include/bottom.jsp" />
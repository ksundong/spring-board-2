<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/include/top.jsp" />
<input type="hidden" id="postid" value="${post.id}">
<div class="container">
	<h1 class="mt-4">${post.subject}</h1>
	<p class="lead">by
		 <span class="text-primary">${post.user_name}</span>
	</p>
	<p class="lead text-left">Hit ${post.hit}</p>
	<hr>
	<p class="text-info">Posted on ${post.updated_datetime}</p>
	<hr>
	<p class="lead text-break">
		${post.content}
	</p>
	<hr>
	<button id="listbutton" class="btn btn-success float-right">List</button>
	<button id="modifybutton" class="btn btn-warning float-right mr-1">Modify</button>
	<button id="deletebutton" class="btn btn-danger float-right mr-1">Delete</button>
</div>
<div style="height: 100px; clear: both;"> </div>
<!-- Optional Javascript -->
<script type="text/javascript">
	var postid;
	document.addEventListener("DOMContentLoaded", function () {
		postid = document.getElementById("postid").value;
	});
	document.getElementById("listbutton").onclick = function () {
		location.href = "/board/list"
	};
	document.getElementById("modifybutton").onclick = function () {
		location.href = "/board/modify/?id=" + postid
	};
	document.getElementById("deletebutton").onclick = function () {
		if ( confirm("Are you sure to delete this post?") ) {
			location.href = "/board/deletepost/?id=" + postid;
		} else {
			alert("The delete was canceled.");
		}
	};
</script>
<jsp:include page="/WEB-INF/include/bottom.jsp" />
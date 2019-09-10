<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/include/top.jsp" />
<div class="container">
	<div class="row">
		<div class="col-lg-8">
			<h1 class="mt-4">${post.subject}</h1>
			<p class="lead">by
				 <span class="text-primary">${post.user_name}</span>
			</p>
			<p class="lead text-left">Hit ${post.hit}</p>
			<hr>
			<p class="text-info">Posted on ${post.updated_datetime}</p>
			<hr>
			<p class="lead">
				${post.content}
			</p>
			<hr>
			<button id="listbutton" class="btn btn-success float-right">List</button>
		</div>
	</div>
</div>
<!-- Optional Javascript -->
<script type="text/javascript">
	document.getElementById("listbutton").onclick = function () {
		location.href = "/board/list"
	};
</script>
<jsp:include page="/WEB-INF/include/bottom.jsp" />
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/include/top.jsp" />
<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">Write</h1>
</div>
<div class="container">
	<form action="/board/updatepost" method="post">
		<input type="hidden" id="postid" name="postid" value="${post.id}">
		<div class="form-row">
			<div class="form-group col-md-8">
				<label for="subject">Subject</label>
				<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" value="${post.subject}">
			</div>
			<div class="form-group col-md-4">
				<label for="writer">Writer</label>
				<input type="text" class="form-control" id="writer" name="writer" placeholder="Writer" value="${post.user_name}" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control" id="content" name="content" rows="20">${post.content}</textarea>
		</div>
		<button type="button" id="cancelbutton" class="btn btn-secondary float-right">Cancel</button>
		<button type="submit" class="btn btn-primary float-right mr-1" id="updatebutton">Update</button>
	</form>
</div>
<!-- Optional Javascript -->
<script type="text/javascript">
	var postid;
	document.addEventListener("DOMContentLoaded", function () {
		postid = document.getElementById("postid").value;
	});
	document.getElementById("cancelbutton").onclick = function () {
		location.href = "/board/view?id=" + postid;
	};
</script>
<jsp:include page="/WEB-INF/include/bottom.jsp" />
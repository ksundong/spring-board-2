<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/include/top.jsp" />
<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">Write</h1>
</div>
<div class="container">
	<form action="/board/insertpost" method="post">
		<div class="form-row">
			<div class="form-group col-md-8">
				<label for="subject">Subject</label>
				<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject">
			</div>
			<div class="form-group col-md-4">
				<label for="writer">Writer</label>
				<input type="text" class="form-control" id="writer" name="writer" placeholder="Writer">
			</div>
		</div>
		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control" id="content" name="content" rows="20"></textarea>
		</div>
		<button class="btn btn-primary float-right" id="postbutton">Post</button>
		<button id="listbutton" class="btn btn-success float-right mr-1">List</button>
	</form>
</div>
<!-- Optional Javascript -->
<script type="text/javascript">
	document.getElementById("listbutton").onclick = function () {
		location.href = "/board/list"
	};
</script>
<jsp:include page="/WEB-INF/include/bottom.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userObj}">
	<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Book</h4>
						<c:if test="${not empty succMsg}">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						<c:if test="${not empty errorMsg}">
						<p class="text-center text-danger">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session"/>
						</c:if>
						<form action="../add_books" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="inputState">Book Categories*</label> <select
									name="categories" class="form-control" id="inputState">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState">Book Status*</label> <select
									name="status" class="form-control" id="inputState">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-control">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 40px;">
		<%@include file="footer.jsp"%></div>
</body>
</html>
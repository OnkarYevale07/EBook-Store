<%@page import="com.entity.BookDtls"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Edit Books</title>
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
						<h4 class="text-center">Edit Book</h4>						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						
						%>
						
						<form action="../edit_books" method="post">
						<input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<label for="exampleInputEmail">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp" value="<%=b.getBookName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp" value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp" value="<%=b.getPrice()%>">
							</div>
							<div class="form-group">
								<label for="inputState">Book Status*</label> <select
									name="status" class="form-control" id="inputState" value="<%=b.getStatus()%>">
									<%
									if("Active".equals(b.getStatus())){
										%>
										<option value="Active">Active</option>	
										<option value="Inactive">Inactive</option>
										<%}else{%>
										<option value="Inactive">Inactive</option>
										<option value="Active">Active</option>										
										<%} %>
								</select>
							</div>
							<button type="submit" class="btn btn-primary">Update</button>
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
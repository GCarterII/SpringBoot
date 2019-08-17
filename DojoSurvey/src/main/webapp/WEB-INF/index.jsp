<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<link rel="stylesheet" href="css/style.css" />

<!-- JS -->
<script type="text/javascript" src="script/js.js"></script>
</head>
<body>
	<div class="container border">
	
		<form method="POST" action="/submit">
		  <div class="form-group row">
		    <label for="name" class="col-sm-2 col-form-label">Name</label>
		    <div class="col-sm-10">
		      <input type="text" name="name" class="form-control-plaintext" id="name" value="<c:out value="${ name }"/>" />
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="location" class="col-sm-2 col-form-label">Location</label>
		    <div class="col-sm-10">
		      <select id="location" class="form-control" name="location">
		        <option selected>Choose...</option>
		        <option>Berkeley</option>
		        <option>Anywhere Else</option>
		      </select>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="language" class="col-sm-2 col-form-label">Language</label>
		    <div class="col-sm-10">
		      <select id="language" class="form-control" name="language">
		        <option selected>Choose...</option>
		        <option>Java</option>
		        <option>Anything Else</option>
		      </select>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="comment" class="col-sm-2 col-form-label">Comment (optional)</label>
		    <div class="col-sm-10">
		      <input type="text" name="comment" class="form-control-plaintext" id="comment" value="<c:out value="${ comment }" />" />
		    </div>
		  </div>
		  <div class="form-group row">
			  <input type="submit" value="submit" class="float-right btn btn-danger" />
		  </div>
		</form>

	</div>
</body>
</html>
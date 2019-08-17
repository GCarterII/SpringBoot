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
	<div class="container">
	
	<table class="table">
	  <tbody>
	    <tr>
	      <th scope="row">Name</th>
	      <td><c:out value="${ name }" /></td>
	    </tr>
	    <tr>
	      <th scope="row">Location</th>
	      <td><c:out value="${ location }" /></td>
	    </tr>
	    <tr>
	      <th scope="row">fav Lang</th>
	      <td><c:out value="${ name }" /></td>
	    </tr>
   	    <tr>
	      <th scope="row">Comments?</th>
	      <td><c:out value="${ comments }" /></td>
	    </tr>
	  </tbody>
	</table>
	

	</div>
</body>
</html>
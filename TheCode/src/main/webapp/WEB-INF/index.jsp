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
	
	<p class="text-danger"><c:out value="${ error }" /></p>
	<p>Please put in the secret passcode:</p>
	<form method="POST" action="/secret">
		<input type="password" name="password">
		<input type="submit" value="submit">
	</form>

	</div>
</body>
</html>
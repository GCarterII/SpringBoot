<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Your visits to <a href="/">home</a> site: <c:out value="${ count }"></c:out>
	<br />
	To clear visit: <a href="clear">here</a>
	<br />
	To increase by 2 visit: <a href="2">here</a>

</body>
</html>
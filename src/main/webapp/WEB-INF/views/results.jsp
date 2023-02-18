<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>results</title>
</head>
<h1>Here are the available hotels in ${ city }</h1>
<body>
<c:forEach var="Hotel" items="${hotels}">
				<tr>
			<p>		<td>${Hotel.name}</td>
					<td>${Hotel.pricePerNight}</td> </p>
				</tr>
				</c:forEach>

</body>
</html>
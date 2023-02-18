<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
</head>
<body>
<h1>Hotel Finder</h1>
<form action ="/results" method="GET">

<label for="city">Choose a city to browse available hotels</label>
<select name="city" id="city">

<option value="Detroit">Detroit</option>

<option value="Buffalo">Buffalo</option>

<option value="NYC">NYC</option>

</select>
<input type="submit" value="submit">

</form>


</body>
</html>
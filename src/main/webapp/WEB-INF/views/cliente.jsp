<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cliente</title>
		<link rel="stylesheet" href="../css/style.css">
		<!-- Estilo Rapido -->
<style>
body {
	background-image: linear-gradient(to top, #d5d4d0 0%, #d5d4d0 1%, #eeeeec 31%, #efeeec 75%
		, #e9e9e7 100%);
	background-attachment: fixed;
	background-position: center;
}

h1 {
	font: Cambria;
	color: maroon;
	margin-left: 40px;
}

footer {
	background-image: linear-gradient(to top, #6a85b6 0%, #bac8e0 100%);
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	text-align: center;
	height: 43px;
}
</style>
	</head>
	
	
	<body>
		<h1>Cliente</h1>
		
			<h3>Accidentes</h3>
			
			<div><a href="${pageContext.request.contextPath}/registrarAccidente.jsp">Registro de Accidente</a></div>
			
			<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Bienvenido</title>
		<link rel="stylesheet" href="../css/style.css">
	</head>
	
	
	<body>

		<h1>Profesional</h1>
		
		<h3>Capacitaciones</h3>
		<div><a href="${pageContext.request.contextPath}/view/registrarCapacitacion.jsp">Registro de Capacitaciones</a></div>
		<div><a href="${pageContext.request.contextPath}/AdminCliente?action=listar">Listado de Capacitaciones</a></div>
		
		<h3>Visitas</h3>
		<div><a href="${pageContext.request.contextPath}/view/registrarVisita.jsp">Registro de Visita</a></div>
		<div><a href="${pageContext.request.contextPath}/AdminCliente?action=listar">Listado de Visitas</a></div>

	
		
		
	</body>
</html>
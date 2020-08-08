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
		<h1>Administrador</h1>
		
		<h3>Clientes</h3>
		<div><a href="${pageContext.request.contextPath}/registrarCliente">Nuevo Cliente</a></div>
		<div><a href="${pageContext.request.contextPath}/listarClientes">Listado de Clientes</a></div>
		
		<h3>Profesionales</h3>
		<div><a href="${pageContext.request.contextPath}/registrarProfesional">Nuevo Profesional</a></div>
		<div><a href="${pageContext.request.contextPath}/listarProfesionales">Listado de Profesionales</a></div>
		
		<h3>Accidentes</h3>
		<div><a href="${pageContext.request.contextPath}/registrarAccidente">Registro de Accidente</a></div>
		<div><a href="${pageContext.request.contextPath}/listarAccidentes">Listado de Accidente</a></div>
		
		<h3>Capacitaciones</h3>
		<div><a href="${pageContext.request.contextPath}/registrarCapacitacion">Registro de Capacitaciones</a></div>
		<div><a href="${pageContext.request.contextPath}/listarCapa">Listado de Capacitaciones</a></div>
		
		<h3>Visitas</h3>
		<div><a href="${pageContext.request.contextPath}/registrarVisita">Registro de Visita</a></div>
		<div><a href="${pageContext.request.contextPath}/listarVisitas">Listado de Visitas</a></div>
		

		
		
	</body>
</html>
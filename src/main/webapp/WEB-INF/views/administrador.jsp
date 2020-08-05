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
		<div><a href="${pageContext.request.contextPath}/view/registrarCliente.jsp">Nuevo Cliente</a></div>
		<div><a href="${pageContext.request.contextPath}/listarClientes">Listado de Clientes</a></div>
		
		<h3>Profesionales</h3>
		<div><a href="${pageContext.request.contextPath}/view/registrarProfesional.jsp">Nuevo Profesional</a></div>
		<div><a href="${pageContext.request.contextPath}/listarProfesionales">Listado de Profesionales</a></div>
		
		<h3>Accidentes</h3>
		<div><a href="${pageContext.request.contextPath}/view/registrarAccidente.jsp">Registro de Accidente</a></div>
		<div><a href="${pageContext.request.contextPath}/listarAccidentes">Listado de Accidente</a></div>
		
		<h3>Capacitaciones</h3>
		<div><a href="${pageContext.request.contextPath}/view/registrarCapacitacion.jsp">Registro de Capacitaciones</a></div>
		<div><a href="${pageContext.request.contextPath}/listarCapa">Listado de Capacitaciones</a></div>
		
		<h3>Visitas</h3>
		<div><a href="${pageContext.request.contextPath}/view/registrarVisita.jsp">Registro de Visita</a></div>
		<div><a href="${pageContext.request.contextPath}/listarVisitas">Listado de Visitas</a></div>
		

	
		
		
		
		
		
	</body>
</html>
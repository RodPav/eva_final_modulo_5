<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Lista de Visita</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleListado.css">
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
<!-- Fin Estilo Rapido -->
</head>


<body>
	<h1>Listado de Visita</h1>
	
			<table>
		<tr>
			<th>Cliente</th>
			<th>Profesional</th>
			<th>Fecha Visita</th>
			<th>Hora Visita</th>
			<th>Asistentes</th>
			<th>Lista Chequeo</th>
		</tr>

		<c:forEach items="${lista_visita}" var="visita">
			<tr>
				<td>${visita.getCliente().getNombreCliente()}</td>
				<td>${visita.getProfesional().getNombreProfesional()}</td>
				<td>${visita.getFechaVisita()}</td>
				<td>${visita.getAsistentes()}</td>
				<td>${visita.getListaChequeo()}</td>

				<td>
					<a href="${pageContext.request.contextPath}/eliminarVisita/${visita.getIdVisita()}">Eliminar</a>
					&nbsp; 
					<a href="${pageContext.request.contextPath}/mostrarVisita/${visita.getIdVisita()}">Actualizar</a>
				</td>
			</tr>
		</c:forEach>

	</table>
	
	<br>
	<a href="${pageContext.request.contextPath}/administrador.jsp" >Volver</a>
	<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
</body>
</html>
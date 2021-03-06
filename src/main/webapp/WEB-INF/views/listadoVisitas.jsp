<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Lista de Visita</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleListado.css">
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

</body>
</html>
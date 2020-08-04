<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Accidente</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleListado.css">
	</head>
	
	
	<body>
		<h1>Lista de Accidente</h1>
		
			<table>
		<tr>
			
			<th>Nombre Completo</th>
			<th>Rut</th>
			<th>Teléfono</th>
			<th>Correo Electrónico</th>
			<th>Tipo de Accidente</th>
			<th>Fecha de Accidente</th>
			<th>Hora de Accidente</th>
			<th>Descripción</th>
		</tr>

		<c:forEach items="${lista_accidente}" var="accidente">
			<tr>
				<td>${accidente.getNombreCliente()}</td>
				<td>${accidente.getRutCliente()}</td>
				<td>${accidente.getFonoCliente()}</td>
				<td>${accidente.getMailCliente()}</td>
				<td>${accidente.getTipoAccidente()}</td>
				<td>${accidente.getFechaAccidente()}</td>
				<td>${accidente.gethoraAccidente()}</td>
				<td>${accidente.getDescripcion()}</td>
				
				
				<td>
					<a href="${pageContext.request.contextPath}/AdminAccidente?action=eliminar">Eliminar</a>
					&nbsp;A
					<a href="${pageContext.request.contextPath}/mostrarAccidente/${accidente.GetIdAccidente()}">Actualizar</a>
				</td>
				
			</tr>
		</c:forEach>

	</table>
		
		<br>
		<a href="${pageContext.request.contextPath}/users/administrador.jsp" >Volver</a>
		
	</body>
</html>
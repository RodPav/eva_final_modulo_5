<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Accidente</title>
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
		<br>
	<a href="${pageContext.request.contextPath}/users/administrador.jsp" >Volver</a>
		<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
		
		
	</body>
</html>
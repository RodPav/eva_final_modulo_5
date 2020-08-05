<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Accidente</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleListado.css">
</head>


<body>
	<h1>Lista de Accidente</h1>

	<table>
		<tr>

			<th>Rut</th>
			<th>Cliente</th>
			<th>Fecha accidente</th>
			<th>Hora accidente</th>
			<th>Gravedad</th>
			<th>Descripción</th>
			<th>Fecha ingreso</th>
			<th>Hora ingreso</th>

		</tr>

		<c:forEach items="${lista_accidente}" var="accidente">
			<tr>
				<td>${accidente.getCliente().getRutCliente}</td>
				<td>${accidente.getCliente().getNombreCliente()}</td>
				<td>${accidente.getFechaAccidente()}</td>
				<td>${accidente.getHoraAccidente()}</td>
				<td>${accidente.getGravedad()}</td>
				<td>${accidente.getDescripcion()}</td>
				<td>${accidente.getFechaIngreso()}</td>
				<td>${accidente.getHoraIngreso()}</td>


				<td><a
					href="${pageContext.request.contextPath}/eliminarAccidente/${accidente.getIdAccidente()}">Eliminar</a>
					 &nbsp; 
					 <a href="${pageContext.request.contextPath}/editarAccidente/${accidente.getIdAccidente()}">Actualizar</a>
				</td>

			</tr>
		</c:forEach>

	</table>

	<br>
	<a href="${pageContext.request.contextPath}/users/administrador.jsp">Volver</a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Profesionales</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleListado.css">
</head>
<body>

	<h1>Listado de Profesionales</h1>

		<c:if test="${alerta != null}">
		<script>
			var message = "${alerta}";
			alert(message);
		</script>
	</c:if>

	<table>
		<tr>
			<th>Rut</th>
			<th>Nombre Completo</th>
			<th>Dirección</th>
			<th>Teléfono</th>
			<th>Correo electrónico</th>
	
	
		</tr>

		<c:forEach items="${lista_profesional}" var="profesional">
			<tr>
				<td>${profesional.getRutProfesional()}</td>
				<td>${profesional.getNombreProfesional()}</td>
				<td>${profesional.getDirProfesional()}</td>
				<td>${profesional.getFonoProfesional()}</td>
				<td>${profesional.getMailProfesional()}</td>

				<td><a
					href="${pageContext.request.contextPath}/eliminarProfesional/${profesional.getIdProfesional()}"><img
						src="${pageContext.request.contextPath}/img/eliminar.jpg" width=30pt
						height=30pt></a> &nbsp; 
						<a href="${pageContext.request.contextPath}/mostrarProfesional/${profesional.getIdProfesional()}"><img
						src="${pageContext.request.contextPath}/img/editar.jpg"  width=30pt height=30pt></a></td>

			</tr>
		</c:forEach>

	</table>
	<br>
	<div>
		<a href="${pageContext.request.contextPath}/administrador.jsp">Volver</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/registrarProfesional.jsp">Nuevo
			Profesional</a>
	</div>

</body>
</html>
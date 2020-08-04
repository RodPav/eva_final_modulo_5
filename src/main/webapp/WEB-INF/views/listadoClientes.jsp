<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Clientes</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleListado.css">
</head>
<body>

	<h1>Listado de Clientes</h1>

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
			<th>Razón Social</th>
			<th>Giro Comercial</th>
			<th>Dirección</th>
			<th>Teléfono</th>
			<th>Correo electrónico</th>
			<th>Rubro</th>
		</tr>

		<c:forEach items="${lista_clientes}" var="cliente">
			<tr>
				<td>${cliente.getRutCliente()}</td>
				<td>${cliente.getNombreCliente()}</td>
				<td>${cliente.getRazonSocial()}</td>
				<td>${cliente.getGiro()}</td>
				<td>${cliente.getDirCliente()}</td>
				<td>${cliente.getFonoCliente()}</td>
				<td>${cliente.getMailCliente()}</td>
				<td>${cliente.getRubro()}</td>
				
				<td><a
					href="${pageContext.request.contextPath}/eliminarCliente/${cliente.getIdCliente()}"><img
						src="${pageContext.request.contextPath}/img/eliminar.jpg" width=30pt
						height=30pt></a> &nbsp; 
						<a href="${pageContext.request.contextPath}/mostrarCliente/${cliente.getIdCliente()}"><img
						src="${pageContext.request.contextPath}/img/editar.jpg"  width=30pt height=30pt></a></td>


			</tr>
		</c:forEach>

	</table>
	<br>
	<div>
		<a href="${pageContext.request.contextPath}/administrador.jsp">Volver</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/registrarCliente.jsp">Nuevo
			Usuario</a>
	</div>

</body>
</html>
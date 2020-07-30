<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Datos de Cliente</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleMostrar.css">
</head>


<body>
<h1>Actualizar Cliente</h1>
	
	<c:if test="${alerta != null}">
		<script>
			var message = "${alerta}";
			alert(message);
		</script>
	</c:if>

	<form
		action="${pageContext.request.contextPath}/AdminCliente?action=actualizar"
		method="POST">
		<table>

			<tr>
				<td>Rut:</td>
				<td><input type="text" name="rut"
					value="${cliente.getRutCliente()}" readonly /></td>
			</tr>
			<tr>
				<td>Nombre Completo:</td>
				<td><input type="text" name="nombre"
					value="${cliente.getNombreCliente()}" /></td>
			</tr>

			<tr>
				<td>Razón Social:</td>
				<td><input type="text" name="rSocial"
					value="${cliente.getRazonSocial()}" /></td>
			</tr>

			<tr>
				<td>Giro Comercial:</td>
				<td><input type="text" name="giro" value="${cliente.getGiro()}" /></td>
			</tr>

			<tr>
				<td>Dirección:</td>
				<td><input type="text" name="direccion"
					value="${cliente.getDirCliente()}" /></td>
			</tr>

			<tr>
				<td>Teléfono:</td>
				<td><input type="text" name="telefono"
					value="${cliente.getFonoCliente()}" /></td>
			</tr>

			<tr>
				<td>Correo:</td>
				<td><input type="text" name="correo"
					value="${cliente.getMailCliente()}" /></td>
			</tr>

			<tr>
				<td>Rubro:</td>
				<td><input type="text" name="rubro"
					value="${cliente.getRubro()}" /></td>
			</tr>

			<tr>
				<td><input type="submit" name="enviar" value="Enviar">
				</td>
			</tr>
		</table>
	</form>
	<br>
	
	
	<a href="${pageContext.request.contextPath}/users/administrador.jsp">Volver</a>

</body>
</html>
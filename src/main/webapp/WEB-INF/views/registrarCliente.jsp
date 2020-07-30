<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Datos Clientes</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleMostrar.css">
</head>

<body>

	<h1>Administración de Clientes</h1>
	
	<c:if test="${alerta != null}">
		<script>
			var message = "${alerta}";
			alert(message);
		</script>
	</c:if>

	<form action="${pageContext.request.contextPath}/AdminCliente?action=crear"
		method="POST">
		<table>

			<tr>
				<td>Rut:</td>
				<td><input type="text" name="rut" required /></td>
			</tr>

			<tr>
				<td>Nombre Completo:</td>
				<td><input type="text" name="nombre" required/></td>
			</tr>
			<tr>
				<td>Razón Social:</td>
				<td><input type="text" name="rSocial" required/></td>
			</tr>
			<tr>
				<td>Giro Comercial</td>
				<td><input type="text" name="giro" required/></td>
			</tr>
			<tr>
				<td>Dirección:</td>
				<td><input type="text" name="direccion" required/></td>
			</tr>
			<tr>
				<td>Teléfono:</td>
				<td><input type="text" name="telefono" required/></td>
			</tr>
			<tr>
				<td>Correo:</td>
				<td><input type="text" name="correo" required/></td>
			</tr>
			<tr>
				<td>Rubro:</td>
				<td><input type="text" name="rubro" required/></td>
			</tr>

			<tr>
				<td><input type="submit" name="enviar" value="Enviar"></td>
			</tr>
		</table>
	</form>

	<br>

	<div>
		<a href="${pageContext.request.contextPath}/AdminCliente?action=listar">Listado de Clientes</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/users/administrador.jsp">Volver</a>
	</div>		
</body>
</html>
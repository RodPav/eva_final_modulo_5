<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Datos Profesional</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styleMostrar.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>

<body>

	<h1>Registro de Profesionales</h1>

	<h1>Crear Cliente</h1>

	<c:if test="${alerta != null}">
		<script>
			var message = "${alerta}";
			alert(message);
		</script>
	</c:if>


	<form
		action="${pageContext.request.contextPath}/AdminProfesional?action=crear"
		method="post">
		<table>

			<tr>
				<td>Rut:</td>
				<td><input type="text" name="rut" required /></td>
			</tr>
			<tr>
				<td>Nombre Completo:</td>
				<td><input type="text" name="nombre" /></td>
			</tr>

			<tr>
				<td>Dirección:</td>
				<td><input type="text" name="direccion" /></td>
			</tr>
			<tr>
				<td>Teléfono:</td>
				<td><input type="text" name="telefono" /></td>
			</tr>
			<tr>
				<td>Correo:</td>
				<td><input type="text" name="correo" /></td>
			</tr>

			<tr>
				<td><input type="submit" name="enviar" value="Enviar"></td>
			</tr>
		</table>
		<br>
		<div>
			<a
				href="${pageContext.request.contextPath}/AdminProfesional?action=listar">Listado
				de Profesionales</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/users/administrador.jsp">Volver</a>
		</div>
	</form>
</body>
</html>
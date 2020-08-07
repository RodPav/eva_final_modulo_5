<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Datos Clientes</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleMostrar.css">
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
		<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>	
</body>
</html>
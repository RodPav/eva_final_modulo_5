<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Datos de Profesional</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleMostrar.css">
</head>


<body>
	<h1>Registro de Profesional</h1>

	<c:if test="${alerta != null}">
		<script>
			var message = "${alerta}";
			alert(message);
		</script>
	</c:if>

	<form
		action="${pageContext.request.contextPath}/AdminProfesional?action=actualizar"
		method="POST">
		<table>

			<tr>
				<td>Rut:</td>
				<td><input type="text" name="rut"
					value="${profesional.getRutProfesional()}" readonly /></td>
			</tr>
			<tr>
				<td>Nombre Completo:</td>
				<td><input type="text" name="nombre"
					value="${profesional.getNombreProfesional()}" /></td>
			</tr>

			<tr>
				<td>Dirección:</td>
				<td><input type="text" name="direccion"
					value="${profesional.getDirProfesional()}" /></td>
			</tr>

			<tr>
				<td>Teléfono:</td>
				<td><input type="text" name="fono"
					value="${profesional.getFonoProfesional()}" /></td>
			</tr>

			<tr>
				<td>Correo Electrónico:</td>
				<td><input type="text" name="mail"
					value="${profesional.getMailProfesional()}" /></td>
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
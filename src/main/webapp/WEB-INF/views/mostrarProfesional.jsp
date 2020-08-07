<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profesional</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
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
	<div class="container">
		<c:set var="profesional" value="${profesional}"></c:set>

		<h1>Registro de Profesional</h1>

		<form:form action="${pageContext.request.contextPath}/editarProfesional"
			method="post">
			<input type="hidden" name="id" value="${profesional.getIdProfesional()}">
			<div class="row">
				<div class="col-3">Rut:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${profesional.getRutProfesional()}" />
				</div>
			</div>

			<div class="row">
				<div class="col-3">Nombre Completo:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombre"
						value="${profesional.getNombreProfesional()}" />
				</div>
			</div>

			<div class="row">
				<div class="col-3">Dirección:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="direccion"
						value="${profesional.getDirProfesional()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Teléfono:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fono"
						value="${profesional.getFonoProfesional()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Correo Electrónico:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="mail"
						value="${profesional.getMailProfesional()}" />
				</div>
			</div>

			<hr>
			<div class="row">

				<div class="col-3">
					<input class="form-control" type="submit" value="Guardar">
				</div>
				<div class="col-3">
					<a href="${pageContext.request.contextPath}/listarProfesionales">Volver</a>
				</div>

			</div>
		</form:form>
	</div>
	<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
</body>
</html>
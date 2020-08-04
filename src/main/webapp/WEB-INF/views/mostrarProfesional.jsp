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

</body>
</html>
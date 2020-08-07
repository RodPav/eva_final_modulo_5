<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visita</title>
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
		<c:set var="visita" value="${visita}"></c:set>

		<h1>Editar Visita</h1>
		
		<form:form action="${pageContext.request.contextPath}/editarVisita"
			method="post">
		
		<input type="hidden" name="id" value="${visita.getIdVisita()}">
			
			<div class="row">
				<div class="col-3">Fecha Visita:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fechaVisita" readonly
						value="${visita.getFechaVisita()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Hora Visita:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="horaVisita" readonly
						value="${visita.getHoraVisita()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Cliente:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombreCliente" readonly
						value="${visita.getCliente().getNombreCliente()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Profesional:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombreProfesional" readonly
						value="${visita.getProfesional().getNombreProfesional()}" />
				</div>
			</div>
				
				<div class="row">

				<div class="col-3">
					<input class="form-control" type="submit" value="Guardar">
				</div>
				<div class="col-3">
					<a href="${pageContext.request.contextPath}/listarVisitas">Volver</a>
				</div>

			</div>
			
		</form:form>	
		
	</div>
	<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
</body>
</html>
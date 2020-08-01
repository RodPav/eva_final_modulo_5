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
					<input class="form-control" type="text" name="rut" readonly
						value="${visita.getFechaVisita()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Hora Visita:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${visita.getHoraVisita()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Cliente:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${visita.getCliente()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Profesional:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${visita.getProfesional()}" />
				</div>
			</div>
				
			
		</form:form>	
		
	</div>

</body>
</html>
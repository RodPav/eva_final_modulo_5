<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Capacitación</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>

<body>
	<div class="container">
		<c:set var="capacitacion" value="${capacitacion}"></c:set>

		<h1>Editar Capacitación</h1>
		
		<form:form action="${pageContext.request.contextPath}/editarCapa"
			method="post">
		
		<input type="hidden" name="id" value="${capacitacion.getIdCapacitacion()}">
			
			<div class="row">
				<div class="col-3">Fecha Capacitacion:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${capacitacion.getFechaCapa()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Hora Capacitacion:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${capacitacion.getHoraCapa()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Cantidad de Asistentes:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${capacitacion.getCantAsistentes()}" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-3">Tema:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${capacitacion.getTema()}" />
				</div>
			</div>
				
			
		</form:form>	
		
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cliente</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<c:set var="cliente" value="${cliente}"></c:set>

		<h1>Editar Cliente</h1>

		<form:form action="${pageContext.request.contextPath}/editarCliente"
			method="post">
			<input type="hidden" name="id" value="${cliente.getIdCliente()}">
			<div class="row">
				<div class="col-3">Rut:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut" readonly
						value="${cliente.getRutCliente()}" />
				</div>
			</div>

			<div class="row">
				<div class="col-3">Nombre Completo:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombre"
						value="${cliente.getNombreCliente()}" />
				</div>
			</div>

			<div class="row">
				<div class="col-3">Razón social:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rSocial"
						value="${cliente.getRazonSocial()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Giro comercial:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="giro"
						value="${cliente.getGiro()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Dirección:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="direccion"
						value="${cliente.getDirCliente()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Teléfono:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="telefono"
						value="${cliente.getFonoCliente()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Correo elctrónico:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="email"
						value="${cliente.getMailCliente()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Rubro:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rubro"
						value="${cliente.getRubro()}" />
				</div>
			</div>


			<hr>
			<div class="row">

				<div class="col-3">
					<input class="form-control" type="submit" value="Guardar">
				</div>
				<div class="col-3">
					<a href="${pageContext.request.contextPath}/listarClientes">Volver</a>
				</div>

			</div>
		</form:form>
	</div>

</body>
</html>
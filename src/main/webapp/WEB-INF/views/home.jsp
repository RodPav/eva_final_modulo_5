<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<link rel="shortcut icon" href="/resources/img/favicon.png">

<!-- Estilo Rapido -->
<style>
body {
	background-image: linear-gradient(to top, #d5d4d0 0%, #d5d4d0 1%, #eeeeec 31%, #efeeec 75%
		, #e9e9e7 100%);
	background-attachment: fixed;
	background-position: center;
}

h2 {
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

<title>Login</title>
</head>



<body>
	<h2 id="headline" align="center">
		<i>Evaluación Grupal Módulo 5</i>
	</h2>

	<div class="blacktopline"></div>

	<div class="col1" align="center">
		<h4>Login Administrador</h4>
		<c:if test="${lmensaje != null}">
			<h4>
				<c:out value="${lmensaje}"></c:out>
			</h4>
		</c:if>

		<form
			action="${pageContext.request.contextPath}/view/usuarioAdministrador.jsp"
			method="post">
			Nombre: <input type="text" name="usuario" /><br /> 
			Clave: <input type="password" name="clave" /><br /> 
			<input type="submit" value="Ingresar" />
		</form>
	</div>
	<br>

	<div class="col2" align="center">
		<h4>Login Profesional</h4>
		<c:if test="${lmensaje != null}">
			<h4>
				<c:out value="${lmensaje}"></c:out>
			</h4>
		</c:if>

		<form
			action="${pageContext.request.contextPath}/view/usuarioProfesional.jsp"
			method="post">
			Nombre: <input type="text" name="usuario" /><br /> Clave: <input
				type="password" name="clave" /><br /> <input type="submit"
				value="Ingresar" />
		</form>
	</div>
	<br>
	
	<div class="col3" align="center">
		<h4>Login Cliente</h4>
		<c:if test="${lmensaje != null}">
			<h4>
				<c:out value="${lmensaje}"></c:out>
			</h4>
		</c:if>

		<form
			action="${pageContext.request.contextPath}/view/usuarioCliente.jsp"
			method="post">
			Nombre: <input type="text" name="usuario" /><br /> Clave: <input
				type="password" name="clave" /><br /> <input type="submit"
				value="Ingresar" />
		</form>
	</div>


	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
<br>
<br>
<br>
<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
</body>
</html>
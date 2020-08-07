<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Registro de Accidente</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleMostrar.css">
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		
		<!-- datepicker sources -->
		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
   		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
   		
   		
    	<!-- timepicker sources -->
    	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

	    <script>
        $(function () {
            $("#datepicker").datepicker({
    				firstDay: 1,
    				monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
    					'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    				monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
    						'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
    				dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
    				dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié;', 'Juv', 'Vie', 'Sáb'],
    				dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
    				weekHeader: 'Sm',
    				dateFormat: 'dd/mm/yy',
            });
            
            $('#timepicker').timepicker({
	                timeFormat: 'H:mm',
	                interval: 30,
	                minTime: '0',
	                maxTime: '23:30',
	                defaultTime: '0',
	                startTime: '0',
	                dynamic: false,
	                dropdown: true,
	                scrollbar: true
            });
        });
    	</script>
    	
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
		<h1>Registro de Accidente</h1>
		
		<c:if test="${true}">
			<h2>Bienvenido</h2>
		</c:if>
		
		
		<form action="${pageContext.request.contextPath}/AdminAccidente?action=crear" method="post">
		
			<table>
			
				<tr>
					<td>Nombre Completo:</td>
					<td><input type="text" name="nombre" required/></td>
				</tr>
				<tr>
					<td>Rut:</td>
					<td><input type="text" name="rut" required/></td>
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
					<td>Gravedad del Accidente:</td>
					<td>
						<select name="accidente" required>
			              	<option value = "Leve"> Leve </option>
			                <option value = "Medio"> Medio </option>
			            	<option value = "Grave"> Grave </option>
			            	<option value = "Mortal"> Mortal </option>
			        	</select>
					</td>
				</tr>
				<tr>
					<td>Fecha Accidente:</td>
					<td><input type="text" id="datepicker" name="fecha" class="col1" required/></td>
				</tr>
				<tr>
					<td>Hora Accidente:</td>
					<td><input type="text" id="timepicker" autocomplete="off" name="hora" required/></td>
				</tr>
				<tr>
					<td>Descripción:</td>
					<td><textarea name="descripcion" rows="4" cols="50" required></textarea></td>
				</tr>
				
				<tr>
				<td><input type="submit" name="enviar" value="Enviar"></td>
				</tr>
			</table>
			<br>
			<div><a href="${pageContext.request.contextPath}/users/cliente.jsp">Volver</a></div>
		</form>
		<br>
	<footer><p><h5>&copy; 2020</h5></p>
</footer>
	</body>
</html>
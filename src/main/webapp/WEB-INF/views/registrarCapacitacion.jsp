<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Datos Capacitación</title>
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
                dateFormat: "dd-mm-yy", 
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
    	
	
		
	<body>
	
		<h1>Registro de Capacitación</h1>
		
		<form action="${pageContext.request.contextPath}/AdminCapacitación?action=crear" method="post">
			<table>
				<tr>
					<td>Cliente:</td>
					<td>
						<select name="cliente" required>
			              	<option> Cliente 1</option>
			                <option> Cliente 2</option>
			            	<option> Cliente 3</option>
			            	<option> Cliente 4</option>
			                <option> Cliente 5</option>
			        	</select>
					</td>
				</tr>
				<tr>
					<td>Profesional:</td>
					<td>
						<select name="profesional" required>
			              	<option> Profesional 1</option>
			                <option> Profesional 2</option>
			            	<option> Profesional 3</option>
			            	<option> Profesional 4</option>
			                <option> Profesional 5</option>
			        	</select>
					</td>
				</tr>
				<tr>
					<td>Fecha Capacitación:</td>
					<td><input type="text" id="datepicker" name="fecha" required/></td>

				</tr>
				<tr>
					<td>Hora Capacitación:</td>
					<td><input type="text" id="timepicker" name="fecha" required/></td>
		
				<tr>
					<td>Asistentes:</td>
					<td><input type="text" name="asistentes" required/></td>
				</tr>
				<tr>
					<td>Tema</td>
					<td><input type="text" name="tema" required/></td>
				</tr>
				<tr>
				<td><input type="submit" name="enviar" value="Enviar"></td>
				</tr>
			</table>
			<br>
			<div><a href="${pageContext.request.contextPath}/users/profesional.jsp">Volver</a></div>
		</form>
	</body>
</html>
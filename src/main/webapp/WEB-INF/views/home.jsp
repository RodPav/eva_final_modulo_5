<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}../css/styleIndex.css">
	</head>
	
	
	<body>
		<h1>Evaluación Grupal Módulo 5</h1>
		
		
		
		<div class="col1">
			<h3>Login Administrador</h3>
					<c:if test="${lmensaje != null}">
						<h3><c:out value="${lmensaje}"></c:out></h3>
					</c:if>
					
					<form action="${pageContext.request.contextPath}/administrador.jsp" method="post">
						Nombre: <input type="text" name="usuario" /><br/>
						Clave: <input type="password" name="clave" /><br/>
						<input type="submit" value="Ingresar" />
					</form>
		</div>
		
		
		<div class="col2">
			<h3>Login Profesional</h3>
					<c:if test="${lmensaje != null}">
						<h3><c:out value="${lmensaje}"></c:out></h3>
					</c:if>
					
					<form action="${pageContext.request.contextPath}/profesional.jsp" method="post">
						Nombre: <input type="text" name="usuario" /><br/>
						Clave: <input type="password" name="clave" /><br/>
						<input type="submit" value="Ingresar" />
					</form>
		</div>
		
		<div class="col3">
					<h3>Login Cliente</h3>
					<c:if test="${lmensaje != null}">
						<h3><c:out value="${lmensaje}"></c:out></h3>
					</c:if>
					
					<form action="${pageContext.request.contextPath}/view/usuarioCliente.jsp" method="post">
						Nombre: <input type="text" name="usuario" /><br/>
						Clave: <input type="password" name="clave" /><br/>
						<input type="submit" value="Ingresar" />
					</form>
		
		</div>
		
		
		
		
		
		
	
		
	</body>
</html>
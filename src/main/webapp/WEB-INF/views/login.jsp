<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Custom Login Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h3>Página de Login</h3>
		<%
			String error = (String) request.getAttribute("error");
		if (error != null && error.equals("true")) {
			out.println("<h4 style=\"color:red\">Credenciales invalidas. Favor, intentalo otra vez!!</h4>");
		}
		%>
		<form name='loginForm' action="login" method='POST'>
			<div class="form-group">
				<div class="row">
					<div class="col-2 col-form-label">Usuario:</div>
					<div class="col-3">
						<input class="form-control form-control-sm" placeholder="Usuario" type='text' name='username'>
					</div>
				</div>
				<div class="row">
					<div class="col-2 col-form-label">Password:</div>
					<div class="col-3">
						<input class="form-control form-control-sm" placeholder="Password" type='password' name='password' />
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<input class="btn btn-primary" name="submit" type="submit" />
					</div>
					<div class="col-sm-2">
						<input class="btn btn-secondary" name="reset" type="reset" />
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

				</div>
			</div>
		</form>
	</div>
</body>
</html>
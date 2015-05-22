<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>Registro Pago</title>
</head>
<body>
	<form action="BuscarProf" method="post">
		<div>
			<div class="pa1">
				<div class="pa2">
					<br>
					<h1 class="titulo">Registro De Pago</h1>
				</div>

				<div class=" form-inline ingresar">
					<label>Rut Profesor</label>
					<div>
						<input type="text" class="form-control col-sm-3 rut" name="rut"
							placeholder="Rut" required>
					</div>
					<button type="submit" class="btn btn-default boton">Ingresar</button>
				</div>
				</form>
				<form action="RegistroPago" method="post">
				<div class="ingresar ">
					<div class="form-group">
						<label>Nombre</label> <input type="text" class="form-control "
							placeholder="Nombre" value="${nombre}" disabled>
					</div>
					<div class="form-group">
						<label>Rut</label> <input type="text" class="form-control "
							placeholder="Rut" value="${rutP}" disabled>
					</div>
					<div class="form-group">
						<label>Cantidad de Cursos</label> <input type="text"
							class="form-control " value="${cantC}" disabled> <label>Ingrese el mes</label>
							<input type="text" class="form-control "
							placeholder="Ingrese mes"  name="mes" required>
					</div>
					<div class="form-inline">
						<label>Pago Total</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="text" class="form-control" id="exampleInputAmount" name="monto"
								placeholder="Monto" value="${cantT}" disable>
						</div>
						<button type="submit" class="btn btn-primary">Transfer
							cash</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
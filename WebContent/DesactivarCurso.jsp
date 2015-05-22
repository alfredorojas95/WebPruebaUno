<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/codigo.js"></script>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>Director - Desactivar Curso</title>
</head>
<body>
	<div class="pa">
		<h1 class="titulo">Director - Desactivar Curso</h1>
	</div>

	<div class="divMenu">
		<div class="divCodigo col-xs-6">
			<br><label class="textPa">Codigo Curso</label><br> 
			<input type="textCodigo"class="form-control col-sm-3 rut" placeholder="Codigo">
			<button type="button" class="btn btn-info boton1">Ingresar</button>
		</div>

		<div class="divInfo col-xs-6">
			<label class="textPa">Información del Curso</label>
			<div>
				<label>Nombre Curso</label> <input type="text" class="form-control"
					placeholder="Nombre Curso" disabled> 
				<label>Profesor Asignado</label> <input
					type="text" class="form-control" placeholder="Profesor Asignado" disabled>				
			</div>
		</div>
			<button type="button" class="btn btn-info btnKill">Desactivar</button><br><br>
	</div>
</body>
</html>
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
<title>Profesor - Inscribir Alumno</title>
</head>
<body>
	<div class="pa">
		<h1 class="titulo">Profesor - Inscribir Alumno</h1>
	</div>

	<div class="divMenu"><br>
		<div class="col-md-4">
			<form>
				<div class="form-group">
					<label class="textPa"Rut Alumno:">Rut Alumno</label> <input
						type="email" class="form-control" id="rut"placeholder="Rut Alumno">
				</div>
				<div class="pull-right">
					<button type="submit" class="btn btn-default pull-right">Ingresar</button>
				</div>
			</form>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label class="textPa"Informacion Alumno">Informacion Alumno</label><br>
				<br> <label for="Nombre Alumno:">Nombre Alumno:</label> <input
					type="email" class="form-control" id="nombre"
					placeholder="Nombre Alumno" disabled>
			</div>
			<div class="form-group">
				<label for="Apellido Alumno">Apellido Alumno:</label> <input
					type="email" class="form-control" id="apellido"
					placeholder="Apellido Alumno" disabled>
			</div>
			<div class="form-group">
				<label for="N° Matricula">N° Matricula:</label> <input type="email"
					class="form-control" id="matricula"
					placeholder="N° Matricula" disabled>
			</div>
		</div>
		<div class="form-group">
			<label class="textPa"col-md-4 control-label" for="selectmultiple">Cursos Disponibles</label>
			<div class="col-md-4">
				<select id="selectmultiple" name="selectmultiple"
					class="form-control" multiple="multiple">
					
				</select>
				<div class="pull-right">
					<button type="submit" class="btn btn-default pull-right">Inscribir</button>
				</div>
			</div>
			  
		</div>
		<!-- 
		<div class="divRut col-xs-4">
			<label class="textPa">Rut Alumno</label><br> 
			<input type="text"	class="form-control col-sm-8 rut" placeholder="Rut"><br>
			<button type="button" class="btn btn-info boton1">Ingresar</button>
		</div>

		<div class="divInfo col-xs-4">
			<label class="textPa">Información del Alumno</label>
			<div>
				<label>Nombre</label> <input type="text" class="form-control"
					placeholder="Nombre" disabled> <label>Apellido</label> <input
					type="text" class="form-control" placeholder="Apellido" disabled>
				<label>N° Matrícula</label> <input type="text" class="form-control"
					placeholder="N° Matrícula" disabled>
			</div>
		</div>

		<div class="divRamos col-xs-4">
			<label class="textPa">Inscribir Curso</label>
			<div>
				<label>Nombre</label> <input type="text" class="form-control"
					placeholder="Nombre" disabled>
			</div>
		</div>

 -->
	</div>
</body>
</html>
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
<title>Insert title here</title>
</head>
<body>
		<div class="pa1">
		<dir class="pa2">
			<br>
			<h1 class="titulo">Bienvenido</h1>
		</dir>
		<div>
			<div class="divp" style="float: left">
				<img src="png/Dr.png" class="img-circle">
				<h2>Director</h2>
				<button type="button" class="btn btn-info boton1">Ingresar</button>
				<div class="list-group lista1">
					<a href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/Morosos.jsp'">Morosos Matrícula</a> <a
						href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/MorososMensualidad.jsp'">Morosos Mensualidad</a> <a
						href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/ResporteSueldo.jsp'">Pago
						Profesores</a> <a href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/UpDesactivarCurso.jsp'">Desactivar
						Curso</a> <a href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/BalanceIngresoGasto.jsp'">Balance del Año</a>
				</div>
			</div>
			<div class="divp" style="float: left">
				<img src="png/Sc.png" class="img-circle">
				<h2>Secretaria</h2>
				<button type="button" class="btn btn-info boton2">Ingresar</button>
				<div class="list-group lista2">
					<a href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/RegistrarMatricula.jsp'">Registrar Pago Matrícula</a> <a
						href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/RegitrarMensualidad.jsp'">Registrar Pago Mensualidad</a>
				</div>
			</div>
			<div class="divp" style="float: left">
				<img src="png/Ja.png" class="img-circle">
				<h2>Administración</h2>
				<button type="button" class="btn btn-info boton3">Ingresar</button>
				<div class="list-group lista3">
					<a href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/RegistrarSueldoProfesor.jsp'">Registrar Sueldo Profesor</a> <a
						href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/UpCrearCursoAsignarProfesor.jsp'">Crear Curso</a>
				</div>
			</div>
			<div class="divp" style="float: left">
				<img src="png/Pr.png" class="img-circle">
				<h2>Profesor</h2>
				<button type="button" class="btn btn-info boton4">Ingresar</button>
				<div class="list-group lista4">
					<a href="#" class="list-group-item" onclick="location='http://localhost:8080/WebUniversidad/InsAlumnoEnCurso.jsp'">Inscribir alumnos en curso</a>
					<a href="#" class="list-group-item" onclick="http://localhost:8080/WebUniversidad/RegistrarNotajsp.jsp'">Registrar Promedio</a>
					<a href="#" class="list-group-item" onclick="http://localhost:8080/WebUniversidad/RegistrarAsistencia.jsp'">Registrar Asistencia</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
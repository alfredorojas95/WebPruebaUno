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
<style type="text/css"> /* personalizar componentes (etiquestas, campo, botón, mensaje) */
body {
	text-align: center; /* centrar todo los componentes*/
	font-family: Helvetica; /*  tipo de letra */
	color: #207584; /*color de letra*/
}
</style>

<body>

	<div class="pa1">
		<div class="pa2">
			<br>
			<h1 class="titulo">Crear curso y asignar profesor</h1>
		</div>
		
		<div class="col-xs-6">
		<h2>Crear curso</h2><br>
		${mensaje1}
		<form action="Crear" method="get">
			<h3>Nombre Curso:</h3>
			<input type="text" name="nombre" required> <br>
			<button type="submit" class="btn btn-default boton">Crearcurso</button><br> 
			
		</form>
		</div>
		<div class="col-xs-6">
		<form action="CrearCurso" method="get">
			<h2>Asignar profesor</h2>
			<br> ${mensaje2}
			<h3>Código curso:</h3>
			<input type="text" name="codigo" required> <br>
			<h3>Nombre curso:</h3>
			<input type="text" name="nomC" required> <br>
			<h3>Rut profesor:</h3>
			<input type="text" name="rut" required> <br>
			<button type="submit" class="btn btn-default boton">Asignar profesor</button>
			
		</form>
		</div>
		<form action="Menu.jsp">
			<input type="submit" value="Volver a Menú">
		</form>
		</form>
	</div>
	
</body>
</html>
<%@page import="Diagramarefinado.Finanza.Matricula" %>
<%@page import="orm.Estudiante" %>

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
		<dir class="pa2">
			<br>
			<h1 class="titulo">Estudiantes morosos pago matrícula</h1>
		</dir>
		 
			<% 
			//se crea un arreglo de orm.Estudiantes en donde se almacenan
			//todos los estudiantes cuyo estado de matrícula es cero '0'
			orm.Estudiante []est = Matricula.obtenerListMorososMatricula();
			//se recorre el arreglo y se muestran de forma vertical
			//en la ventana con la etiqueta p
			for(int i=0;i<est.length;i++){ %>	
			<p>
			
			<span> <%= est[i].getPersona().getNombre()%> </span>
			<span><%=est[i].getPersona().getApellido()%> </span>
			<span><%=est[i].getPersona().getRut() %> </span>
  			</p>
 			
			<% } %>
			
			<form action="Menu.jsp">
			<input type="submit" value="Volver a Menú">
			</form>
			
	 </div>
</body>
</html>
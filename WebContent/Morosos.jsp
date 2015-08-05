<%@page import="Diagramarefinado.Finanza.Matricula" %>
<%@page import="orm.Estudiante" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/estiloListasTablas.css"/>

<title>Insert title here</title>

</head>

	<body class="cuerpo"><br>
		

		<div class="caja">

			<!--Inicio caja título-->
			<div class="titulo"><br>
			<h1>Morosos Matrícula</h1>
			</div><br>
			<!--Fin caja título-->
			

			<!--Inicio caja tabla-->
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					 <thead class="info">
      					<th>Nombre</th>
				      	<th>Apellido</th>
				      	<th>Rut</th>
				      	<th>Monto</th>
					</thead>
					
					<% 
						orm.Estudiante []est = Matricula.obtenerListMorososMatricula();
						for(int i=0;i<est.length;i++){ 
					%>	
					<tr>
						<td><%= est[i].getPersona().getNombre()%> </td>
						<td><%=est[i].getPersona().getApellido()%> </td>
						<td><%=est[i].getPersona().getRut() %> </td>
						<td><%= "$20.000"%> </td>
					</tr>
					<% } %>
					
				</table>			
			</div>
				<!--fin caja título-->

				
			<!--Inicio caja boton atras-->
			<div class="boton">
				<form action="Menu.jsp">
					<input type="submit" class="btn btn-default"  value="Volver a Menú">
				</form>
			</div>
			<!--fin caja boton atras -->
			<br>
			<br>
			<br>
		</div>
		<!--fin  caja General-->
	</body>
</html>
<%@page import="servicioreporte.ServicioReporteProxy" %>
<%@page import="com.google.gson.Gson" %>

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
			<h1>Balance de ingreso y Gasto</h1>
			</div><br>
			<!--Fin caja título-->
			

			<!--Inicio caja tabla-->
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					 <thead class="info">
					 	<th>Mes</th>
      					<th>Ingresos</th>
				      	<th>Gastos</th>
				      	<th>Balance</th>
					</thead>
					
					<% 
					ServicioReporteProxy a = new ServicioReporteProxy();
					Gson gson = new Gson();
					String jsonMorosos = a.obtenerBalanceIngGasto();
					String[][] matriz = gson.fromJson(jsonMorosos, String[][].class);
					for(int i=0;i<matriz.length;i++){ 
					%>	
					<tr>
						<td><%= i+1%> </td>
						<td><%= matriz[i][0]%> </td>
						<td><%= matriz[i][1]%> </td>
						<td><%= matriz[i][2] %> </td>
						
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
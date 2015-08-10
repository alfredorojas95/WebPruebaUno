<%@page import="com.google.gson.Gson" %>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="serviciosueldo.ServicioSueldoProxy"%>

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
			<h1>Reporte sueldos profesor</h1>
			</div><br>
			<!--Fin caja título-->
			
			
			<!--Inicio caja datos-->
			<div class="entrada">
				<form action="ReporteProf" method="get" class="form-horizontal">
					<div class="form-group">
				    	<label class="col-sm-2 control-label">Rut:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="rutProfe"  placeholder="Rut profesor sin puntos y sin dígito verificador" required>
				    	</div>
				    </div>
				  
				  	<div class="form-group">
				  		<div class="col-sm-offset-2 col-sm-10">
				  			<button type="submit" class="btn btn-default" name="enviar">Obtener Sueldos</button>
				  		</div>
				  	</div>
				
				  
				</form>			
			</div>
			<!--fin caja datos-->
			

			
			
			<!--Inicio caja tabla-->
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							 <thead class="info">
		      					<th>Apellido</th>
						      	<th>Mes</th>
						      	<th>Cant. Cursos</th>
						      	<th>Monto</th>
						      	<th>Estado pago</th>
							</thead>
							
							
							<% 
							String jsonSueldos = (String)request.getAttribute("mensaje1");
							String matriz[][] = null;
							if(jsonSueldos!=null){
								if(jsonSueldos.equals("No se encontró el profesor")){%>
								<h4>No se encontraron sueldos para el rut ingresado</h4>
									
							<%} else {
								Gson gson = new Gson();
								
								matriz = gson.fromJson(jsonSueldos, String[][].class);
								
								for(int i=0;i<matriz.length;i++){ 
							
							
							%>	
								
							<tr>
								<td><%=matriz[i][0]%> </td>
								<td><%=matriz[i][1]%> </td>
								<td><%=matriz[i][2]%> </td>
								<td><%=matriz[i][3]%> </td>
								<td><%=matriz[i][4]%> </td>
							</tr>
							<% }}}%>
							
							
						</table>			
					</div>
					<!--fin tabla-->

				
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
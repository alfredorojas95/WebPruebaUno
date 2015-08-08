<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/CrearRegistro.css">
<title>Insert title here</title>
</head>
<body class="cuerpo"><br>
		

		<div class="caja">

			<!--Inicio caja título-->
			<div class="titulo">
			<h1>Jefe de Administración</h1>
			</div>
			<!--Fin caja título-->
			
			<!--Inicio caja bajada-->
			<div class="bajada" ><br>
			<h3>Desactivar Curso</h3>
			</div>
			<!--Fin caja bajada-->
			
			
			<!--Inicio caja datos-->
			<div class="entrada">
			
				<form action="BuscarCur" method="get" class="form-horizontal">
					<div class="form-group">
						<h3 class="izquierda">Buscar Curso</h3>
				    	<label class="col-sm-2 control-label">Código:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="codigo"  placeholder="ID del curso" required>
				    	</div>
				    </div>
				  
				  	<div class="form-group">
				  		<div class="col-sm-offset-2 col-sm-10">
				  			<button type="submit" class="btn btn-default" name="enviar">Buscar</button>
				  		</div>	
				  		
				  	</div>
				  	
				  	<div class="datos">
				  		<div class="panel panel-info">
				  			<h1>${mensaje3}</h1>
				  		</div>
				  	</div>
				  		
				  
				</form>
				
				<form action="DesactivarCurso" method="get" class="form-horizontal">
					<div class="form-group">
						<h3 class="izquierda">Desactivar Curso</h3>
				    	<label class="col-sm-2 control-label">Código:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="codigo"  placeholder="ID del curso" required>
				    	</div>
				    </div>
				  
				  	<div class="form-group">
				  		<div class="col-sm-offset-2 col-sm-10">
				  			<button type="submit" class="btn btn-default" name="enviar">Desactivar</button>
				  		</div>
				  		<p>${mensaje1}</p>
				  	</div>
				  
				</form>			
			</div>
			<!--fin caja datos-->

				
			<!--Inicio caja boton regreso-->
			<div class="boton">
				<form action="Menu.jsp">
					<input type="submit" class="btn btn-default"  value="Volver a Menú">
				</form>
			</div>
			<!--fin caja boton regreso-->
			
			
			<br>
			<br>
			<br>
		</div>
		<!--fin  caja General-->
	</body>
</html>
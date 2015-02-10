<?php 
include 'inc/base_de_datos.php';
$idCurso = $_POST["curso"];
//se hace el super join para que tome los estudiantes que ven esa materia
$idEstudiantesDelCurso = "SELECT ec.idEstudiante, e.nombre From estudiante_curso AS ec, estudiantes AS e where ec.idEstudiante= e.idEstudiante AND ec.idCurso=".$idCurso;

//variable de peticion de toda esa cosota
$resultQueryUnion = mysqli_query($con,$idEstudiantesDelCurso);
//y empieza el html
 ?>

 <!DOCTYPE html>
<html>
	<head>
		<title>Usuarios del curso seleccionado</title>
	</head>
	<body>
		<!-- Select -->
		<form action="consulta_nota.php" method="post">
		  Seleccione un estudiante:<br/> 
		   <select name="estudiante">
		   <?php
			   	while ($row = mysqli_fetch_array($resultQueryUnion)) {  
					echo "<option value='".$row['idEstudiante']."'>".$row['nombre'] ."</option>";
				}
			?>
		   </select>
		   

		   <?php
			   echo'	<input type="hidden" value="'.$idCurso.'" name="curso" />'

			?>


		   <p><input type="submit" value="Consultar" /></p>
		</form>
	</body>
</html>
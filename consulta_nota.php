<?php 
	include 'inc/base_de_datos.php';//carga la base de datos desde el include
	$idEstudiante = $_POST["estudiante"];//traer el id del estudiante del formulario anteiror
	$idCurso = $_POST["curso"];//traer el id del curso del primer formilario

	//se hace la union buscando tomar solo las notas del respectivo curso y el respectivo esutdiante y vincularla a su respectivo tipo
	$notasEstudianteDelCurso = "SELECT tn.nombre, tn.porcentaje, n.valor FROM tipos_notas AS tn , notas AS n WHERE tn.idTipo=n.idTipo AND n.idEstudiante=".$idEstudiante." AND n.idCurso=".$idCurso;
	//se toma el query de la peticion de las notas
	$resultadoUnion = mysqli_query($con,$notasEstudianteDelCurso);

	//A continuacion se sacara informacion con un proposito meramente "decoratico" para informar 
	//al usuario la procedencia exacta de los datos

	//para el nombre del estudiante
	//se hace la peticion del nombre desde el id del estudiante tomado del formulario anterior
	$nombreEstudiante = "SELECT nombre FROM estudiantes WHERE idEstudiante=".$idEstudiante;
	//se toma el query de la peticion del nombre del estudiante
	$resultadoNombreEstudiante = mysqli_query($con,$nombreEstudiante);
	//para el nombre del curso
	//se hace la peticion del nombre del curso desde el id del curso del primer formulario
	$nombreCurso = "SELECT nombre FROM cursos WHERE idCurso=".$idCurso;
		//se toma el query de la peticion del nombre del estudiante
	$resultadoNombreCurso = mysqli_query($con,$nombreCurso);

	
	
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Notas del usuario en el curso seleccionado</title>
	</head>
	<body>
		<!-- Select -->
		
		   <?php
		   		//$row = mysqli_fetch_array($resultadoUnion);
		   		$rowC = mysqli_fetch_array($resultadoNombreCurso);
		   		$rowE = mysqli_fetch_array($resultadoNombreEstudiante);

		   		echo"Curso: ".$rowC['nombre'];
		   		echo "</br>";
		   		echo"Estudiante: ".$rowE['nombre'];
		   		echo "</br>";

			  while ($row = mysqli_fetch_array($resultadoUnion)) {  
			  	$valorNota=$row['valor']*$row['porcentaje'];

			  	echo"
			  	 <tr>
				    <td>".$row['nombre']."</td>
				    <td>".$row['valor']."</td> 
				  </tr>
				";
				echo "</br>";
				$total+=$valorNota;

				}
				echo "Nota Definitiva:".$total;
			?>
		   
	</body>
</html>
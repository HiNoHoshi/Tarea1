<?php

include 'inc/base_de_datos.php';
	$query = "SELECT * FROM cursos ORDER BY idCurso ASC";
	$resultQuery = mysqli_query($con,$query);
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<form action="consulta_curso.php" method="post">
	<select name="curso">
		<?php
		while ($row = mysqli_fetch_array($resultQuery)) {
		echo "<option value='".$row["idCurso"]."'> ".$row["nombre"]."</option>";
	}
		?>
	</select>
	<p><input type= "submit" value="ok"/></p>
	
</form>

</body>
</html>
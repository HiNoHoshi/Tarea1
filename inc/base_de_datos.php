<?php
//Datos para conexión//
$host="127.0.0.1";
$user="root";
$password="manchas";
$db="cursos";
//Creo una variable conexión//
$con=mysqli_connect($host,$user,$password)or die("no se pudo conectar");
//Selecciono la base de datos//
mysqli_select_db($con,$db)or die("o se pudo conectar con la base de datos");
?>
<?php
$serverName="localhost";
$userName="root";
$pasword="";
$dbName="empresa";

$conn = mysqli_connect($serverName, $userName, $pasword, $dbName);

// Verificar la conexión
if (!$conn) {
    die("Conexión a la base de datos fallida: " . mysqli_connect_error());
}

echo "Conexión exitosa";

// Aquí puedes realizar consultas a la base de datos

// Cerrar la conexión
//mysqli_close($conn);

?>
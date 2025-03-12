<?php

include 'conexion.php';

if($_SERVER["REQUEST_METHO"]=="POST"){
    $nombre=$conn->real_escape_string($_POST['nombre']);
    $email=$conn->real_escape_string($_POST['email']);
    $telefono=$conn->real_escape_string($_POST['telefono']);
    $direccion=$conn->real_escape_string($_POST['direccion']);
    $ciudad=$conn->real_escape_string($_POST['ciudad']);
    $pais=$conn->real_escape_string($_POST['pais']);
    $estado=$conn->real_escape_string($_POS['estado']);

    $sql="UPDATE clisente SET 
        nombre='$nombre',
        email='$email',
        telefono='$telefono',
        direccion='$direccion',
        ciudad='$ciudad',
        pais='$pais',
        estado='$estado'
        WHERE id='$id'";

if($conn->query($sql)===TRUE){
    echo"registro modificado";
    header("index.php");
    exit();
}else{
    echo"error".$conn->error;
}
$conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<h2>Clientes</h2>
<a href="modificar.php">Editar</a>

Nombre:
<input type="text" name="nombre" id="">
Email:
<input type="text" name="email" id="">
Telefono:
<input type="number" name="telefono" id="">
Direccion:
<input type="text" name="direccion" id="">
Ciudad:
<input type="text" name="ciudad" id="">
Pais:
<input type="text" name="pais" id="">
Estaso:
<input type="text" name="estado" id="">
</body>
</html>
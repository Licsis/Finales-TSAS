<?php

include 'conexion.php';

if($_SERVER["REQUEST_METHOD"]=="POST"){
    $nombre=$_POST['nombre'];
    $email=$_POST['email'];
    $telefono=$_POST['telefono'];
    $direccion=$_POST['direccion'];
    $ciudad=$_POST['ciudad'];
    $pais=$_POST['pais'];
    $estado=$_POST['estado'];

    if($conn->query($sql)===TRUE){
        echo"registro creado";
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
    
<h2>Gestion</h2>

<form method="post">

Nombre:
<input type="text" name="nombre" required >

Email:
<input type="text" name="email" required>

Telefono:
<input type="text" name="telefono" id="">

Direccion:
<input type="text" name="direccion" id="">

Ciudad:
<input type="text" name="ciudad" id="">

Pais:
<input type="text" name="pais" id="">

Estado:
<input type="text" name="estado" id="">

<input type="submit" value="Crear">

</form>


</body>
</html>
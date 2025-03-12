<?php

include 'conexion.php';

$sql="SELECT * FROM clientes";
$result=mysqli_query($conn,$sql);

    //var_dump("--- CONSULTA --- ".$result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

Registro de Clientes:

<a href="crear.php">Nuevo Cliente</a>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Email</th>
        <th>Telefono</th>
        <th>Direccion</th>
        <th>Ciudad</th>
        <th>Pais</th>
        <th>Estado</th>
        <th>Comentarios</th>
        <th>Acciones</th>
    </tr>

    <?php
    //var_dump($result);
    //if($result->num_rows > 0 ){
        while($row=mysqli_fetch_assoc($result));
    
    ?>

    <tr>
        <td><?=$row['id']?></td>
        <td><?=$row['nombre']?></td>
        <td><?=$row['email']?></td>
        <td><?=$row['telefono']?></td>
        <td><?=$row['direccion']?></td>
        <td><?=$row['ciudad']?></td>
        <td><?=$row['pais']?></td>
        <td><?=$row['estado']?></td>
        <td><?=$row['comentarios']?></td>
        <td>
            <a href="editar.php?id<?=$row['id']?>">editar</a>
            <a href="eliminar.php?id=<?=$row['id']?>" onclick="confirm return('¿seguro que deseas eliminar?')">eliminar</a>
        </td>
    </tr>
    <?php 'endwhile'; ?>

        </table>

</body>
</html>

<?php //}

//$conn->close();

?>
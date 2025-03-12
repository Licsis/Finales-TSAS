<?php

include 'conexion.php';

$sql="select * From clientes";
$result=$conn->query($sql);

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
        <td>ID</td>
        <td>Nombre</td>
        <td>Email</td>
        <td>Telefono</td>
        <td>Direccion</td>
        <td>Ciudad</td>
        <td>Pais</td>
        <td>Estado</td>
        <td>Acciones</td>
    </tr>

    <?php

    if($result->num_rows > 0 ){
        while($row=$result->fetch_assoc());
    }
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
        <td>
            <a href="editar.php?id<?=$row['id']?>">editar</a>
            <a href="eliminar.php?id=<?=$row['id']?>" onclick="confirm return('¿seguro que deseas eliminar?')">eliminar</a>
        </td>
    </tr>
    <?php 'endwhile'; ?>

        </table>

</body>
</html>

<?php $conn->close(); ?>
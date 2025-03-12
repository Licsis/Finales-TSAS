<?php

include 'conexion.php';

if($_SERVER["REQUEST_METHOD"]=="POST"){
    $id=$_POST['id'];
    $sql="Delete from clientes Where id='$id'";

    if($conn->query($sql)===TRUE){
        echo "registro eliminado";
        header("Location:index.php");
    }else{
        echo "error".$conn->error;
    }
    $conn->close();
}

?>


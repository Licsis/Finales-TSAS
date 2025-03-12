<?php
$serverName="localhost";
$userName="root";
$pasword="";
$dbName="empresa";

$conn = new mysqli($serverName, $userName, $pasword, $dbName);

if($conn->connect_error){
    die("conexion fallida".$conn->connect_error);
}

?>
<?php
include('../conexion.php');
$correo = $_POST['correo'];
$html= "1";
$resultados = mysqli_query($conexion,"SELECT tblAdministradores.correo FROM tblAdministradores Where tblAdministradores.correo = '$correo'");
$fila = mysqli_num_rows($resultados);
if($fila==0){
    $html = "0";
}
echo $html;



 ?>

<?php
include('../conexion.php');
$codigo = $_POST['codigo'];
$html= "1";
$resultados = mysqli_query($conexion,"SELECT tblAdministradores.codigo FROM tblAdministradores Where tblAdministradores.codigo = '$codigo'");
$fila = mysqli_num_rows($resultados);
if($fila==0){
    $html = "0";
}
echo $html;


 ?>

<?php

include('../conexion.php');
$codigo = $_POST['codigo'];
$contador = "0";
$query = "SELECT Codigos.codigo, Codigos.id_rol_codigo from Codigos Where activo = '1'";
$resultado = mysqli_query($conexion, $query);
$rol ="";
while ($filas = mysqli_fetch_array($resultado)) {
    $hash = $filas['codigo'];
    $hash1 = hash("whirlpool", $codigo);
    $hash1 = hash("sha3-512", $hash1);
    if(password_verify($hash1, $hash)){
      $contador = $contador."1";
      $rol = $filas['id_rol_codigo'];
    }
}
if($contador != "0"){
  if($rol === "2"){
    echo "2";
  }
  if($rol === "1"){
    echo "1";
  }
}
else {
    echo "Ese codigo no existe";
}
 ?>

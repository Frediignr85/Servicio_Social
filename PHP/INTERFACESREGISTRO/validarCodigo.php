<?php

  include('../conexion.php');
  $codigo = $_POST['codigo'];
  $html= "1";
  $resultados = mysqli_query($conexion,"SELECT tblEstudiantes.codigo FROM tblEstudiantes Where tblEstudiantes.codigo = '$codigo'");
  $fila = mysqli_num_rows($resultados);
  if($fila==0){
      $html = "0";
  }
  echo $html;






 ?>

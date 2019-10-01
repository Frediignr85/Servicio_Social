<?php

  include('../conexion.php');
  $carrera = $_POST['carrera'];
  $html= "0";
  $resultados = mysqli_query($conexion,"SELECT tblCarreras.nombre FROM tblCarreras Where tblCarreras.nombre = '$carrera'");
  $fila = mysqli_num_rows($resultados);
  if($fila==0){
      $html = "1";
  }
  echo $html;




 ?>

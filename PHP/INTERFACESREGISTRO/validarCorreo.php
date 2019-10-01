<?php

  include('../conexion.php');
  $correo = $_POST['correo'];
  $html= "1";
  $resultados = mysqli_query($conexion,"SELECT tblEstudiantes.email FROM tblEstudiantes Where tblEstudiantes.email = '$correo'");
  $fila = mysqli_num_rows($resultados);
  if($fila==0){
      $html = "0";
  }
  echo $html;



 ?>

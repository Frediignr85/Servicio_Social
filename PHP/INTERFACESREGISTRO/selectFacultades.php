<?php

  include('../conexion.php');
  $html= "<option value='0'>Seleccionar la facultad a la que pertenece</option>";
  $resultados = mysqli_query($conexion,"SELECT tblFacultades.idFacultad, tblFacultades.nombre FROM tblFacultades ORDER BY tblFacultades.nombre ASC");
  $fila = mysqli_num_rows($resultados);
  if($fila==0){
      $nombre= "Ha ocurrido un problema.";
  }
  else{
    while($consulta = mysqli_fetch_array($resultados))
    {
      $idFacultad = $consulta['idFacultad'];
      $nombre = $consulta['nombre'];
      $html.= "<option value='$idFacultad'>$nombre</option>";
    }
  }
  echo $html;
 ?>

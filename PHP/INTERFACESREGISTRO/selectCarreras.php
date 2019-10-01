<?php

  include('../conexion.php');
  $idFacultad = $_POST['idFacultad'];
  $html= "<option value='0'>Seleccionar la carrera a la que pertenece</option>";
  $resultados = mysqli_query($conexion,"SELECT tblCarreras.idCarrera, tblCarreras.nombre FROM tblCarreras Where tblCarreras.idFacultadCarrera = '$idFacultad' ORDER BY tblCarreras.nombre ASC");
  $fila = mysqli_num_rows($resultados);
  if($fila==0){
      $nombre= "Ha ocurrido un problema.";
  }
  else{
    while($consulta = mysqli_fetch_array($resultados))
    {
      $idCarrera = $consulta['idCarrera'];
      $nombre = $consulta['nombre'];
      $html.= "<option value='$idCarrera'>$nombre</option>";
    }
  }
  echo $html;




?>

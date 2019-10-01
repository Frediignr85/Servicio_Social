<?php

include("conexion.php");

?>
<select class='form-control cbx1' id='cbx_Roles' name='cbx_Roles'>
<?php
echo "<option value='0'>Seleccionar Rol</option>";
$resultados1 = mysqli_query($conexion,"SELECT * FROM Roles ORDER BY Roles.nombre_rol ASC");
$fila1 = mysqli_num_rows($resultados1);
if($fila1==0){
  $nombre= "Ha ocurrido un problema.";
}
else{
  while($consulta1 = mysqli_fetch_array($resultados1))
  {
    $Id_Rol = $consulta1['Id_Rol'];
    $nombre_rol = $consulta1['nombre_rol'];
    echo "<option value='$Id_Rol'>$nombre_rol</option>";
  }
}
echo "</select>";
mysqli_close($conexion);






?>

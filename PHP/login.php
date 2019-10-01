<?php
  include("conexion.php");
  $correo = $_POST['correo'];
  $contrasenia = $_POST['contrasenia'];
  $contador = "";
  $idRol = "";
  $consulta = "SELECT tblLogins.email, tblLogins.contrasenia, tblLogins.idRolLogin from tblLogins where tblLogins.email = '$correo'";
  $resultado = mysqli_query($conexion, $consulta);
  while ($filas = mysqli_fetch_array($resultado)){
      $hash = $filas['contrasenia'];
      $hash1 = hash("whirlpool", $contrasenia);
      $hash1 = hash("sha3-512", $hash1);
      if(password_verify($hash1, $hash)){
        $contador = $contador."1";
        $idRol.= $filas['idRolLogin'];
      }
  }
  if($contador === "1"){
    echo "$idRol";
  }
  else {
    echo "No se ha encontrado la cuenta!.";
  }
  mysqli_close($conexion);

 ?>

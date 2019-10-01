<?php
  include("../conexion.php");
  $nombres = $_POST['nombres'];
  $apellidos = $_POST['apellidos'];
  $correo = $_POST['correo'];
  $contrasenia = $_POST['contrasenia'];
  $fechaDeNacimiento = $_POST['fechaDeNacimiento'];
  $direccion = $_POST['direccion'];
  $telefonoMovil = $_POST['telefonoMovil'];
  $telefonoFijo = $_POST['telefonoFijo'];
  $sexo = $_POST['sexo'];
  $codigo = $_POST['codigo'];
  $idAdministrador = "";
  if($sexo === "Masculino"){
    $sexo = "M";
  }
  if($sexo === "Femenino"){
    $sexo = "F";
  }
  $fechaActual = date('Y-m-d H:i:s');
  $insercionEstudianteBDD = "INSERT INTO tblAdministradores (idAdministrador, nombres, apellidos, correo, fechaDeNacimiento, fechaDeRegistro, direccion, telefonoMovil, telefonoFijo, sexo, codigo, foto, activo) VALUES (NULL, '$nombres', '$apellidos', '$correo', '$fechaDeNacimiento', '$fechaActual', '$direccion', '$telefonoMovil', '$telefonoFijo', '$sexo', '$codigo', NULL, '1');";
  if ($conexion->query($insercionEstudianteBDD) === TRUE) {
    $consultaIdAdministrador = "SELECT tblAdministradores.idAdministrador FROM tblAdministradores Where tblAdministradores.correo = '$correo'";
    $resultado1 = mysqli_query($conexion, $consultaIdAdministrador);
    while ($row1 = mysqli_fetch_array($resultado1)) {
      $idAdministrador.= $row1['idAdministrador'];
    }
    $hash = hash("whirlpool", $contrasenia);
    $hash = hash("sha3-512", $hash);
    $hash = password_hash($hash, PASSWORD_DEFAULT, ['cost' =>  4]);
    $insercionLogin = "INSERT INTO tblLogins (idLogin, email, contrasenia, idUsuarioLogin, fechaDeRegistro, activo, idRolLogin) values (NULL, '$correo', '$hash', '$idAdministrador', '$fechaActual', '1', '1')";
    if ($conexion->query($insercionLogin) === TRUE){
      echo "1";
    }
    else {
      echo "Error: " . $insercionLogin . "<br>" . mysqli_error($conexion);
    }

  }
  else {
    echo "Error: " . $insercionEstudianteBDD . "<br>" . mysqli_error($conexion);
  }



 ?>

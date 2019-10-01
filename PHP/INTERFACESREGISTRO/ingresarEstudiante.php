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
  $trabaja = $_POST['trabaja'];
  $becado = $_POST['becado'];
  $sexo = $_POST['sexo'];
  $carrera = $_POST['carrera'];
  $codigo = $_POST['codigo'];
  $numMateriasCursadas = $_POST['numMateriasCursadas'];
  $ciclos = $_POST['ciclos'];
  $idCarrera = "";
  $idEstudiante = "";
  if($trabaja === "Si"){
    $trabaja = "S";
  }
  if($trabaja === "No"){
    $trabaja = "N";
  }
  if($becado === "Si"){
    $becado = "S";
  }
  if($becado === "No"){
    $becado = "N";
  }
  if($sexo === "Masculino"){
    $sexo = "M";
  }
  if($sexo === "Femenino"){
    $sexo = "F";
  }
  $fechaActual = date('Y-m-d H:i:s');
  $consultaCarrera = "SELECT tblCarreras.idCarrera, tblCarreras.nombre FROM tblCarreras Where tblCarreras.nombre = '$carrera'";
  $resultado = mysqli_query($conexion, $consultaCarrera);
  while ($row = mysqli_fetch_array($resultado)) {
    $idCarrera.= $row['idCarrera'];
  }
  $insercionEstudianteBDD = "INSERT INTO tblEstudiantes (idEstudiante, nombres, apellidos, email, direccion, telefonoMovil, telefonoFijo, trabaja, becado, sexo, codigo, numMateriasCursadas, ciclo, foto, fechaHoraRegistro, activo, idCarreraEstudiante) VALUES (NULL, '$nombres', '$apellidos', '$correo', '$direccion', '$telefonoMovil', '$telefonoFijo', '$trabaja', '$becado', '$sexo', '$codigo', '$numMateriasCursadas', '$ciclos', NULL, '$fechaActual', '1', '$idCarrera');";
  if ($conexion->query($insercionEstudianteBDD) === TRUE) {
    $consultaIdEstudiante = "SELECT tblEstudiantes.idEstudiante FROM tblEstudiantes Where tblEstudiantes.email = '$correo'";
    $resultado1 = mysqli_query($conexion, $consultaIdEstudiante);
    while ($row1 = mysqli_fetch_array($resultado1)) {
      $idEstudiante.= $row1['idEstudiante'];
    }
    $hash = hash("whirlpool", $contrasenia);
    $hash = hash("sha3-512", $hash);
    $hash = password_hash($hash, PASSWORD_DEFAULT, ['cost' =>  4]);
    $insercionLogin = "INSERT INTO tblLogins (idLogin, email, contrasenia, idUsuarioLogin, fechaDeRegistro, activo, idRolLogin) values (NULL, '$correo', '$hash', '$idEstudiante', '$fechaActual', '1', '2')";
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

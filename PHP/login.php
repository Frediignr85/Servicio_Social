<?php
  include("conexion.php");
  $correo = $_POST['correo'];
  $contrasena = $_POST['contrasenia'];
  $pass = password_hash($contrasena, PASSWORD_DEFAULT, ['cost' =>  10]);
  $insercion = "INSERT INTO Inicios_Sesiones (correo, contrasenia, id_rol_Inicio_Sesion, id_estudiante_Inicio_Sesion) values ('$correo', '$pass', '1', '1')";
  if ($conexion->query($insercion) === TRUE) {
      $query2 = "SELECT * FROM Inicios_Sesiones Where correo = '$correo'";
      $resultados2 = mysqli_query($conexion,$query2);
      while ($row2 = mysqli_fetch_array($resultados2)) {
        $password = $row2['contrasenia'];
        if(password_verify($contrasena, $password)){
          echo "FUNCIONA EL ALGORITMO";
        }
        else {
          echo "NO FUNCIONA";
        }
      }
  }
  else {
    echo "Error: " . $query2 . "<br>" . mysqli_error($conexion);
  }

 ?>

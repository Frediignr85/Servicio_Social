<?php

$host = "localhost";    // sera el valor de nuestra BD
$basededatos = "Servicio_Social";    // sera el valor de nuestra BD
$usuariodb = "root";    // sera el valor de nuestra BD
$clavedb = "estereotipo";    // sera el valor de nuestra BD
// tabla de usuarios
//error_reporting(0); //No me muestra errores
$conexion = new mysqli($host,$usuariodb,$clavedb,$basededatos);
if ($conexion->connect_errno) {
  echo "Nuestro sitio experimenta fallos....";
  exit();
}
if (!$conexion->set_charset("utf8")) {
    printf("Error cargando el conjunto de caracteres utf8: %s\n", $c->error);
    exit();
}

 ?>

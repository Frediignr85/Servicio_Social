<?php
function generarCodigo($longitud) {
$llave = '';
$caracteres = '1234567890abcdefghijklmnopqrstuvwxyz';
$max = strlen($caracteres)-1;
for($i=0;$i < $longitud;$i++) $llave .= $caracteres{mt_rand(0,$max)};
verificarCodigo($llave);
}
function verificarCodigo($llave){
  include("conexion.php");
  $contador = "1";
  $query = "SELECT Codigos.codigo from Codigos Where activo = '1'";
  $resultado = mysqli_query($conexion, $query);
  while ($filas = mysqli_fetch_array($resultado)) {
      $hash = $filas['contrasenia'];
      $hash1 = hash("whirlpool", $llave);
      $hash1 = hash("sha3-512", $hash1);
      if(password_verify($hash1, $hash)){
        $contador = $contador."1";
      }
  }
  if($contador === "1"){
    agregarCodigo($llave);
  }
  else {
      generarCodigo(6);
  }
  mysqli_close($conexion);
}
function agregarCodigo($llave){
  include("conexion.php");
  $rol = $_POST['rol'];
  $query = "SELECT Roles.Id_Rol from Roles Where nombre_rol = '$rol'";
  $resultado = mysqli_query($conexion, $query);
  $Id_Rol = "";
  while ($filas = mysqli_fetch_array($resultado)) {
      $Id_Rol.= $filas['Id_Rol'];
  }
  if($rol === "Estudiante"){
    $llave = "ES".$llave;
    $hash = hash("whirlpool", $llave);
    $hash = hash("sha3-512", $hash);
    $hash = password_hash($hash, PASSWORD_DEFAULT, ['cost' =>  4]);
    $query1 = "INSERT INTO Codigos (Id_Codigo, codigo, activo, id_rol_codigo) VALUES (NULL, '$hash','1', '$Id_Rol')";
    if ($conexion->query($query1) === TRUE) {
      $fechaActual =date("d/m/Y");
      $generador = "Steven";
      date_default_timezone_set('America/Tegucigalpa');
      $horaActual = date('H:i:s',time());
      $query = "SELECT MAX(Id_Codigo) as max from Codigos";
      $resultado = mysqli_query($conexion, $query);
      while ($filas = mysqli_fetch_array($resultado)) {
          $numeroCodigo = $filas['max'];
      }
      echo "<table border='2' style=”width: 90%”>
			       <caption>Ficha de codigo de estudiante generado</caption>
			          <colgroup>
				            <col style='width: 20%'/>
				            <col style='width: 35%'/>
				            <col style='width: 35%'/>
			          </colgroup>
			          <thead>
				        <tr>
					<th rowspan='2'>Codigo Nº: $numeroCodigo</th>
					<th colspan='2'>Codigo para Estudiante</th>
				</tr>
				<tr>
					<th>Fecha de generacion: $fechaActual</th>
					<th>Hora de generacion: $horaActual</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan='3'>Al registrarse como estudiante tendra acceso a la utilizacion del modulo de peticiones/respuestas, en el cual podra realizar peticiones al administrador de Servicio Social, para asi tener una comunicacion menos tediosa en el sentido del transporte hasta las oficinas.</td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<th>*</th>
					<td>Generado por: </td>
					<td>$generador</td>
				</tr>
				<tr>
					<th>*</th>
					<td>Codigo de registro:</td>
					<td>$llave</td>
				</tr>
        <tr>
					<th>*</th>
					<td>Dias restantes para registrarse: </td>
					<td>3</td>
				</tr>
			</tbody>
		</table>
    <center>
      <button type='button' class='btn btn-info' id='btnGenerarReporteCodigo' onclick='generarReporteCodigo();'>Imprimir Reporte</button>
      <button type='button' class='btn btn-warning'>Enviar Reporte por Email</button>
      <button type='button' class='btn btn-danger'>Generar un nuevo codigo</button>
    </center>";
    }
    else {
      echo "Error: " . $query1 . "<br>" . mysqli_error($conexion);
    }
  }
  else {
    $llave = "AD".$llave;
    $hash = hash("whirlpool", $llave);
    $hash = hash("sha3-512", $hash);
    $hash = password_hash($hash, PASSWORD_DEFAULT, ['cost' =>  4]);
    $query1 = "INSERT INTO Codigos (Id_Codigo, codigo, activo, id_rol_codigo) VALUES (NULL, '$hash','1', '$Id_Rol')";
    if ($conexion->query($query1) === TRUE) {
      $fechaActual =date("d/m/Y");
      $generador = "Steven";
      date_default_timezone_set('America/Tegucigalpa');
      $horaActual = date('H:i:s',time());
      $query = "SELECT MAX(Id_Codigo) as max from Codigos";
      $resultado = mysqli_query($conexion, $query);
      while ($filas = mysqli_fetch_array($resultado)) {
          $numeroCodigo = $filas['max'];
      }
      echo "<table border='2' style=”width: 100%”>
			       <caption>Ficha de codigo de administrador generado</caption>
			          <colgroup>
				            <col style='width: 20%'/>
				            <col style='width: 40%'/>
				            <col style='width: 40%'/>
			          </colgroup>
			          <thead>
				        <tr>
					<th rowspan='2'>Codigo Nº: $numeroCodigo</th>
					<th colspan='2'>Codigo para Administrador</th>
				</tr>
				<tr>
					<th>Fecha de generacion: $fechaActual</th>
					<th>Hora de generacion: $horaActual</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan='3'>Al registrarse como administrador tendra los permisos para realizar las labores de: administracion de proyectos, administracion de estudiantes, y administracion de peticiones/respuestas.</td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<th>*</th>
					<td>Generado por: </td>
					<td>$generador</td>
				</tr>
				<tr>
					<th>*</th>
					<td>Codigo de registro:</td>
					<td>$llave</td>
				</tr>
        <tr>
					<th>*</th>
					<td>Dias restantes para registrarse: </td>
					<td>3</td>
				</tr>
			</tbody>
		</table>
    <center>
      <button type='button' class='btn btn-info' id='btnGenerarReporteCodigo' onclick='generarReporteCodigo();'>Imprimir Reporte</button>
      <button type='button' class='btn btn-warning'>Enviar Reporte por Email</button>
      <button type='button' class='btn btn-danger'>Generar un nuevo codigo</button>
    </center>";
    }
    else {
      echo "Error: " . $query1 . "<br>" . mysqli_error($conexion);
    }
  }
  mysqli_close($conexion);
}

generarCodigo(6);

?>

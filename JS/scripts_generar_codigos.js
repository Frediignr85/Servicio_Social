$(document).ready(function(){
  function select_generador_de_codigo(){
    $.ajax({
      url: "../PHP/select_generador_de_codigo.php",
      method:"POST",
      success: function(data){
        $("#SelectTipoUsuario").html(data);
      }
    });
  }
  select_generador_de_codigo();
});

function GenerarCodigo(){
  var rol = String($("#cbx_Roles option:selected").text());
  if(rol == "Estudiante" || rol == "Administrador"){
    var parametros = {
      "rol" : rol
    }
    $.ajax({
		type:"POST",
		url:"../PHP/generador_codigos.php",
		data: parametros,
		success:function(data)
		{
			alert("Codigo generado correctamente: "+ data);
		}
	});
  }
  else {
    alert("Eliga una opcion real");
  }
}

function llenarGeneradorDeCodigo(){
  $.ajax({
    url: "../PHP/generarCodigoshtml.php",
    method:"POST",
    success: function(data){
      $("#contenedorVista").html(data);
    }
  });
}
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
  llenarGeneradorDeCodigo();
  select_generador_de_codigo();
});
var reporteCodigo;
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
      $("#fichaDeCodigoGenerado").html(data);
      reporteCodigo = data;
      $('#botonGenerarCodigo').attr("disabled", true);
      $("#botonGenerarCodigo").css("background-color", "grey");
      $("#cbx_Roles").prop('disabled', true);
			$("#cbx_Roles").css("background-color", "grey");
		}
	});
  }
  else {
    alert("Eliga una opcion real");
  }
}
function generarReporteCodigo(){
  var parametros = {
    "reporte" : reporteCodigo
  };
  $.ajax({
  type:"POST",
  url:"../PHP/pruebasCodigos.php",
  data: parametros,
  success:function(data)
  {
    alert(data);
  }
});
}
$(document).ready(function () {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar, #content').toggleClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });

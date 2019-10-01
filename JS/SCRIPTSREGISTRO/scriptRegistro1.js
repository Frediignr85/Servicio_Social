var NOMBRES;
var APELLIDOS;
var CORREO;
var CONTRASENIA;
var FECHADENACIMIENTO;
var DIRECCION;
var TELEFONOMOVIL;
var TELEFONOFIJO;
var TRABAJA;
var BECADO;
var SEXO;
var CARRERA;
var CODIGO;
var NUMMATERIASCURSADAS;
var CICLOS;

var contadorInterfaz = 0;
$(document).ready(function(){
  function llenarFacultades(){
    $.ajax({
      url: "../../PHP/INTERFACESREGISTRO/selectFacultades.php",
      method:"POST",
      success: function(data){
        $("#cbx_Facultad").html(data);
      }
    });
  }
  llenarFacultades();
  $("#cbx_Facultad").change(function () {
        $("#cbx_Facultad option:selected").each(function () {
          idFacultad = $(this).val();
          $.post("../../PHP/INTERFACESREGISTRO/selectCarreras.php", { idFacultad: idFacultad }, function(data){
            $("#cbx_Carrera").html(data);
          });
        });
      });
});
function soloNumeros(e)
{
	var key = window.Event ? e.which : e.keyCode
	return ((key >= 48 && key <= 57) || (key==8))
}
function validarFecha(fecha){
	var dtCh= "/";
	var minYear=1930;
	var maxYear=2005;
	function isInteger(s){
		var i;
		for (i = 0; i < s.length; i++){
			var c = s.charAt(i);
			if (((c < "0") || (c > "9"))) return "1";
		}
		return "0";
	}
}

var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function(){
  var pasa = 0;
  var correo = true;
  if(contadorInterfaz == 0){
    var cont1= 0;
    var nombres = $('#nombres').val();
    var apellidos = $('#apellidos').val();
    var email = $('#email').val();
    var password = $('#password').val();
    var passwordRepetido = $('#passwordRepetido').val();
    if(email == ""){
      document.getElementById("email").setCustomValidity("Debe de ingresar su email!!");
      cont1++;
    }
    if(nombres == ""){
      document.getElementById("nombres").setCustomValidity("Debe de ingresar sus nombres!!");
      cont1++;
    }
    if(apellidos == ""){
      document.getElementById("apellidos").setCustomValidity("Debe de ingresar sus apellidos!!");
      cont1++;
    }
    if(password == ""){
      document.getElementById("password").setCustomValidity("Debe de ingresar su contraseña!!");
      cont1++;
    }
    if(passwordRepetido == ""){
      document.getElementById("passwordRepetido").setCustomValidity("Debe validar su contraseña!!");
      cont1++;
    }
    if(passwordRepetido != password){
      alert("Las contraseñas son distintas");
      cont1++;
    }
    if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(email)){
      var parametrosRegistro = {
        "correo" : email
      };
      $.ajax({
              data:  parametrosRegistro, //datos que se envian a traves de ajax
              url:   '../../PHP/INTERFACESREGISTRO/validarCorreo.php', //archivo que recibe la peticion
              type:  'post',
              async: false,
              success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                      if(response == "1"){
                          cont1++;
                          alert("Ese correo ya se encuentra en el sistema");
                      }
              }
      });
    }
    else{
      alert("El correo no es valido");
      cont1++;
    }
    if(cont1 == 0){
        NOMBRES = nombres;
        APELLIDOS = apellidos;
        CORREO = email;
        CONTRASENIA = password;
        pasa++;
    }
  }
  if(contadorInterfaz == 1){
    var cont2= 0;
    var fechaDeNacimiento = String(document.getElementById("fechaDeNacimiento").value);
    var direccion = $('#direccion').val();
    var telefonoMovil = $('#telefonoMovil').val();
    var telefonoFijo = $('#telefonoFijo').val();
    if(fechaDeNacimiento == ""){
      document.getElementById("fechaDeNacimiento").setCustomValidity("Debe de ingresar una fecha!!");
      cont2++;
    }
    if(fechaDeNacimiento != ""){
      var fechaMinima = new Date(1930,01,01); //31 de diciembre de 2015
      var fechaMaxima = new Date(2005,12,31);
      var fechaActual = new Date(fechaDeNacimiento);
      if(fechaMaxima < fechaActual || fechaActual < fechaMinima){
        alert("Lastimosamente solo puede introducir una fecha entre el 1 de enero de 1930 y el 31 de diciembre de 2005 ;)");
        $("#fechaDeNacimiento").val("2000/12/31");
        cont2++;
      }
    }
    if(direccion == ""){
      document.getElementById("direccion").setCustomValidity("Debe de ingresar una direccion!!");
      cont2++;
    }
    if(telefonoMovil == ""){
      document.getElementById("telefonoMovil").setCustomValidity("Debe de ingresar un numero de telefono movil!!");
      cont2++;
    }
    if(telefonoMovil != ""){
      if(isNaN(telefonoMovil)){
        alert("Solo se pueden ingresar numeros, intenta de nuevo ;)");
        cont2++;
      }
      else {

      }
    }
    if(telefonoFijo == ""){
      document.getElementById("telefonoFijo").setCustomValidity("Debe de ingresar un numero de telefono fijo!!");
      cont2++;
    }
    if(telefonoFijo != ""){
      if(isNaN(telefonoFijo)){
        alert("Solo se pueden ingresar numeros, intenta de nuevo ;)");
        cont2++;
      }
      else {

      }
    }
    if(cont2 == 0){
      DIRECCION = direccion;
      FECHADENACIMIENTO = fechaDeNacimiento;
      TELEFONOMOVIL = telefonoMovil;
      TELEFONOFIJO = telefonoFijo;
      pasa++;
    }
  }
  if(contadorInterfaz == 2){
    var cont3 = 0;
    var trabaja = String($("#cbx_Trabaja option:selected").text());
    var becado = String($("#cbx_Becado option:selected").text());
    var sexo = String($("#cbx_Sexo option:selected").text());
    if(trabaja == "¿Trabaja?"){
      document.getElementById("cbx_Trabaja").setCustomValidity("Debe de ingresar una opcion!!");
      cont3++;
    }
    if(trabaja != "¿Trabaja?"){
      if(trabaja != "Si" && trabaja != "No"){
        alert("Seleccione una opcion correcta para el campo 'Trabaja'");
        document.getElementById("cbx_Trabaja").setCustomValidity("Debe de ingresar una opcion!!");
        cont3++;
      }
    }
    if(becado == "¿Becado?"){
      document.getElementById("cbx_Becado").setCustomValidity("Debe de ingresar una opcion!!");
      cont3++;
    }
    if(becado != "¿Becado?"){
      if(becado != "Si" && becado != "No"){
        alert("Seleccione una opcion correcta para el campo 'Becado'");
        document.getElementById("cbx_Becado").setCustomValidity("Debe de ingresar una opcion!!");
        cont3++;
      }
    }
    if(sexo == "Sexo"){
      document.getElementById("cbx_Sexo").setCustomValidity("Debe de ingresar una opcion!!");
      cont3++;
    }
    if(sexo != "Sexo"){
      if(sexo != "Masculino" && sexo != "Femenino"){
        alert("Seleccione una opcion correcta para el campo 'Sexo'");
        document.getElementById("cbx_Sexo").setCustomValidity("Debe de ingresar una opcion!!");
        cont3++;
      }
    }
    if(cont3 == 0){
      BECADO = becado;
      TRABAJA = trabaja;
      SEXO = sexo;
      pasa++;
    }
  }
  if(contadorInterfaz == 3){
    var cont4 = 0;
    var facultad = String($("#cbx_Facultad option:selected").text());
    var carrera = String($("#cbx_Carrera option:selected").text());
    var codigo = $('#codigo').val();
    var numMateriasCursadas = $('#numMateriasCursadas').val();
    var ciclos = $('#ciclos').val();
    if(facultad == "Seleccionar la facultad a la que pertenece"){
      document.getElementById("cbx_Facultad").setCustomValidity("Debe de ingresar una opcion!!");
      cont4++;
    }
    if(carrera == "Seleccionar la carrera a la que pertenece" || carrera == ""){
      document.getElementById("cbx_Carrera").setCustomValidity("Debe de ingresar una opcion!!");
      cont4++;
    }
    if(carrera != "Seleccionar la carrera a la que pertenece" && carrera != ""){
      var parametrosRegistro = {
        "carrera" : carrera
      };
      $.ajax({
              data:  parametrosRegistro, //datos que se envian a traves de ajax
              url:   '../../PHP/INTERFACESREGISTRO/validarCarrera.php', //archivo que recibe la peticion
              type:  'post',
              async: false,
              success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                      if(response == "1"){
                          alert("Esa carrera no existe!! Seleccionar una carrera valida.");
                          cont4 = cont4 + 1;
                      }
              }
      });
    }
    if(codigo == ""){
      document.getElementById("codigo").setCustomValidity("Debe de ingresar su codigo!!");
    }
    if(codigo != ""){
      var parametrosRegistro = {
        "codigo" : codigo
      };
      $.ajax({
              data:  parametrosRegistro, //datos que se envian a traves de ajax
              url:   '../../PHP/INTERFACESREGISTRO/validarCodigo.php', //archivo que recibe la peticion
              type:  'post',
              async: false,
              success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                      if(response == "1"){
                          alert("Ese codigo le pertenece a otro estudiante!!.");
                          cont4 = cont4 + 1;
                      }
              }
      });
    }
    if(numMateriasCursadas == ""){
      document.getElementById("numMateriasCursadas").setCustomValidity("Debe de ingresar el numero de materias cursadas!!");
      cont4++;
    }
    if(numMateriasCursadas != ""){
      if(isNaN(numMateriasCursadas)){
        alert("Solo se pueden ingresar numeros, intenta de nuevo1 ;)");
        cont4++;
      }
    }
    if(ciclos == ""){
      document.getElementById("ciclos").setCustomValidity("Debe de ingresar el numero de ciclos cursados en la carrera actual!!");
      cont4++;
    }
    if(ciclos != ""){
      if(isNaN(ciclos)){
        alert("Solo se pueden ingresar numeros, intenta de nuevo2 ;)");
        cont4++;
      }
    }
    if(cont4 == 0){
      if(cont4 == 0){
        CARRERA = carrera;
        CODIGO = codigo;
        NUMMATERIASCURSADAS = numMateriasCursadas;
        CICLOS = ciclos;
        var parametrosRegistro = {
          "nombres" : NOMBRES,
          "apellidos": APELLIDOS,
          "correo" : CORREO,
          "contrasenia" : CONTRASENIA,
          "fechaDeNacimiento" : FECHADENACIMIENTO,
          "direccion" : DIRECCION,
          "telefonoMovil" : TELEFONOMOVIL,
          "telefonoFijo" : TELEFONOFIJO,
          "trabaja" : TRABAJA,
          "becado" : BECADO,
          "sexo" : SEXO,
          "carrera" : CARRERA,
          "codigo" : CODIGO,
          "numMateriasCursadas" : NUMMATERIASCURSADAS,
          "ciclos" : CICLOS
        };
        $.ajax({
                data:  parametrosRegistro, //datos que se envian a traves de ajax
                url:   '../../PHP/INTERFACESREGISTRO/ingresarEstudiante.php', //archivo que recibe la peticion
                type:  'post',
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        if(response == "1"){
                            alert("Estudiante Registrado exitosamente.");
                        }
                        else {
                          alert("No se puedo registrar al estudiante.");
                        }
                }
        });

      }


    }


  }
  if(pasa == 0){

  }
  if(pasa != 0){
    if(animating) return false;
  	animating = true;

  	current_fs = $(this).parent();
  	next_fs = $(this).parent().next();

  	//activate next step on progressbar using the index of next_fs
  	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

  	//show the next fieldset
  	next_fs.show();
  	//hide the current fieldset with style
  	current_fs.animate({opacity: 0}, {
  		step: function(now, mx) {
  			//as the opacity of current_fs reduces to 0 - stored in "now"
  			//1. scale current_fs down to 80%
  			scale = 1 - (1 - now) * 0.2;
  			//2. bring next_fs from the right(50%)
  			left = (now * 50)+"%";
  			//3. increase opacity of next_fs to 1 as it moves in
  			opacity = 1 - now;
  			current_fs.css({
          'transform': 'scale('+scale+')',
          'position': 'relative'
        });
  			next_fs.css({'left': left, 'opacity': opacity});
  		},
  		duration: 800,
  		complete: function(){
  			current_fs.hide();
  			animating = false;
  		},
  		//this comes from the custom easing plugin
  		easing: 'easeInOutBack'
  	});
    contadorInterfaz++;
  }




});

$(".previous").click(function(){
  contadorInterfaz--;
	if(animating) return false;
	animating = true;

	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();

	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

	//show the previous fieldset
	previous_fs.show();
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		},
		duration: 800,
		complete: function(){
			current_fs.hide();
			animating = false;
		},
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

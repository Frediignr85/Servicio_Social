function IniciarSesion(){

  var correo = document.getElementById("correo").value;
  var contrasenia = document.getElementById("contrasenia").value;

  var parametrosInicioSesion = {
    "correo" : correo,
    "contrasenia" : contrasenia
  };
  $.ajax({
          data:  parametrosInicioSesion, //datos que se envian a traves de ajax
          url:   '../PHP/login.php', //archivo que recibe la peticion
          type:  'post',
          success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                  if(response == "1"){
                    alert("Bienvenido Administrador");
                  }
                  else {
                    if(response == "2"){
                      alert("Bienvenido Estudiante");
                    }
                    else {
                      alert(response);
                    }
                  }
          }
  });
}

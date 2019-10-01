function validarCodigo(){
  var codigo = document.getElementById("codigoRegistro").value;
  var parametrosRegistro = {
    "codigo" : codigo
  };
  $.ajax({
          data:  parametrosRegistro, //datos que se envian a traves de ajax
          url:   '../PHP/INTERFACESREGISTRO/registroCodigo.php', //archivo que recibe la peticion
          type:  'post',
          async: false,
          success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                  if(response == "1"){
                      alert("Codigo de administrador");
                      window.location="../VISTAS/REGISTROS/hojaRegistro2.html";
                  }
                  else {
                    if(response == "2"){
                      alert("Codigo de estudiante");
                      window.location="../VISTAS/REGISTROS/hojaRegistro1.html";
                    }
                    else {
                      alert("Ese codigo no existe!");
                    }
                  }

          }
  });
}

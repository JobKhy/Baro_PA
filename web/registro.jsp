<!DOCTYPE html>
<%

String msg = "";

if(request.getAttribute("error")!=null){
    msg = "<h5>"+(String)request.getAttribute("error")+"</h5>";
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Registro</title>
  <link href="style.css" rel="stylesheet" type="text/css" />
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link rel="icon" type="image/ico" href="img/baroIco.png" />
</head>

<body class="body">

  <form class="login-form" id="Reg" action="registro2.jsp" method="post">

    <h2>Ingresa los datos de tu Perfil</h2>

    <%=msg%>
    
    <div class="login-container">
      <div class="login-group">
        <input name="nombre" class="login-input" type="text" placeholder=" " id="name">
        <label class="login-label">Nombre</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input name="email" class="login-input" type="email" placeholder=" " id="correo">
        <label class="login-label">Email</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input name="pass1" type="password" class="login-input" placeholder=" " id="contr">
        <label class="login-label">Contraseña</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input name="pass2" type="password" class="login-input" placeholder=" " id="contrc">
        <label class="login-label">Confirmación</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <label class="login-label-txt">Selecciona tu género</label>
        <div class="check-box">
          <input name="gen" type="radio" name="genero" id="masc" value="1">
          <label for="masc">Masculino</label>
          <input name="gen" type="radio" name="genero" id="fem" value="2">
          <label for="fem">Femenino</label>

        </div>
      </div>
      <button type="submit" class="login-submit" onclick="return valreg();">
        Registrar
      </button>
    </div>
  </form>
  <script src="script.js"></script>

</body>

</html>
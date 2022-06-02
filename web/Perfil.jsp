<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

<head>
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Configuración de perfil</title>
  <link href="style.css" rel="stylesheet" type="text/css" />
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link rel="icon" type="image/ico" href="img/baroIco.png" />
</head>

<% 
    
    

%>

<body class="body">

  <form class="login-form" id="Reg" action="iniciosem.jsp" method="post">
      <h2>Asigne sus nuevos datos</h2>
    <div class="login-container">

      <div class="login-group">
        <input type="number" id="Gas_trans" placeholder=" " class="login-input">
        <label class="login-label">Gasto de transporte</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input type="number" id="Gas_com" placeholder=" " class="login-input">
        <label class="login-label">Gasto de comida</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input type="number" id="Gas_tel" placeholder=" " class="login-input">
        <label class="login-label">Gasto en linea telefonica</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <label class="login-label-txt">Selecciona el periodo de pago</label>
        <div class="check-box">

          <input type="radio" name="Gas_tel" id="dia" value="3">
          <label for="dia">Diario</label>

          <input type="radio" name="Gas_tel" id="sem" value="4">
          <label for="sem">Semanal</label>

          <input type="radio" name="Gas_tel" id="mes" value="5">
          <label for="mes">Mensual</label>
        </div>
      </div>
      <button type="submit" class="login-submit" onclick="valreg2();">

        Cambiar

      </button>
    </div>
  </form>


  <script src="script.js"></script>

</body>

</html>
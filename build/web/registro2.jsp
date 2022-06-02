<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
    String nombre = request.getParameter("nombre");
    String email = request.getParameter("email");
    String pass1 = request.getParameter("pass1");
    String pass2 = request.getParameter("pass2");
    String gen = request.getParameter("gen");
    
    if(!pass1.equals(pass2)){
        request.setAttribute("error","LAS CONTRASEÑAS NO COINCIDEN");
        request.getRequestDispatcher("./registro.jsp").forward(request, response);
    } else if(nombre==null ||email==null||pass1==null||pass2==null||gen==null){
        request.setAttribute("error","RELLENE TODOS LOS CAMPOS");
        request.getRequestDispatcher("./registro.jsp").forward(request, response);
    }
%>

<body class="body">

  <form class="login-form" id="Reg" action="validarRegistro.jsp" method="post">
    <h2>Porfavor registre sus gastos adicionales</h2>
    <div class="login-container">

        <input type="hidden" value="<%=nombre%>" name="nombre">
        <input type="hidden" value="<%=email%>" name="email">
        <input type="hidden" value="<%=pass1%>" name="pass1">
        <input type="hidden" value="<%=pass2%>" name="pass2">
        <input type="hidden" value="<%=gen%>" name="gen">
      <div class="login-group">
        <input name="tra" type="number" id="Gas_trans" placeholder=" " class="login-input">
        <label class="login-label">Gasto de transporte</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input name="com" type="number" id="Gas_com" placeholder=" " class="login-input">
        <label class="login-label">Gasto de comida</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <input name="tel" type="number" id="Gas_tel" placeholder=" " class="login-input">
        <label class="login-label">Gasto en linea telefonica</label>
        <span class="login-line"></span>
      </div>

      <div class="login-group">
        <label class="login-label-txt">Selecciona el periodo de pago</label>
        <div class="check-box">

          <input name="periodo" type="radio" name="Gas_tel" id="dia" value="3">
          <label for="dia">Diario</label>

          <input name="periodo" type="radio" name="Gas_tel" id="sem" value="4">
          <label for="sem">Semanal</label>
        </div>
      </div>
      <button type="submit" class="login-submit" onclick="valreg2();">

        Registrar
      </button>
    </div>
  </form>


  <script src="script.js"></script>

</body>

</html>
<%

    HttpSession sesion = request.getSession();
    String idSession = sesion.getId();
    String usuario = (String)sesion.getAttribute("usuario");  
    
%>
    <html>

  <head>
          <title></title>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="principal.css">
          <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100" rel="stylesheet" />
          <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
          <link rel="icon" type="image/ico" href="img/baroIco.png" />
          <script src="https://kit.fontawesome.com/8736df69cd.js" crossorigin="anonymous"></script>
  </head>
  
  <body>
      <header>
  
        <img src="img/baroIco.png" class="logo">
        <ul class="menu">
            <li><a href="iniciosem.jsp" target="frame">Home</a></li>
            <li><a <%
                   if(usuario!=null){
                   out.println("href='Semana.jsp' target='frame'");
                   }else{
                   
                   out.println("href='index.jsp' target='_top'");
                   }
                   %> >Semana
                </a>
            </li>
            <li><%
                   if(usuario!=null){
                   out.println("<a >Configuración</a>");
                   out.println("<ul>");
                   out.println("<li><a href='cerrar.jsp' target='_top' >Cerrar Sesión </a></li>");
                   out.println("<li><a href='Perfil.jsp' target='frame' >Gastos</a></li>");
                   out.println("</ul>");
                   }
                   else{
                   out.println("<a href='index.jsp' target='_top'>Iniciar Sesión</a>");
                    }
                   %>
            </li>
        </ul>

    </header>
  
  <iframe name="frame" src="iniciosem.jsp" class="frame" scrolling="no";></iframe>
  

  
          <script src="Script/JSfile.js"></script>
      </body>
      </html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <style>
            body{
                height: 100vh;
                display:flex; 
                justify-content:center;
                place-items:center;
                flex-direction: column;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8">
        <title>Inicio Sesión</title>
        <link rel="icon" type="image/ico" href="imagenes/Logo.ico"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="style.css">
        <link rel="icon" type="image/ico" href="img/baroIco.png" />
    </head>
    
    
    
    <body class="body">
        <form class="login-form" action="ValidarInicio.jsp" method="post">

            <h2 class="form__title" >Inciar Sesión</h2>
            <p class="form__paragraph">  ¿Aún no tienes una cuenta?</p>
            <P class="form__paragraph"><a href="registro.jsp" class="form__link">Entra aquí</a></P>
            <div class="login-container">
                <div class="login-group">
                    <input type="text" id="user" class="login-input" placeholder=" " name="email">
                <label for="name" class="login-label">Email</label>
                <span class="login-line"></span>
            </div>
            <div class="login-group">
                <input type="password" id="password" class="login-input" placeholder=" " name="pass"><label for="password" class="login-label" >Contraseña</label>
                <span class="login-line"></span>
            </div>
            <%
                if(request.getAttribute("error")!=null){
                    String error =(String)request.getAttribute("error"); 
                    if(error.equals("si")){
                        out.println("<div class='login-container'><div class='error'>Introduce una contraseña y usuario correctos.</div></div>");
                    }
                }
            %> 
                <button type="submit" class="login-submit"  onclick="valini();">Inciar sesión</button>
            </div>
        </form>
        <script src="script.js"></script>
    </body>
</html>
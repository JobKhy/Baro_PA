
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.Connector"%>

<%
    
    String correo = request.getParameter("email");
    String pass = request.getParameter("pass");
    String usuario = correo;
    HttpSession sesion = request.getSession();
    String idSession = sesion.getId();
    sesion.setAttribute("usuario", usuario);
    
    Connection conn = Connector.conectarBaseDatos();
    Statement ps = null;
    ResultSet rs = null;
    
    try{
        ps=conn.createStatement();
        rs=ps.executeQuery("SELECT * FROM inicio WHERE inicio.ini_correo='"+correo+"' AND ini_contraseña='"+pass+"';");
        if(rs.next()){
            do {
                if(correo.equals(rs.getString("ini_correo")) && rs.getString("ini_contraseña").equals(pass)){
                    response.sendRedirect("principal.jsp");
                    out.println(rs.getInt("ini_id")+"   "+rs.getString("ini_correo")+"   "+rs.getString("ini_contraseña")+"<br>");
                    break;
                } else {
                    request.setAttribute("error", "si");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                   
                }
            } while (rs.next());
        }else {
            request.setAttribute("error", "si");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
    } catch (Exception e){
        out.println(e);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

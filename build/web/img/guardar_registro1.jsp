<%-- 
    Document   : guardar_registro1
    Created on : 31 may. 2022, 19:54:46
    Author     : Job_M
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.Connector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Declaración de las variables
    Connection conn = Connector.conectarBaseDatos();
    Statement st = null;
    ResultSet rs = null;
    String nombre = request.getParameter("name");
    String correo = request.getParameter("correo");
    String pass1 = request.getParameter("contr");
    String pass2 = request.getParameter("contrc"); 
    
    
 
        String query="";
        try{         
            
            query ="INSERT INTO inicio (ini_correo, ini_contraseña, ini_nombre) values('"+correo+"','"+contr+"','"+name+"')";
            st = conn.createStatement();
            st.execute(query);
            response.sendRedirect("registro2.jsp");
            
        }catch(Exception e){
            out.println("<br>No se pudo completar la operación: <br>"+e.getMessage()+"<br>");
            out.println(query);
        }
        /*
        * Se debe cerrar la conexión si o sí 
        * hay Resultset o un Statement.
        */
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqlEx) {
            } // ignore
            rs = null;
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException sqlEx) {
                } // ignore
                st = null;
            }
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

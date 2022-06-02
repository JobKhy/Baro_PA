<%-- 
    Document   : validarRegistro
    Created on : 30/05/2022, 02:30:01 AM
    Author     : demia
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.Connector"%>
<!DOCTYPE html>

<%

Connection conn = Connector.conectarBaseDatos();
ResultSet rs = null;
Statement st = null;

String nombre = request.getParameter("nombre");
String email = request.getParameter("email");
String pass1 = request.getParameter("pass1");
String gen = request.getParameter("gen");

int tra = Integer.parseInt(request.getParameter("tra"));
int com = Integer.parseInt(request.getParameter("com"));
int tel = Integer.parseInt(request.getParameter("tel"));
int periodo = Integer.parseInt(request.getParameter("periodo"));


if(periodo==4){
    tel=(int)tel/5;
} 

int ini_id=0;

java.sql.Timestamp fecha = new java.sql.Timestamp(new Date().getTime());

out.println(fecha);

String s = nombre+email+pass1+gen+tra+com+tel+periodo;

out.println(s);
try{
st=conn.createStatement();
String query = "insert into proyecto_aula.inicio(ini_correo, ini_contraseña) values('"+email+"', '"+pass1+"');";

st.execute(query);

query="select ini_id from proyecto_aula.inicio where ini_correo='"+email+"' and ini_contraseña='"+pass1+"';";
rs=st.executeQuery(query);

if(rs.next()){
    ini_id = rs.getInt("ini_id");
}

query = "insert into proyecto_aula.gastos_registro(gas_pasaje, gas_comida, gas_telefonia) values("+tra+","+com+","+tel+");";
st.execute(query);




query="select ini_id from proyecto_aula.inicio where ini_correo='"+email+"';";

rs=st.executeQuery(query);



int id = rs.getInt("ini_id");

query="insert into proyecto_aula.usuario(usu_nombre, usu_genero, usu_fecharegistro, gas_id, ini_id) values('"+nombre+"','"+"','2005-06-25', 1, 1);";

st.execute("insert into proyecto_aula.inicio(ini_correo, ini_contraseña) values('"+email+"', '"+pass1+"');"
    + "insert into proyecto_aula.");

} catch(Exception e){
    out.println(e);
}

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=s%>
    </body>
</html>

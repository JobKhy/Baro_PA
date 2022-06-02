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
//obtener datos
String sentence="";
java.sql.Timestamp fecha = new java.sql.Timestamp(new Date().getTime());
String nombre = request.getParameter("nombre");
String email = request.getParameter("email");
String pass1 = request.getParameter("pass1");
String gen = request.getParameter("gen");
int tra = Integer.parseInt(request.getParameter("tra"));
int com = Integer.parseInt(request.getParameter("com"));
int tel = Integer.parseInt(request.getParameter("tel"));
int periodo = Integer.parseInt(request.getParameter("periodo"));
int saldo = 0;
//registro principal
if(periodo==4){
    tel=(int)tel/5;
    com=(int)com/5;
    tra=(int)tra/5;
}
   try{
       
       //insertar inicio
       sentence="INSERT INTO inicio (ini_correo,ini_contraseña) VALUES ('"+email+"','"+pass1+"')";
       st=conn.createStatement();
       st.execute(sentence);
       //insertar gastos
       sentence="INSERT INTO gastos_registro (gas_pasaje,gas_comida,gas_telefonia) VALUES ('"+tra+"','"+com+"','"+tel+"')";
       st=conn.createStatement();
       st.execute(sentence);
       //id gastos
       sentence="SELECT gas_id FROM gastos_registro WHERE gas_pasaje='"+tra+"' AND gas_comida ='"+com+"' AND gas_telefonia ='"+tel+"';";
       st=conn.createStatement();
       rs=st.executeQuery(sentence);
       int gas_id=0;
       if(rs.next()){
           gas_id=rs.getInt("gas_id");
       }
       //id inicio
       sentence="SELECT ini_id FROM inicio WHERE ini_correo='"+email+"' AND ini_contraseña ='"+pass1+"';";
       st=conn.createStatement();
       rs=st.executeQuery(sentence);
       int ini_id=0;
       if(rs.next()){
           ini_id=rs.getInt("ini_id");
       }
       
       //Insertar usuario
       sentence="INSERT INTO usuario (usu_nombre,usu_genero,usu_fecharegistro,usu_saldo,gas_id,ini_id) VALUES ('"+nombre+"','"+gen+"','"+fecha+"',"+saldo+","+gas_id+","+ini_id+")";
       st=conn.createStatement();
       st.execute(sentence);
       
       request.getRequestDispatcher("index.jsp").forward(request, response);
   } catch (SQLException e){
       out.println("El error ha sido "+e.getMessage());
   } finally {
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
/*
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
*/
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>

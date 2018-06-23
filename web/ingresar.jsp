<%-- 
    Document   : ingresar
    Created on : 15-jun-2018, 19:01:35
    Author     : GABRIELX
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //try{
            
                String gerencia=request.getParameter("gerencia");
                String departamento=request.getParameter("departamento");
                String asignacion=request.getParameter("asignacion");
                String encargado=request.getParameter("encargado");
                String requerimiento=request.getParameter("requerimiento");
                
                 
                 
                
          //if(Contraseña.equals(Contraseña2)){ 
              try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
        String consulta = "insert into comercial(gerencia,departamento,asignacion,encargado,requerimiento) values (?,?,?,?,?)";
        //String consulta = "insert into user values (?,?,?,?,?,?);";
               PreparedStatement smt = conn.prepareStatement(consulta);
               smt.setString(1,gerencia);
               smt.setString(2,departamento);
               smt.setString(3,asignacion);
               smt.setString(4,encargado);
               smt.setString(5,requerimiento);
               
               
        
                smt.executeUpdate();
               //int resultado = smt.executeUpdate();
               //if(resultado>0){
                   //out.print("Registro  Exitoso");
               //}else{
                   //out.print("Su Registro a fallado, cumpla con las normas");
               //}
               
           }catch(Exception ex){
               out.print("error, Intente con otro"+ex);
               //throw new SQLException(ex);
           }
           
            
            

            %>
    </body>
</html>

<%-- 
    Document   : ingresarR
    Created on : 14-jun-2018, 21:33:35
    Author     : GABRIELX
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center><body>
            <legend>Ingresar</legend>
        <form action="ingresar.jsp"method="post">
                 
                <table>
                    <tr>
                         <%
                           //if(request.getAttribute("msg")!=null){
                            //out.print(request.getAttribute("msg"));
                        //}
                          
                            %>
                            
                            
                        
                     <%
                           
           //try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
               
                String query="SELECT * FROM comercial";
                Statement st=con.createStatement();
                
                Statement sl=con.createStatement();
                Statement sk=con.createStatement();
                Statement sh=con.createStatement();
                ResultSet rs = st.executeQuery(query);
                ResultSet el = sl.executeQuery(query);
                ResultSet er = sk.executeQuery(query);
                ResultSet et = sh.executeQuery(query);
             try{   
        out.println("<table>");
                     
                    out.println("<tr>");
                        
                    out.println("<td>Gerencia:</td>");
                          
                out.println("<td>");
                
               
                out.println("<select name=\"gerencia\">");
                
                       while(rs.next()){  
                        out.println( "<option>"+rs.getString("gerencia")+"</option>");
                
              
                 }
                         out.println("</td>");
                
                
                out.println("<tr>");
                        
                    out.println("<td>Depto:</td>");
                         
                    out.println("<td>");
                    
                     out.println("<select name=\"departamento\">");
                
                       while(el.next()){  
                           
                        out.println( "<option>"+el.getString("departamento")+"</option>");
                
              
                 }
                       
                out.println("</td>");
                     
                    out.println("<tr>");
                      
                    out.println("<td>Asignar A:</td>");
                    out.println("<td>");
                           
                out.println("<select name=\"asignacion\">");
                
                       while(er.next()){  
                        out.println( "<option>"+er.getString("asignacion")+"</option>");
                
              
                 }
                      
                        out.println("</td>");
                        out.println("<tr>");
                        
                    out.println("<td>Encargado:</td>");
                    out.println("<td>");
                          
                out.println("<select name=\"encargado\">");
                
                       while(et.next()){  
                        out.println( "<option>"+et.getString("encargado")+"</option>");
                
              
                       
                    }
                       
                    out.println("</td>");
                   out.println(" </table>"); 
                    
                                
                 }catch(SQLException ex){
                
            out.println("error"+ex);   
            
            }
                     %>
                    <tr>
                    <td>Requerimiento:</td>
                        <td><input type="text" name="requerimiento"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                    <center><input type="submit" value="Guardar">   <input type="submit" value="Volver al menu"></center>
                        </td>
                    </tr>
                    
                    
                    
                    
                </table> 
            </form>
        </body></center>
    
</html>

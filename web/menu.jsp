<%-- 
    Document   : menu
    Created on : 13-jun-2018, 16:59:54
    Author     : GABRIELX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center><body>
        <fieldset>
            <legend>Menu</legend>
            <table>
            <tr>
            <td>
            <form action="ingresarR.jsp"method="post">
                 
                
                    
                    <center><input type="submit" value="Ingresar requerimiento"></center>
                      
            </form>
             </td>
             </tr>
             </table>
            
            <table>
                <tr>
                    <td>

            <form action="consultarR.jsp"method="post">
                 
                
                    
                    <center><input type="submit" value="Consultar requerimientos"></center>
                      
            </form>
                         </td>
             </tr>
                 </table>
             
             <table>
                <tr>
                    <td>

            <form action="servlet"method="post">
                 
                
                    
                    <center><input type="submit" value="Cerrar requerimientos"></center>
                      
            </form>
                         </td>
             </tr>
                 </table>
                           
                          
            
        </fieldset>
        
                         </body></center>
    </body>
</html>

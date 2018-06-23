<%-- 
    Document   : autentificación
    Created on : 13-jun-2018, 16:37:36
    Author     : GABRIELX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center><body>
        <fieldset>
            <legend>Login</legend>
            <form action="aprobar"method="post">
                 
                <table>
                    <tr>
                         <%
                           if(request.getAttribute("msg")!=null){
                            out.print(request.getAttribute("msg"));
                        }
                          
                            %>
                            
                            
                        
                    </tr>
                    <tr>
                    <td>Usuario:</td>
                        <td><input type="text" name="txtUser"></td>
                    </tr>
                    <tr>
                    <td>Password:</td>
                    <td><input type="password" name="txtPass"></td>               
                    </tr>
                    <tr>
                        <td colspan="2">
                    <center><input type="submit" value="Ingresar"></center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           
                        </td>
                        
                    </tr>
                    
                </table> 
            </form>
                            
                          
            
        </fieldset>
        
                         </body></center>
</html>

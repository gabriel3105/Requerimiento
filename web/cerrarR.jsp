<%-- 
    Document   : cerrarR
    Created on : 14-jun-2018, 22:49:15
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
        <form action="menu.jsp"method="post">
                 
                <table>
                    <tr>
                         <%
                           if(request.getAttribute("msg")!=null){
                            out.print(request.getAttribute("msg"));
                        }
                          
                            %>
                            
                            
                        
                    </tr>
                    <tr>
                    <td>Gerencia:</td>
                        <td><SELECT>
                        <OPTION>Atletico de Madrid</OPTION>
                        <OPTION>Betis</OPTION>
                        <OPTION>FC. Barcelona</OPTION>
                        <OPTION>Real Madrid</OPTION>
                        <OPTION>Zaragoza</OPTION>
                        </SELECT></td>
                    </tr>
                    <tr>
                    <td>Depto.:</td>
                    <td><SELECT>
                        <OPTION>Atletico de Madrid</OPTION>
                        <OPTION>Betis</OPTION>
                        <OPTION>FC. Barcelona</OPTION>
                        <OPTION>Real Madrid</OPTION>
                        <OPTION>Zaragoza</OPTION>
                        </SELECT></td>               
                    </tr>
                    <tr>
                    <td>Asignado A:</td>
                        <td><SELECT>
                        <OPTION>Atletico de Madrid</OPTION>
                        <OPTION>Betis</OPTION>
                        <OPTION>FC. Barcelona</OPTION>
                        <OPTION>Real Madrid</OPTION>
                        <OPTION>Zaragoza</OPTION>
                        </SELECT>  <input type="submit" value="Buscar"></td>
                    </tr>
                    
                    
                    
                    
                    
                    
                    
               </table> 
            </form>
    </body>
</html>

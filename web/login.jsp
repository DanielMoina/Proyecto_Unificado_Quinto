<%-- 
    Document   : login
    Created on : jul 14, 2019, 6:40:09 p.m.
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Control" method="post">
            Login<input type="text" name="usuario"><br>
            Contraseña<input type="password" name="contra"><br>         
            <input type="submit" name="b1">
        </form>
        <%
            if(request.getAttribute("v")!=null){
                if(request.getAttribute("v")=="1"){
                    HttpSession ses= request.getSession();
                    ses.setAttribute("s1", request.getAttribute("log"));
                    response.sendRedirect("Bienvenida.jsp");
                }else{
                    out.print("<br>Credenciales incorrectas");
                }
                
            }
            %>
        
    </body>
</html>

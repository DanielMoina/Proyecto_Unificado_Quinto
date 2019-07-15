<%-- 
    Document   : Bienvenida
    Created on : jul 15, 2019, 8:56:03 a.m.
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession ses= request.getSession();
            if(ses.getAttribute("s1")!=null){
                out.print("Bienvenid@"+ses.getAttribute("s1"));
             }else{
                response.sendRedirect("login.jsp");
            }
            out.print("<br><a href=Bienvenida.jsp?c=1>Cerrar</a>");
            
            if(request.getParameter("c")!=null){
            //ses.removeAttribute("s1");
            ses.invalidate();
            response.sendRedirect("login.jsp");
            }
            
            
            %>
    </body>
</html>

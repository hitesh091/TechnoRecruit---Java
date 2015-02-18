<%-- 
    Document   : logout
    Created on : Jul 8, 2014, 7:17:01 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession session1=request.getSession(false);
        session1.removeAttribute("name");%>
        <%
        String str=(String)session.getAttribute("name");
        if(str==null)
                       {
        session1.invalidate();
        response.sendRedirect("login.jsp");
               }
        
         %>
        
   
    </body>
</html>

<%-- 
    Document   : userinfo
    Created on : Jul 8, 2014, 12:12:49 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><script> history.forward();</script>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="no-cache">
        
        <meta http-equiv="Expires" content="0">
        <title>JSP Page</title>
    <frameset cols="20%,70%">
        <frame src="options.jsp" name="left"/>
        <frame src="profile.jsp" name="right"/>
    </frameset>
    
    </head>
    <body>
        
        <%!String s=null;%>
        <%HttpSession session1=request.getSession(false);
        s=(String)session1.getAttribute("name");
        out.print(s);
        if (s==null)
                       {
            response.sendRedirect("userinfo.jsp");
        }
      

%>
        
    </body>
</html>

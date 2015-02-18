<%-- 
    Document   : adminprofile
    Created on : Jul 10, 2014, 7:42:34 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-image: url('438369.jpg')"><%!String name,name1;%>
          <%name=(String)session.getAttribute("name");%>
        <%name1="Welcome"+" "+name;%><a href="logout.jsp" align="right" target="_top"><font color="red" size="4">Log Out</font></a>
         <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Admin Profile</font></center></b></h1>
        <center><h1><i><b><font size="8"><%=name1%></b></i></h1></center><br>
        <center> <img src="20140710194808.jpg"/> </center>
        
    </body>
</html>

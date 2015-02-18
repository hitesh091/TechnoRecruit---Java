<%-- 
    Document   : changepassword
    Created on : Jul 8, 2014, 3:08:50 PM
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
        <body style="background-image: url('438369.jpg')">
            <%!String str1=null;String str2=null;String str3=null;%>
            
      <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Change Password</font></center></b></h1>
      <br><br>
      <a href="login.jsp" align="left"><img src="20140708160226.png" height="80px" width="150px"/></a>
        <center><img src="20140708152041.jpg"/></center><br>
        <form action="changepasswordservlet" method="post">
      <table align="center">
          <tr><td><font color="blue" size="5">Username : </font></td><td><input type="text" name="dname"></td></tr>
          <tr><td><font color="blue" size="5">Old Password : </font></td><td><input type="password" name="oldpassword"></td></tr>
          <tr><td><font color="blue" size="5">New Password : </font></td><td><input type="password" name="newpassword"></td></tr>
      
      
      </table><br>
      <center><input type="submit" value="Confirm" style="background-color: #00ccff ;"/></center>  </form>
        <%str1=request.getParameter("num1");
          str2=request.getParameter("num2");
          str3=request.getParameter("num3"); %>
        <%if(str1!=null){%><center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
        <%if(str2!=null){%><center><font color="red"><b>Username and password do not match!!</b></font></center><%}%>
        <%if(str3!=null){%><center><font color="red"><b>Password changed successfully!!</b></font></center><%}%>
        
        
        
        
        </body>
</html>

<%-- 
    Document   : companylogin
    Created on : Jul 9, 2014, 2:26:33 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <body style="background-image: url('438369.jpg')"><%!String str1=null;
        String str2=null;%>
            <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">COMPANY LOGIN</font></center></b></h1>
        <a href="login.jsp" align="left"><img src="20140708160226.png" height="80px" width="150px"/></a><center><img src="20140709142932.jpg"/><br><br>
            <form action="companyservlet" method="post">
            <table align="center" cellpadding="2"><tr><td><font color="teal">Enter Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name"/></td></tr>
            <tr><td><font color="teal">Enter Password:&nbsp;<input type="password" name="pass" width="9"/></td></tr>
        </table><%str1=request.getParameter("num1");
        str2=request.getParameter("num2");
        if(str1!=null){%><center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
        <%if(str2!=null){%><center><font color="red"><b>Username and password do not match!!</b></font></center><%}%>
        
        
    <center><input type="submit" value="" style="background-image: url('login.jpg') ; width: 100px ; height: 45px ;"/></center><br></form>
            
    </body>
</html>

<%-- 
    Document   : login
    Created on : Jul 1, 2014, 10:05:26 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><script> history.forward();</script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url('438369.jpg')" link="orange" vlink="blue" alink="teal"><%!String str1=null,str2=null;%>
        <form action="loginservlet" method="post">
        <h1 style="background-image: url('banner.jpg')"><b><center><marquee><font color="white">. . WELCOME . .&nbsp;&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;&nbsp;TechnoRecruit.com</font></marquee></center><B></H1>
                    <table align="right"><tr><td><a href="about.jsp">About us</a><td><a href="contact.jsp">Contact us</a></td></tr><tr><td><a href="companylogin.jsp">Company login</a></td><td><a href="adminlogin.jsp">Admin login</a></td></tr></table><br><br><br><br>       
                    <center><h1 style="background-color: white"><marquee><img src="about.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="about.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="about.jpg"></marquee></h1></center>
                    
        <h1 style="background-image: url('loginbanner.jpeg') ; background-repeat: repeat-x"><center><i><font size="8">Login Here!!</font><i></center></h1>
        <br>
        <%str1=request.getParameter("num1");
        str2=request.getParameter("num2");
        if(str1!=null){%><center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
        <%if(str2!=null){%><center><font color="red"><b>Username and password do not match!!</b></font></center><%}%>
        
                            
        <table align="center" cellpadding="2"><tr><td><font color="teal">Enter Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name"/></td></tr>
            <tr><td><font color="teal">Enter Password:&nbsp;<input type="password" name="pass" width="9"/></td></tr>
        </table><center><a href="changepassword.jsp"><font color="red"><i>Change Password??</i></font></a></center>
        <br>
        
    <center><input type="submit" value="" style="background-image: url('login.jpg') ; width: 100px ; height: 45px ;"/></center><br>
    <center><i><font color="red">New Candidate?</i></font>
    <a href="register.jsp"><b>Register here!!</b></a></form>
        
    </body>
</html>



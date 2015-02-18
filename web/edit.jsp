<%-- 
    Document   : edit
    Created on : Jul 8, 2014, 12:53:56 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
        <body style="background-image: url('438369.jpg')"> <%!String name;%> <%!String str=null;%>
        <%name=(String)session.getAttribute("name");%>
       
        <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Edit Profile</font></center></b></h1>
   <%str=request.getParameter("num");%>
                            <%if(str!=null){%>
                            <center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
        <%try{
        ResultSet rs;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		
String s="select * from register where username=?";
PreparedStatement ps=c.prepareStatement(s);
ps.setString(1,name);
rs=ps.executeQuery();
rs.next();



        
    %>
        <form action="editservlet" method="post">
        <table align="center">
            
            
            <tr><td><font color="blue" size="6">Email address :</td><td><font color="teal" size="6"><input type="text" name="email" value="<%=rs.getString(2)%>"></td></tr>
            <tr><td><font color="blue" size="6">Mobile no :</td><td><font color="teal" size="6"><input type="text" name="mob" value="<%=rs.getString(3)%>"></td></tr>
            <tr><td><font color="blue" size="6">Password :</td><td><font color="teal" size="6"><input type="password" name="password" value="<%=rs.getString(4)%>"></td></tr>
            
            <tr><td><font color="blue" size="6">First name :</td><td><font color="teal" size="6"><input type="text" name="fname" value="<%=rs.getString(5)%>"></td></tr>
            <tr><td><font color="blue" size="6">Last name :</td><td><font color="teal" size="6"><input type="text" name="lname" value="<%=rs.getString(6)%>"></td></tr>
            <tr><td><font color="blue" size="6">Address :</td><td><font color="teal" size="6"><input type="text" name="address" value="<%=rs.getString(7)%>"></td></tr>
            <tr><td><font color="blue" size="6">City :</td><td><font color="teal" size="6"><input type="text" name="city" value="<%=rs.getString(8)%>"></td></tr>
            <tr><td><font color="blue" size="6">State :</td><td><font color="teal" size="6"><input type="text" name="state" value="<%=rs.getString(9)%>"></td></tr>
            <tr><td><font color="blue" size="6">Country :</td><td><font color="teal" size="6"><input type="text" name="country" value="<%=rs.getString(10)%>"></td></tr>
            <tr><td><font color="blue" size="6">Job Function :</td><td><font color="teal" size="6"><input type="text" name="jobfunction" value="<%=rs.getString(11)%>"></td></tr>
            <tr><td><font color="blue" size="6">Experience :</td><td><font color="teal" size="6"><input type="text" name="experience" value="<%=rs.getString(12)%>"></td></tr>
            <tr><td><font color="blue" size="6">Current work location :</td><td><font color="teal" size="6"><input type="text" name="worklocation" value="<%=rs.getString(13)%>"></td></tr></font>
        </table><br>
        <center><input type="submit" value="UPDATE MY PROFILE" style="background-color: #00ccff" width="30" height="20"/></center>
        </form>
        <% } catch(Exception e)
                               {
            out.println("error"+e);
        }%>
    </body>
</html>

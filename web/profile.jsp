<%-- 
    Document   : profile
    Created on : Jul 7, 2014, 12:47:01 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body style="background-image: url('438369.jpg')"><%!String name,name1;%>
        <% response.setHeader("Cache-Control", "no-cache");
           response.setHeader("Cache-Control", "no-store");
           response.setHeader("Pragma", "no-cache");
           response.setDateHeader("Expires",0); %>
           
       
        <%name=(String)session.getAttribute("name");%>
        <%name1="Welcome"+" "+name;%><a href="logout.jsp" align="right" target="_top"><font color="red" size="4">Log Out</font></a>
        <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">My Profile</font></center></b></h1>
    <center><h1><i><b><font size="8"><%=name1%></b></i></h1></center><br>
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
  
        <table align="center">
            
            <tr><td><font color="blue" size="6">Display name :</td><td><font color="teal" size="6"><%=rs.getString(1)%></td></tr>
            <tr><td><font color="blue" size="6">Email address :</td><td><font color="teal" size="6"><%=rs.getString(2)%></td></tr>
            <tr><td><font color="blue" size="6">Mobile no :</td><td><font color="teal" size="6"><%=rs.getString(3)%></td></tr>
            
            <tr><td><font color="blue" size="6">First name :</td><td><font color="teal" size="6"><%=rs.getString(5)%></td></tr>
            <tr><td><font color="blue" size="6">Last name :</td><td><font color="teal" size="6"><%=rs.getString(6)%></td></tr>
            <tr><td><font color="blue" size="6">Address :</td><td><font color="teal" size="6"><%=rs.getString(7)%></td></tr>
            <tr><td><font color="blue" size="6">City :</td><td><font color="teal" size="6"><%=rs.getString(8)%></td></tr>
            <tr><td><font color="blue" size="6">State :</td><td><font color="teal" size="6"><%=rs.getString(9)%></td></tr>
            <tr><td><font color="blue" size="6">Country :</td><td><font color="teal" size="6"><%=rs.getString(10)%></td></tr>
            <tr><td><font color="blue" size="6">Job Function :</td><td><font color="teal" size="6"><%=rs.getString(11)%></td></tr>
            <tr><td><font color="blue" size="6">Experience :</td><td><font color="teal" size="6"><%=rs.getString(12)%></td></tr>
            <tr><td><font color="blue" size="6">Current work location :</td><td><font color="teal" size="6"><%=rs.getString(13)%></td></tr></font>
        </table>
        
        <% } catch(Exception e)
                               {
            out.println("error"+e);
        }%>
        
    </body>
</html>

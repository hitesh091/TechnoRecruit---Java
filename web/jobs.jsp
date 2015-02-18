<%-- 
    Document   : jobs
    Created on : Jul 9, 2014, 4:26:03 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
   <body style="background-image: url('438369.jpg')">
         <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Available Vacancies . .</font></center></b></h1>
         <%try{
        ResultSet rs;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		
String s="select * from vacancy";
Statement st=c.createStatement();
rs=st.executeQuery(s);



        
  %>
         <table align="center" border="1">
             <tr><th><font size="5" color="darkblue">Designation</th><th><font size="5" color="darkblue">No. of vacancies</th><th><font size="5" color="darkblue">Min. experience</th><th><font size="5" color="darkblue">Min qualification</th><th><font size="5" color="darkblue">Company Name</th></tr>
            <% while(rs.next())
                               {%>
                <tr><td align="center"><font color="teal" size="4"><%=rs.getString(1)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(2)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(3)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(4)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(5)%></td></tr>
               
                <% }%> </table>
         <%}catch(Exception e)
                                 {
         out.println(e); } %>
       
    </body>
</html>

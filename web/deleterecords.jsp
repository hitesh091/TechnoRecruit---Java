<%-- 
    Document   : deleterecords
    Created on : Jul 10, 2014, 8:10:35 PM
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
    <body style="background-image: url('438369.jpg')"> <%!String str=null;%>
        
        <form action="deleterecordservlet" method="get">
         <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Available Records . .</font></center></b></h1>
         <%try{
        ResultSet rs;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		
String s="select * from register";
Statement st=c.createStatement();
rs=st.executeQuery(s);



        
  %>
         <table align="center" border="1">
             <tr><th></th><th><font size="5" color="darkblue">First Name</th><th><font size="5" color="darkblue">Last Name</th><th><font size="5" color="darkblue">Mob no.</th><th><font size="5" color="darkblue">City</th><th><font size="5" color="darkblue">Job Function</th><th><font size="5" color="darkblue">Experience</th></tr>
            <% while(rs.next())
                               {%>
             <tr><td><input type="checkbox" name="check" value="<%=rs.getInt(14)%>"></td><td align="center"><font color="teal" size="4"><%=rs.getString(5)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(6)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(3)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(8)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(11)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(12)%></td></tr>
             <% }%> </table><br><center><input type="submit" value="Delete Records" style="background-color: #00ccff"/></center>
         <%}catch(Exception e)
                                 {
         out.println(e); } %> 
         
          <%str=request.getParameter("num");
       
        if(str!=null){%><center><font color="red"><b>Deleted successfully!!</b></font></center><%}%> 
         
           
         
      
         
        </form> 
    </body>
</html>

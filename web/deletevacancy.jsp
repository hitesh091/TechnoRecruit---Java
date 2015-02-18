<%-- 
    Document   : deletevacancy
    Created on : Jul 10, 2014, 10:05:08 PM
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
    <body style="background-image: url('438369.jpg')"> <%!String str=null;
        String name; %>
        <%name=(String)session.getAttribute("name"); %>
        
        <form action="deletevacancyservlet" method="get">
         <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Available Vacancies . .</font></center></b></h1>
         <%try{
        ResultSet rs;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		
String s="select * from vacancy where company=?";
PreparedStatement ps=c.prepareStatement(s);
ps.setString(1,name);
rs=ps.executeQuery();



        
  %>
         <table align="center" border="1">
             <tr><th></th><th><font size="5" color="darkblue">Designation</th><th><font size="5" color="darkblue">No. of vacancies</th><th><font size="5" color="darkblue">Experience</th><th><font size="5" color="darkblue">Qualification</th></tr>
            <% while(rs.next())
                               {%>
             <tr><td><input type="checkbox" name="check" value="<%=rs.getInt(6)%>"/></td><td align="center"><font color="teal" size="4"><%=rs.getString(1)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(2)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(3)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(4)%></td></tr>
             <% }%> </table><br><center><input type="submit" value="Delete Vacancies" style="background-color: #00ccff"/></center>
         <%}catch(Exception e)
                                 {
         out.println(e); } %> 
         
          <%str=request.getParameter("num");
       
        if(str!=null){%><center><font color="red"><b>Deleted successfully!!</b></font></center><%}%> 
         
           
         
      
         
        </form> 
    </body>
</html>

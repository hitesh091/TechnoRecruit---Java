<%-- 
    Document   : editvacancy
    Created on : Jul 9, 2014, 6:05:56 PM
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
    <body style="background-image: url('438369.jpg')"> 
        <%!String str1=null;
    String str2=null; %>
        <form action="editvacancyservlet" method="get">
        <%!String name;%> <%!String str=null;%>
        <%name=(String)session.getAttribute("name");%>
       
        <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Edit Vacancies</font></center></b></h1>
   <%str=request.getParameter("num");%>
                            <%if(str!=null){%>
                            <center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
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
             <tr><th><font size="5" color="darkblue">Designation</th><th><font size="5" color="darkblue">No. of vacancies</th><th><font size="5" color="darkblue">Min. experience</th><th><font size="5" color="darkblue">Min qualification</th></tr>
            <% while(rs.next())
                               {  %>
                <tr><td align="center"><input type="text" name="designation" value="<%=rs.getString(1)%>"></td>
<td align="center"><input type="text" name="no" value="<%=rs.getString(2)%>"></td><td align="center"><input type="text" name="experience" value="<%=rs.getString(3)%>"></td><td align="center"><input type="text" name="qualification" value="<%=rs.getString(4)%>"></td></tr>
             
                <% }%> </table><br>
                            <center><input type="submit" value="UPDATE VACANCIES" style="background-color: #00ccff" width="30" height="20"/></center><br><br>
                             <%str1=request.getParameter("num1");
                                str2=request.getParameter("num2");%>
                             <%if(str1!=null){%><center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
        <%if(str2!=null){%><center><font color="red"><b>Vacancies updated successfully!!</b></font></center><%}%>
        </form>
         <%}catch(Exception e)
                                 {
         out.println(e); } %>
       
    </body>
</html>

<%-- 
    Document   : deletefeedback
    Created on : Jul 11, 2014, 12:54:11 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <body style="background-image: url('438369.jpg')"> <%!String str=null;
         %>
        
        
        <form action="deletefeedbackservlet" method="get">
         <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Feedbacks/Suggestions . .</font></center></b></h1>
         <%try{
        ResultSet rs;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		
String s="select * from feedback";
Statement st=c.createStatement();
rs=st.executeQuery(s);



        
  %>
         <table align="center" border="1">
             <tr><th></th><th><font size="5" color="darkblue">Username</th><th><font size="5" color="darkblue">Mobile no.</th><th><font size="5" color="darkblue">Feedback</th></tr>
            <% while(rs.next())
                               {%>
             <tr><td><input type="checkbox" name="check" value="<%=rs.getInt(4)%>"/></td><td align="center"><font color="teal" size="4"><%=rs.getString(1)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(2)%></td><td align="center"><font color="teal" size="4"><%=rs.getString(3)%></td></tr>
             <% }%> </table><br><center><input type="submit" value="Delete Feedbacks" style="background-color: #00ccff"/></center>
         <%}catch(Exception e)
                                 {
         out.println(e); } %> 
         
          <%str=request.getParameter("num");
       
        if(str!=null){%><center><font color="red"><b>Deleted successfully!!</b></font></center><%}%> 
         
           
         
      
         
        </form> 
    </body>
</html>

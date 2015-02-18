<%-- 
    Document   : addvacancy
    Created on : Jul 9, 2014, 3:49:37 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <body style="background-image: url('438369.jpg')">
            <%!String str1=null;
            String str2=null; %>
            <form action="addvacancyservlet" method="get">
            <%!String str;%>
         <h1 style="background-image: url('banner.jpg')" width="10" ><b><center><font color="#ffff00">Upload vacancies . .</font></center></b></h1>
           
        
                            
        <table align="center" cellpadding="2"><tr><td><font color="teal" size="5">Designation:</td>
                <td>   <SELECT name="jobfunction">
<option  selected='selected'>Select</option>
<option>Management</option>
<option>Business and Financial Operations</option>
<option>Computer and Mathematical Science</option>
<option>Architecture and Engineering</option>
<option>Life, Physical and Social Science</option>
<option>Community and Social Science</option>
<option>Legal</option>
<option>Education, Training and Library</option>
<option>Arts, Design, Entertainment, Sports, and Media</option>
<option >Healthcare Practitioner and Technical</option>
<option >Healthcare Support</option>
<option >Protective Service</option>
<option >Food Preparation and Serving Related</option>
<option >Building and Grounds Cleaning and Maintenance</option>
<option >Personal Care and Service</option>
<option >Sales and Related</option>
<option >Office and Administrative Support</option>
<option >Farming, Fishing and Forestry</option>
<option >Construction and Extraction</option>
<option >Installation, Maintenance and Repair</option>
<option >Production Occupations</option>
<option >Transportation and Material Moving</option>
<option >Military Occupations</option>
</SELECT></td></tr>
            <tr><td><font color="teal" size="5">No. of vacancies:</td><td><input type="text" name="no"/></td></tr>
            <tr><td><font color="teal" size="5">Min. Experience Required:</td><td><input type="text" name="exp"/></td></tr>
            <tr><td><font color="teal" size="5">Min. Qualification:</td><td><input type="text" name="quali"/></td></tr>
        </table>
        <br>
        
    <center><input type="submit" style="background-color:#00ccff " value="UPLOAD"/></center><br>
     <%str1=request.getParameter("num1");
        str2=request.getParameter("num2");
        if(str1!=null){%><center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
        <%if(str2!=null){%><center><font color="red"><b>Uploaded successfully!!</b></font></center><%}%>
            </form>
         
    </body>
</html>

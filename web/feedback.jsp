<%-- 
    Document   : feedback
    Created on : Jul 5, 2014, 9:30:09 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!String str1=null;
           String str2=null;
           String str3=null;
           %>
        <body link="aqua" vlink="blue" alink="red" style="background-image: url('abstract-blue-backgrounds-23_1920x1080_71470.jpg')">
             <form action="feedbackservlet" method="get">
        <center><img src="about.jpg"/></center><br>
        <h2 style="background-color: #00ccff" align="left">FEEDBACK/SUGGESTIONS</h2>
    <p><font color="darkgreen">
        <center><font color="red"><img src="contact.jpg" height="70" width="100"/>Helpline: 0124 3954868 (9am - 9pm, Mon to Sat)</font></center>
        <table align="left" cellspacing="10" cellpadding="5">
            <tr><td><b><font size="8">Suggestion or feedback</B></font><BR>

                    <b><font size="4">We value your suggestions. So, whether you are looking for information or just trying to provide feedback, we look forward to hearing from you! Please select any one of the three options below, describe your query/suggestion and send it to us. We will try and revert on any queries at the earliest.<br><br>
                        <%str1=request.getParameter("num1");
                          str2=request.getParameter("num2");
                          str3=request.getParameter("num3"); %>
                          <%if(str1!=null){%><center><font color="red"><b>Please fill all the fields!!</b></font></center><%}%>
                          <%if(str2!=null){%><center><font color="red"><b>Username not valid!!You need to be registered to leave a feedback!</b></font></center><%}%>
                          <%if(str3!=null){%><center><font color="red"><b>We will reply you as soon as possible!Thanks for your feedback.</b></font></center><%}%>
                             Enter name :<br><br> <input type="text" name="name"><br><br>
                                        Enter Mobile no.<br><br><input type="text" name="mob"/><br><br>
                                        Suggestions/Feedback :<br><br> <textarea rows="15" cols="25" name="feedback"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" style="background-image: url('subm.png'); height: 85px ; width: 228px ; " value=" "/></td>
                        <td><img src="feedback.jpg"/></td></tr>
                            
                            </table>
        </table>
        </form>
    </body>
</html>

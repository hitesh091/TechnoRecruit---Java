<%-- 
    Document   : question
    Created on : Jul 11, 2014, 5:14:38 PM
    Author     : EMachines
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online exam</title>
    <style type="text/css">
   body{background-color:black;font-family:courier;color:white}
</style>
</head>
<body>
    <h2 style="text-align:center" ><marquee><u><b>ONLINE EXAMINATION</b></u></marquee></h2>
<h3>Attempt all the questions (5 marks for each correct answer and 0 for incorrect answer)</h3>
<hr/>
<form name="examForm" method="post" action="quesans.jsp">
1.From what location are the first computer instructions available on boot up?<br/>
<input type="radio" name="ans1" value="ROM BIOS">ROM BIOS
<input type="radio" name="ans1" value="CPU">CPU
<input type="radio" name="ans1" value="boot.ini">boot.ini
<input type="radio" name="ans1" value="CONFIG.SYS">CONFIG.SYS
<br/><br/>
2.What could cause a fixed disk error?<br/>
<input type="radio" name="ans2" value="NO-CD installed">No-CD installed
<input type="radio" name="ans2" value="bad ram">bad ram
<input type="radio" name="ans2" value="slow processor">slow processor
<input type="radio" name="ans2" value="incorrect CMOS settings">incorrect CMOS settings
<br/><br/>
3.Missing slot covers on a computer can cause?<br/>
<input type="radio" name="ans3" value="over heat">over heat
<input type="radio" name="ans3" value="power settings">power surges
<input type="radio" name="ans3" value="EMI">EMI
<input type="radio" name="ans3" value="incomplete path for ESD">incomplete path for ESD
<br/><br/>
4.When installing PCI NICS you can check the IRQ availability by looking at ?<br/>
<input type="radio" name="ans3" value="dip switches">dip switches
<input type="radio" name="ans3" value="CONFIG.SYS">CONFIG.SYS
<input type="radio" name="ans3" value="jumpaer settings">jumper settings
<input type="radio" name="ans3" value="motherboard BIOS">motherboard BIOS
<br/><br/>
5.With respect to a network interface card ,the term 10/100 refers to?<br/>
<input type="radio" name="ans3" value="protocol speed">protocol speed 
<input type="radio" name="ans3" value="fiber speed">a fiber speed
<input type="radio" name="ans3" value="megabits per second">megabits per second 
<input type="radio" name="ans3" value="minimum and maximum server speed">minimum and maximum server speed
<br/><br/>

<input type="submit" value="Check Your Result"/>
</form>
</body>
</html>

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package p;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author EMachines
 */
@WebServlet(name = "feedbackservlet", urlPatterns = {"/feedbackservlet"})
public class feedbackservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username,mob,feedback,flag="fill",name,user;
        int count=0,n,max=0;
        username=request.getParameter("name");
        mob=request.getParameter("mob");
        feedback=request.getParameter("feedback");
        HttpSession session=request.getSession();
        user=(String)session.getAttribute("name");
        if(username.equals("")||mob.equals("")||feedback.equals(""))
        {
            response.sendRedirect("feedback.jsp?num1="+flag);
        
        }else{
        try{
            
        ResultSet rs;
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		

Statement st = c.createStatement();

rs=st.executeQuery("select * from register");
while(rs.next())
{
    name=rs.getString(1);
    
    if(username.equals(user))
    { count++; }
    
}
if(count==0)
{
    response.sendRedirect("feedback.jsp?num2="+flag);
}
else{
    rs=st.executeQuery("select * from feedback");
while(rs.next())
{
n=Integer.parseInt(rs.getString(4));
if(n>=max) {
    max=n;

}
}
max++;
    st.executeUpdate("insert into feedback values('"+username+"','"+mob+"','"+feedback+"','"+max+"')");
    
    response.sendRedirect("feedback.jsp?num3="+flag);
}
            /* TODO output your page here. You may use following sample code. */
            
   } 
        catch(Exception e)
        {
            out.println(e);
        }
              finally {            
            out.close();
        } }
}
    
            
        
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

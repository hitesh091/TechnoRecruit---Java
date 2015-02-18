/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package p;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
@WebServlet(name = "changepasswordservlet", urlPatterns = {"/changepasswordservlet"})
public class changepasswordservlet extends HttpServlet {

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
        String username,oldpassword,newpassword,name,pass,flag="fill",s;
        int count=0;
        username=request.getParameter("dname");
        newpassword=request.getParameter("newpassword");
        oldpassword=request.getParameter("oldpassword");
        
        if(username.equals("")||newpassword.equals("")||oldpassword.equals(""))
        {
            response.sendRedirect("changepassword.jsp?num1="+flag);
        
        }
        else{
        try {
            ResultSet rs;
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		

Statement st = c.createStatement();

rs=st.executeQuery("select * from register");
while(rs.next())
{
    name=rs.getString(1);
    pass=rs.getString(4);
    if(username.equals(name)&&oldpassword.equals(pass))
    { count++;}
    
}
if(count==0)
{
    response.sendRedirect("changepassword.jsp?num2="+flag);
}
else{
    s="update register set password=? where username=? ";
    PreparedStatement ps=c.prepareStatement(s);
    ps.setString(1,newpassword);
    ps.setString(2,username);
    ps.executeUpdate();
    
    
    

    HttpSession session=request.getSession();
        session.setAttribute("name",username);
response.sendRedirect("changepassword.jsp?num3="+flag);
}
        } 
        catch(Exception e)
        {
            out.println("error"+e);
        }
        
        finally {            
            out.close();
        }
}}

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
    }
}// </editor-fold>


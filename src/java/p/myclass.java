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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author EMachines
 */
public class myclass extends HttpServlet {

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
        String username,password,name,pass,flag="fill";int count=0;
        username=request.getParameter("name");
        password=request.getParameter("pass");
        if(username.equals("")||password.equals(""))
        {
            response.sendRedirect("login.jsp?num1="+flag);
        
        }
        else{
        try {
            ResultSet rs;
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		out.println("Connection Made Successfully");

Statement st = c.createStatement();
HttpSession session=request.getSession();
rs=st.executeQuery("select * from register");
while(rs.next())
{
    name=rs.getString(1);
    pass=rs.getString(4);
    
    if(username.equals(name)&&password.equals(pass))
    { count++;}
    
}
if(count==0)
{
    response.sendRedirect("login.jsp?num2="+flag);
}
else{
   session.setAttribute("name",username);
        
response.sendRedirect("userinfo.jsp");
}
            /* TODO output your page here. You may use following sample code. */
            
        } 
        catch(Exception e)
        {
        }
              finally {            
            out.close();
        }}
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

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
@WebServlet(name = "editservlet", urlPatterns = {"/editservlet"})
public class editservlet extends HttpServlet {

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
        String flag="fill",s;
        String dname,email,mob,password,fname,lname,address,city,state,country,jobfunction,experience,worklocation,resume;
       HttpSession session=request.getSession();
        dname=(String)session.getAttribute("name");
        email=request.getParameter("email");
        mob=request.getParameter("mob");
        password=request.getParameter("password");
        
        
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        address=request.getParameter("address");
        city=request.getParameter("city");
        state=request.getParameter("state");
        country=request.getParameter("country");
        jobfunction=request.getParameter("jobfunction");
        experience=request.getParameter("experience");
        worklocation=request.getParameter("worklocation");
        resume=request.getParameter("resume");
       
        
        if(email.equals("")||mob.equals("")||fname.equals("")||lname.equals("")||address.equals("")||city.equals("")||state.equals("")||experience.equals(""))
        {
         response.sendRedirect("edit.jsp?num="+flag);
        }
        else{
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
s="update register set email=? , mob=? , password=? , fname=? , lname=? , address=? , city=? , state=? , country=? , jfunction=? , experience=? , location=? where username=?";
PreparedStatement ps=c.prepareStatement(s);
ps.setString(1,email);
ps.setString(2,mob);
ps.setString(3,password);
ps.setString(4,fname);
ps.setString(5,lname);
ps.setString(6,address);
ps.setString(7,city);
ps.setString(8,state);
ps.setString(9,country);
ps.setString(10,jobfunction);
ps.setString(11,experience);
ps.setString(12,worklocation);
ps.setString(13,dname);
ps.executeUpdate();
response.sendRedirect("profile.jsp");
        }
        catch(Exception e){
        out.println("error"+e);
        }   out.close();
        }
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

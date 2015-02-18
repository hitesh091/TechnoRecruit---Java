/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package p;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author EMachines
 */
public class NewServlet extends HttpServlet {

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
        int n,max=0;
        String flag="fill";
        String dname,email,mob,password,fname,lname,address,city,state,country,jobfunction,experience,worklocation,resume;
        dname=request.getParameter("dname");
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
        HttpSession session=request.getSession();
        session.setAttribute("name",dname);
        
        if(dname.equals("")||email.equals("")||mob.equals("")||password.equals("")||fname.equals("")||lname.equals("")||address.equals("")||city.equals("")||state.equals("")||experience.equals(""))
        {
         response.sendRedirect("register.jsp?num="+flag);
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
n=Integer.parseInt(rs.getString(14));
if(n>=max) {
    max=n;

}
}
max++;

st.executeUpdate("insert into register values('"+dname+"','"+email+"','"+mob+"','"+password+"','"+fname+"','"+lname+"','"+address+"','"+city+"','"+state+"','"+country+"','"+jobfunction+"','"+experience+"','"+worklocation+"','"+max+"')");

response.sendRedirect("userinfo.jsp");

        }
        catch(Exception e)
        {
        out.println(e);
        }
        }
            /* TODO output your page here. You may use following sample code. */
           
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

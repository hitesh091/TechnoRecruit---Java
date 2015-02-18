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
@WebServlet(name = "addvacancyservlet", urlPatterns = {"/addvacancyservlet"})
public class addvacancyservlet extends HttpServlet {

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
        String designation,no,experience,qualification,flag="fill",company,str2;
        int max=0,n;
        designation=request.getParameter("jobfunction");
        no=request.getParameter("no");
        experience=request.getParameter("exp");
        qualification=request.getParameter("quali");
        HttpSession session=request.getSession();
        company=(String)session.getAttribute("name");
        
        if(designation.equals("select")||no.equals("")||experience.equals("")||qualification.equals(""))
        {
             response.sendRedirect("addvacancy.jsp?num1="+flag);
        
        } 
        else
        {
        try {
            ResultSet rs;
            
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
		

Statement st = c.createStatement();
rs=st.executeQuery("select * from vacancy");
while(rs.next())
{
n=Integer.parseInt(rs.getString(6));
if(n>=max) {
    max=n;

}
}
max++;


st.executeUpdate("insert into vacancy values('"+designation+"','"+no+"','"+experience+"','"+qualification+"','"+company+"','"+max+"')");

response.sendRedirect("addvacancy.jsp?num2="+flag);

        }
        
        catch(Exception e)
        {
        out.println(e);
        }
          /* TODO output your page here. You may use following sample code. */
            
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

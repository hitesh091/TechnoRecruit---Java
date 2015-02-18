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
@WebServlet(name = "editvacancyservlet", urlPatterns = {"/editvacancyservlet"})
public class editvacancyservlet extends HttpServlet {

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
        String companyname,flag="fill";
        int count=0;
        int n,max=0;
        HttpSession session=request.getSession();
        companyname=(String)session.getAttribute("name");
        String designation[]=request.getParameterValues("designation");
         String no[]=request.getParameterValues("no");
         String experience[]=request.getParameterValues("experience");
         String qualification[]=request.getParameterValues("qualification");
         
         for(int i=0;i<designation.length;i++)
         {
          if(designation[i].equals("")||no[i].equals("")||experience[i].equals("")||qualification[i].equals(""))
          {
           count++;
          
          }}
         if(count!=0)
         {
          response.sendRedirect("editvacancy.jsp?num1="+flag);   
         
         }
          else{
               try {
                   ResultSet rs;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection c = DriverManager.getConnection("jdbc:odbc:user.mdb","","");
Statement st=c.createStatement();

st.executeUpdate("delete from vacancy where company='"+companyname+"'"); 
rs=st.executeQuery("select * from vacancy");
while(rs.next())
{
n=Integer.parseInt(rs.getString(6));
if(n>=max) {
    max=n;

}
}
max++;

for(int i=0;i<designation.length;i++)
{
    
st.executeUpdate("insert into vacancy values('"+designation[i]+"','"+no[i]+"','"+experience[i]+"','"+qualification[i]+"','"+companyname+"','"+max+"')");
max=max+1;


} 
response.sendRedirect("editvacancy.jsp?num2="+flag);
               }
               catch(Exception e)
               {
               out.println(e);
               
               }
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

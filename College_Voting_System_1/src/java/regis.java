/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author amanr
 */
public class regis extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
	
        String name = request.getParameter("uname");
        String id = request.getParameter("uid");
        String email = request.getParameter("umail");
        String pass = request.getParameter("upass");
        String phone = request.getParameter("uphone");
        String room= request.getParameter("uroom");
        String bc="0";
        try{
        
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amanr?useSSL=false","root","abcabc123");

        PreparedStatement ps=con.prepareStatement
                  ("insert into student values(?,?,?,?,?,?)");

        ps.setString(1, id);
        ps.setString(2, name);
        ps.setString(3, pass);
        ps.setString(4, phone);
        ps.setString(5, email);
        ps.setString(6, room);
        int i=ps.executeUpdate();
         PreparedStatement rin=con.prepareStatement
                  ("insert into payment values(?,?,?)");
        rin.setString(1, id);
        rin.setString(2, bc);
        rin.setString(3, bc);
        int in=rin.executeUpdate();
          if(in>=1)
          {
             /* HttpSession session= request.getSession();
            session.setAttribute("user",id);
            session.setMax InactiveInterval(30*60);
            String url=response.encodeRedirectURL("index.jsp");
            response.sendRedirect("url");
              RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            rs.forward(request, response);*/
              
            out.println("<script type=\"text/javascript\">");
       out.println("alert('Successfully Registered');");
       out.println("</script>");
       
            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
               rd.include(request, response);
       
          }
          else
          {
              
              response.sendRedirect("reg.jsp");
              
          }
        
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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

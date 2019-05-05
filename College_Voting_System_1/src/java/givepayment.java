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
import javax.servlet.http.HttpSession;

/**
 *
 * @author amanr
 */
public class givepayment extends HttpServlet {

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
	HttpSession session=request.getSession();
        //String name = request.getParameter("uname");
        String pay = request.getParameter("upay");
        String id =(String) session.getAttribute("user");
        int tid = Integer.parseInt(request.getParameter("utid"));
        int t=Integer.parseInt(pay);
        try{
            if(tid==3456){
                Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amanr?useSSL=false","root","abcabc123");

        PreparedStatement ps=con.prepareStatement
                  ("UPDATE payment SET paid=paid+? WHERE ID =?");
        ps.setInt(1, t);
        ps.setString(2, id);
        
        int i=ps.executeUpdate();
         
          if(i>=1)
          {
             /* HttpSession session= request.getSession();
            session.setAttribute("user",id);
            session.setMax InactiveInterval(30*60);
            String url=response.encodeRedirectURL("index.jsp");
            response.sendRedirect("url");
              RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            rs.forward(request, response);*/
              
            out.println("<script type=\"text/javascript\">");
       out.println("alert('Successfully Paid');");
       out.println("</script>");
       
            RequestDispatcher rd = request.getRequestDispatcher("pay.jsp");
               rd.include(request, response);
       
          }
          else
          {
              
              response.sendRedirect("pay.jsp");
              
          }
            }
            else{
                out.println("<script type=\"text/javascript\">");
       out.println("alert('Wrong Transaction Id');");
       out.println("</script>");
       
            RequestDispatcher rd = request.getRequestDispatcher("pay.jsp");
               rd.include(request, response);
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

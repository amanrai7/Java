import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class regis extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String id = request.getParameter("uid");
        String pass = request.getParameter("upass");
        String phone = request.getParameter("uphone");
        String a="0";
        try{
        
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","abcabc123");

        PreparedStatement ps=con.prepareStatement
                  ("insert into student values(?,?,?,?)");

        ps.setString(1, id);
        ps.setString(2, pass);
        ps.setString(3, phone);
        ps.setString(4, a);
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
       out.println("alert('Successfully Registered');");
       out.println("</script>");
       
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
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
  }
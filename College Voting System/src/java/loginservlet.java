import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class loginservlet extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String id = request.getParameter("uid");
        String pass = request.getParameter("upass");
        
        if(Validate.checkUser(id, pass))
        {
            HttpSession session= request.getSession();
            session.setAttribute("user",id);
            session.setMaxInactiveInterval(30*60);
            RequestDispatcher rs = request.getRequestDispatcher("inmain.jsp");
            rs.forward(request, response);
        }
        else
        {
            request.getSession().invalidate();
            out.println("<script type=\"text/javascript\">");
       out.println("alert('ID or password incorrect');");
       out.println("</script>");
           RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
           rs.include(request, response);
        }
    }  
}
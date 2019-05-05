import java.sql.*;
import javax.servlet.RequestDispatcher;

public class Validate
 {
    static int flag=99;
     public static boolean checkUser(String email,String pass) 
     {
         
      boolean st =false;
      try{

	 Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pets?useSSL=false","root","abcabc123");
         PreparedStatement ps =con.prepareStatement
                             ("select * from bande where email=? and pass=?");
         ps.setString(1, email);
         ps.setString(2, pass);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
                
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
   
}
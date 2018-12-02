import java.sql.*;

public class Validate
 {
     public static boolean checkUser(String id,String pass) 
     {
      boolean st =false;
      try{

	 Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","abcabc123");
         PreparedStatement ps =con.prepareStatement
                             ("select * from student where id=? and pass=?");
         ps.setString(1, id);
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
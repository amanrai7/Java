import java.sql.*;

public class Validate
 {
    static int flag=99;
     public static String checkUser(String id,String pass) 
     {
      
      try{

	 Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amanr?useSSL=false","root","abcabc123");
         PreparedStatement ps =con.prepareStatement
                             ("select * from student where id=? and pass=?");
         ps.setString(1, id);
         ps.setString(2, pass);
         ResultSet rs =ps.executeQuery();
         
        
             System.out.println(rs.getString(5));
             if(id=="admin" && pass=="admin")
             {
                 
                 return "admin";
             }
             else{
                 return "student";
             }
             
         }
      catch(Exception e)
      {
          e.printStackTrace();
      }
                          
    return null;
}
}
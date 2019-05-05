<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amanr?useSSL=false","root","abcabc123");
         String query="select * from student where id=?";
         PreparedStatement stmt=con.prepareStatement(query);
         String user=(String)session.getAttribute("user");
         stmt.setString(1, user);
         ResultSet rs=stmt.executeQuery();
         
         %>

<!DOCTYPE html>
<html>

<head>
    <title>Hostel Management System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
        crossorigin="anonymous">
    <script language="javascript" type="text/javascript">
        function limitText(limitField, limitNum) {
            if (limitField.value.length > limitNum) {
                limitField.value = limitField.value.substring(0, limitNum);
            }
        }
    </script>
</head>

<body id="log">
    <header id="log">
        <p><a href="logout.jsp"><i class="fas fa-sign-out-alt"></i></a></p>
    </header>
    
        
            <section id="pay">
                <form action="addpay" method="post">
    <table class="table" border="1">
        
  <tbody>
      <tr>
          <th colspan="2">Add new payment</th>
      </tr>
    <tr>
      
      <td >Enter Id:</td>
      <td ><input name="uid" type="number"></td>
      
    </tr>
  
    <tr>
      
      <td >Enter Amount:</td>
      <td><input name="uamount" type="number"></td>
      
    </tr>
    <tr>
      
        <td colspan="2"><input type="submit" value="Add Payment"></td>
      
      
    </tr>
    
  </tbody>
        
    </table>
                </form>
        </section>
    
<!--    <section id="pay">
                <form action="checkpay" method="post">
    <table class="table" border="1">
        
  <tbody>
      <tr>
          <th colspan="2">Check Student's Payment</th>
      </tr>
    <tr>
      
      <td >Enter Id:</td>
      <td ><input name="uid" type="number"></td>
      
    </tr>
    <tr>
      
        <td colspan="2"><input type="submit" value="Check Amount" onclick="check("uid");></td>
      
      
    </tr>
    <tr>
      
      <td >Enter Id:</td>
      <td ></td>
      
    </tr>
    
    
    
  </tbody>
        
    </table>
                </form>
        </section>-->
        <footer>Chitkara University 2019</footer>
    
</body>

</html>

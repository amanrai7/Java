<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%
            Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amanr?useSSL=false","root","abcabc123");
         String query="select * from student where id=?";
         PreparedStatement stmt=con.prepareStatement(query);
         String user=(String)session.getAttribute("user");
         stmt.setString(1, user);
         ResultSet rs=stmt.executeQuery();
         if(rs.last()==true)
         {
             String url=response.encodeRedirectURL("inmain.jsp");
             response.sendRedirect(url);
         }
         else
         {
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <script language="javascript" type="text/javascript">
            function limitText(limitField, limitNum) {
                if (limitField.value.length > limitNum) {
                    limitField.value = limitField.value.substring(0, limitNum);
                }
            }
            </script>
    </head>
    <body id="LoginForm">
        
        
        <div>
        
          <h1 class="form-heading"><img src="imgs/logo.png" width=400px height=110px alignment="left"><br> Hostel Management System</h1>
          <br>
          
          <div class="login-form">
          <div class="main-div">
              <div class="panel">
             <h1>College Login</h1>
             <p>Please enter your ID and Password</p>
             </div>
              <form id="Login" action="LogServlet" method="post">
          
                  <div class="form-group">
          
          
                      <input name="uid" type="text" class="form-control" id="uid" placeholder="Enter ID" onKeyUp="limitText(this,10);" />
          
                  </div>
          
                  <div class="form-group">
          
                      <input name="upass" type="password" class="form-control" id="upass" placeholder="Password" />
          
                  </div>
                  
                  
                  
                  <input type="submit" class="btn btn-primary" value="Login">
          
              </form>
              </div>
              <!--<div class="botto-text">New User?<br><a href="reg.jsp">Register Here</a></div>-->
          </div></div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
<%}%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pets?useSSL=false","root","abcabc123");
         String query="select * from bande where email=?";
         PreparedStatement stmt=con.prepareStatement(query);
         String user=(String)session.getAttribute("user");
         stmt.setString(1, user);
         ResultSet rs=stmt.executeQuery();
         
         String query1="select * from orders where email=?";
         PreparedStatement stmt1=con.prepareStatement(query1);
         String user1=(String)session.getAttribute("user");
         stmt1.setString(1, user1);
         ResultSet rs1=stmt1.executeQuery();
         
         %>

<!DOCTYPE html>
<html>
    <head>
        
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Pet Shop</title>
    </head>
    
    <body style=" background-color:white;;">
        
        <div class="navbar-fixed">
           <nav>
               
    <div class="#039be5 light-blue darken-1 nav-wrapper">
        
        <a class="brand-logo left">&nbsp Welcome Admin</a>
        
        
      <a href="index.jsp" class="brand-logo center">Pet Shop</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="prof.jsp"><i class="material-icons right">account_circle</i>Account</a></li>
        <li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="logout.jsp"><i class="material-icons right">call_missed_outgoing</i>Logout</a></li>
        <!--<li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="reg.jsp"><i class="material-icons right">how_to_reg</i>Register</a></li>-->
      </ul>
    </div>
    <div class="#4fc3f7 light-blue lighten-2 nav-content">
      <ul class="tabs tabs-transparent z-depth-3">
          <li class="tab"><a class="large active" href="admin.jsp">Home</a></li>
          <li class="tab"><a class="large" href="customers.jsp">Customers</a></li>
        <li class="tab"><a class="large" href="orders.jsp">Orders</a></li>
<!--        <li class="tab"><a class="large " href="rabbitshop.jsp">Shop A Rabbit</a></li>
        <li class="tab"><a class="large " href="ratshop.jsp">Shop A Rat</a></li>-->
      </ul>
<!--        <ul class="tabs tab-demo z-depth-3">
    <li class="tab" active><a class="active" href="index.jsp">Home</a></li>
    <li class="tab"><a href="">Test 2</a></li>
    
    <li class="tab"><a href="">Test 4</a></li>
    <li class="tab"><a href="">Test 5</a></li>
  </ul>-->
    </div>
        
  </nav>
        </div>

  <ul class="sidenav" id="mobile-demo">
    <li><a href="sass.html">Sass</a></li>
    <li><a href="badges.html">Components</a></li>
    <li><a href="collapsible.html">JavaScript</a></li>
  </ul>

  <script language="javascript" type="text/javascript">
                
      $(document).ready(function(){
    $('.sidenav').sidenav();
  });
    
            </script>
            <br>
            <br>
            
            
            <div style="width:80%;margin:auto;">
                <%while(rs.next())
                {%>
            <h1>Profile</h1>
            <p class="flow-text">Name: &nbsp <%=rs.getString(1)%></p>
            <p class="flow-text">Email: &nbsp <%=rs.getString(2)%></p>
            <p class="flow-text">Phone: &nbsp <%=rs.getString(3)%></p>
            <br>
            <%}%>
            
            
<!--            <h2>Orders:</h2>
            <hr>
            <table class="striped">
        <thead>
          <tr>
              <th>Name</th>
              <th>Phone</th>
              <th>Address</th>
              <th>Animal </th>
              <th>Price</th>
          </tr>
        </thead>
        <%while(rs1.next()){ %>
        <tbody>
          <tr>
            <td><%=rs1.getString(1)%></td>
            <td><%=rs1.getString(3)%></td>
            <td><%=rs1.getString(4)%></td>
            <td><%=rs1.getString(5)%></td>
            <td><%=rs1.getString(6)%></td>
          </tr>
          <%rs1.next();%>
          <tr>
            <td><%=rs1.getString(1)%></td>
            <td><%=rs1.getString(3)%></td>
            <td><%=rs1.getString(4)%></td>
            <td><%=rs1.getString(5)%></td>
            <td><%=rs1.getString(6)%></td>
          </tr>
          
          
        </tbody>
        <%}%>
      </table>-->
            
            </div>
            
            
            
<!--            <footer class="#4fc3f7 light-blue lighten-2 page-footer">
          <div class="container">
            <div class="row">
              <div class="col 15 s12">
                <h5 class="white-text">About Us</h5>
                <p class="grey-text text-lighten-4">You can shop for your favourite pet on our website.</p>
              </div>
              
            </div>
          </div>
          <div class="#039be5 light-blue darken-1 footer-copyright">
            <div class="container">
            © 2019 Copyright 
            <a class="grey-text text-lighten-4 right" >Created with Love &#10084 </a>
            </div>
          </div>
        </footer>-->
        
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>

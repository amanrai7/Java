<%-- 
    Document   : index
    Created on : 9 Apr, 2019, 12:18:41 PM
    Author     : amanr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <link type="text/css" rel="stylesheet" href="css/self.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Pet Shop</title>
    </head>
    <body style=" background-color:white;">
        
        
        
        <div class="navbar-fixed">
           <nav>
    <div class="#039be5 light-blue darken-1 nav-wrapper">
      <a href="index.jsp" class="brand-logo center">Pet Shop</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="login.jsp"><i class="material-icons right">subdirectory_arrow_right</i>Login</a></li>
        <li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="reg.jsp"><i class="material-icons right">how_to_reg</i>Register</a></li>
      </ul>
    </div>
    <div class="#4fc3f7 light-blue lighten-2 nav-content">
      <ul class="tabs tabs-transparent z-depth-2">
          <li class="tab"><a class="large active" href="index.jsp">Home</a></li>
          
          
        
        
                
        
<!--        <li class="tab"><a class="waves-effect waves-light" href="#test3">Shop A Cat</a></li>
        <li class="tab"><a class="large " href="#test3">Shop A Rabbit</a></li>
        <li class="tab"><a class="large " href="#test3">Shop A Rat</a></li>-->
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
            <br><br><br>
        <form action="regist" method="post">
        <div style="width:60%;margin:auto;">
        
            
            <div class="row">
            <div class="input-field col s6">
                <input name="uname" type="text" class="validate">
              <label class="active">Name</label>
            </div>
                </div>
            
                <div class="row">
            <div class="input-field col s6">
              <input name="umail" type="text" class="validate">
              <label class="active">Email</label>
            </div>
                </div>    
                    <div class="row">
            <div class="input-field col s6">
              <input name="uphone" type="text" class="validate">
              <label class="active">Phone</label>
            </div>
                </div>
                
            <div class="row">
            <div class="input-field col s6">
              <input name="upass" type="password" class="validate">
              <label class="active">Password</label>
            </div>
                </div>
            
            <div class="row">
            <div class="input-field col s6">
                <button type="submit" class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" value="Register">Register</button>
            </div>
                </div>
                    
        </div>
        </form>
        
            
            
            <footer class="#4fc3f7 light-blue lighten-2 page-footer" >
          <div class="#4fc3f7 light-blue lighten-2 container">
            <div class="row">
              <div class="col 15 s12">
                <h5 class="white-text">About Us</h5>
                <p class="grey-text text-lighten-4">You can shop for your favourite pet on our website.</p>
              </div>
              
            </div>
          </div>
          <div class=" #039be5 light-blue darken-1 footer-copyright">
            <div class="container">
            © 2019 Copyright 
            <a class="grey-text text-lighten-4 right" >Created with Love &#10084 </a>
            </div>
          </div>
        </footer>
        
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>


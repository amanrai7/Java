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
         
         %>
<!DOCTYPE html>
<html>
    <head>
        
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Chitu Pets</title>
        <link rel = "icon" href =  
"imgs/chitu.jpg" 
        type = "image/x-icon">
    </head>
    
    <body style=" background-color:#eeeeee;">
        
        <div class="navbar-fixed">
           <nav>
               
    <div class="#039be5 light-blue darken-1 nav-wrapper">
        
        <a class="brand-logo left">&nbsp Welcome User</a>
        
        
        <a href="indexlog.jsp" class="brand-logo center"><img src="imgs/chitu.jpg" width="32" height="32">&nbsp Chitu Pets</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="prof.jsp"><i class="material-icons right">account_circle</i>Account</a></li>
        <li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="logout.jsp"><i class="material-icons right">call_missed_outgoing</i>Logout</a></li>
        <!--<li><a class="#e3f2fd blue lighten-5 black-text waves-effect waves-dark btn" href="reg.jsp"><i class="material-icons right">how_to_reg</i>Register</a></li>-->
      </ul>
    </div>
    <div class="#4fc3f7 light-blue lighten-2 nav-content">
      <ul class="tabs tabs-transparent z-depth-3">
          <li class="tab"><a class="large" href="indexlog.jsp">Home</a></li>
          <li class="tab"><a class="large " href="dogshop.jsp">Shop A Dog</a></li>
        <li class="tab"><a class="large active" href="catshop.jsp">Shop A Cat</a></li>
        <li class="tab"><a class="large " href="rabbitshop.jsp">Shop A Rabbit</a></li>
        <li class="tab"><a class="large " href="ratshop.jsp">Shop A Rat</a></li>
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
<!--            <br>
            <br>-->
            
            <div style="height:150px;background-color:grey;color:white;text-align:center;font-size:30px; ">
                <br>
                <p>Cat Shop</p>
                
            </div>
            <br>
            <%while(rs.next()){%>
            
            
            <div class="row">

      

      
          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/percat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Persian Cat<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 15000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#pcat">Buy Now</a>

          <div class="row">
          <div id="pcat" class="white black-text modal">
            <div class="modal-content">
                <form action="order1" method="post">
                    
                    
                    <div class="row">
    
      <div class="row">
        <div class="input-field col s8">
            <input name="uname" id="first_name" type="text" class="validate" value="<%=rs.getString(1)%>" required>
          <label for="first_name">Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input name="umail" id="email" type="text" class="validate" value="<%=rs.getString(2)%>" required readonly>
          <label for="email">Email</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
          <input name="uphone" id="phone" type="text" class="validate" value="<%=rs.getString(3)%>" required>
          <label for="phone">Phone</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uaddrs" id="addrs" type="text" class="validate" placeholder="Enter your Address" required>
          <label for="addrs">Address</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uanimal" id="addrs" type="text" value="Persian Cat" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="15000" readonly>
          <label for="price">Price</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s4">
            <input type="submit" class="btn" value="Place Order">
        </div>
      </div>
          
      
    
  </div>
                  
                </form>
            </div>
          </div>
          </div>
          <script language="javascript" type="text/javascript">
              $(document).ready(function(){
    $('.modal').modal();
  });
          </script>
      
    </div>
    <div class="#00e5ff cyan accent-3 black-text card-reveal">
      <span class="card-title black-text text-darken-4">Persian Cat<i class="material-icons right">close</i></span>
      <p>The Persian is the glamor puss of the cat world. His beautiful, flowing coat, sweet face and calm personality have combined to make him the most popular cat breed. He is high maintenance and he has some health issues, but for many his looks and personality overcome those drawbacks.</p>
    </div>
  </div>
                  
              </div>
              
              
          <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/muncat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Munchkin Cat<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 4000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#mcat">Buy Now</a>

          <div class="row">
          <div id="mcat" class="white black-text modal">
            <div class="modal-content">
                <form action="order1" method="post">
                    
                    
                    <div class="row">
    
      <div class="row">
        <div class="input-field col s8">
            <input name="uname" id="first_name" type="text" class="validate" value="<%=rs.getString(1)%>" required>
          <label for="first_name">Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input name="umail" id="email" type="text" class="validate" value="<%=rs.getString(2)%>" required readonly>
          <label for="email">Email</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
          <input name="uphone" id="phone" type="text" class="validate" value="<%=rs.getString(3)%>" required>
          <label for="phone">Phone</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uaddrs" id="addrs" type="text" class="validate" placeholder="Enter your Address" required>
          <label for="addrs">Address</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uanimal" id="addrs" type="text" value="Munchkin Cat" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="4000" readonly>
          <label for="price">Price</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s4">
            <input type="submit" class="btn" value="Place Order">
        </div>
      </div>
          
      
    
  </div>
                    
                </form>
            </div>
          </div>
          </div>
          <script language="javascript" type="text/javascript">
              $(document).ready(function(){
    $('.modal').modal();
  });
          </script>
      
    </div>
    <div class="#00e5ff cyan accent-3 black-text card-reveal">
      <span class="card-title black-text text-darken-4">Munchkin Cat<i class="material-icons right">close</i></span>
      <p>No matter what your eyes may tell you, the Munchkin is not a cross between a Dachshund and a cat. The dwarfed appearance of the low-riding feline is the result of a spontaneous natural mutation. Energetic and playful, the Munchkin might be short on height, but he’s long on fun.</p>
    </div>
  </div>
                  
              </div>

          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/scotcat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Scottish Fold<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 10000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#scat">Buy Now</a>

          <div class="row">
          <div id="scat" class="white black-text modal">
            <div class="modal-content">
                <form action="order1" method="post">
                    
                    
                    <div class="row">
    
      <div class="row">
        <div class="input-field col s8">
            <input name="uname" id="first_name" type="text" class="validate" value="<%=rs.getString(1)%>" required>
          <label for="first_name">Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input name="umail" id="email" type="text" class="validate" value="<%=rs.getString(2)%>" required readonly>
          <label for="email">Email</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
          <input name="uphone" id="phone" type="text" class="validate" value="<%=rs.getString(3)%>" required>
          <label for="phone">Phone</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uaddrs" id="addrs" type="text" class="validate" placeholder="Enter your Address" required>
          <label for="addrs">Address</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uanimal" id="addrs" type="text" value="Scottish Fold" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="10000" readonly>
          <label for="price">Price</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s4">
            <input type="submit" class="btn" value="Place Order">
        </div>
      </div>
          
      
    
  </div>
                    
                </form>
            </div>
          </div>
          </div>
          <script language="javascript" type="text/javascript">
              $(document).ready(function(){
    $('.modal').modal();
  });
          </script>
      
    </div>
    <div class="#00e5ff cyan accent-3 black-text card-reveal">
      <span class="card-title black-text text-darken-4">Scottish Fold<i class="material-icons right">close</i></span>
      <p>The Scottish Fold is a medium-size cat with a rounded head and big round eyes, although he is known for his standout feature: ears that fold forward, giving him the appearance of a furry owl. His coat, which comes in many colors and patterns, can be short or long. The longhaired variety is known as the Highland Fold.</p>
    </div>
  </div>
                  
              </div>
              
              
  </div>            
              
              
              
              
        <div class="row">

      

      
          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/ragcat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Ragdoll<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 9000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#ragcat">Buy Now</a>

          <div class="row">
          <div id="ragcat" class="white black-text modal">
            <div class="modal-content">
                <form action="order1" method="post">
                    
                    
                    <div class="row">
    
      <div class="row">
        <div class="input-field col s8">
            <input name="uname" id="first_name" type="text" class="validate" value="<%=rs.getString(1)%>" required>
          <label for="first_name">Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input name="umail" id="email" type="text" class="validate" value="<%=rs.getString(2)%>" required readonly>
          <label for="email">Email</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
          <input name="uphone" id="phone" type="text" class="validate" value="<%=rs.getString(3)%>" required>
          <label for="phone">Phone</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uaddrs" id="addrs" type="text" class="validate" placeholder="Enter your Address" required>
          <label for="addrs">Address</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uanimal" id="addrs" type="text" value="Ragdoll Cat" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="9000" readonly>
          <label for="price">Price</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s4">
            <input type="submit" class="btn" value="Place Order">
        </div>
      </div>
          
      
    
  </div>
                  
                </form>
            </div>
          </div>
          </div>
          <script language="javascript" type="text/javascript">
              $(document).ready(function(){
    $('.modal').modal();
  });
          </script>
      
    </div>
    <div class="#00e5ff cyan accent-3 black-text card-reveal">
      <span class="card-title black-text text-darken-4">Ragdoll Cat<i class="material-icons right">close</i></span>
      <p>His floppy, relaxed good nature gives the Ragdoll his name. He is a big, gentle cat with striking blue eyes who can get along with everyone, including other animals, traits that make him adaptable to almost any home. His semi-longhaired coat, which comes in a variety of patterns and colors, is easy to groom.</p>
    </div>
  </div>
                  
              </div>
              
              
          <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/bircat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Birman Cat<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 8000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#bircat">Buy Now</a>

          <div class="row">
          <div id="bircat" class="white black-text modal">
            <div class="modal-content">
                <form action="order1" method="post">
                    
                    
                    <div class="row">
    
      <div class="row">
        <div class="input-field col s8">
            <input name="uname" id="first_name" type="text" class="validate" value="<%=rs.getString(1)%>" required>
          <label for="first_name">Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input name="umail" id="email" type="text" class="validate" value="<%=rs.getString(2)%>" required readonly>
          <label for="email">Email</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
          <input name="uphone" id="phone" type="text" class="validate" value="<%=rs.getString(3)%>" required>
          <label for="phone">Phone</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uaddrs" id="addrs" type="text" class="validate" placeholder="Enter your Address" required>
          <label for="addrs">Address</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uanimal" id="addrs" type="text" value="Birman Cat" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="8000" readonly>
          <label for="price">Price</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s4">
            <input type="submit" class="btn" value="Place Order">
        </div>
      </div>
          
      
    
  </div>
                    
                </form>
            </div>
          </div>
          </div>
          <script language="javascript" type="text/javascript">
              $(document).ready(function(){
    $('.modal').modal();
  });
          </script>
      
    </div>
    <div class="#00e5ff cyan accent-3 black-text card-reveal">
      <span class="card-title black-text text-darken-4">Birman Cat<i class="material-icons right">close</i></span>
      <p>His piercing, sapphire-blue eyes stare deep into your soul, and his semi-long coat -- ideally misted with gold -- is silky to the touch. The white-gloved Birman may look elegant, but his appearance belies a powerful, muscular body and a strong love of play.</p>
    </div>
  </div>
                  
              </div>

          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/bencat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Bengal cat<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 4000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#bencat">Buy Now</a>

          <div class="row">
          <div id="bencat" class="white black-text modal">
            <div class="modal-content">
                <form action="order1" method="post">
                    
                    
                    <div class="row">
    
      <div class="row">
        <div class="input-field col s8">
            <input name="uname" id="first_name" type="text" class="validate" value="<%=rs.getString(1)%>" required>
          <label for="first_name">Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input name="umail" id="email" type="text" class="validate" value="<%=rs.getString(2)%>" required readonly>
          <label for="email">Email</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
          <input name="uphone" id="phone" type="text" class="validate" value="<%=rs.getString(3)%>" required>
          <label for="phone">Phone</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uaddrs" id="addrs" type="text" class="validate" placeholder="Enter your Address" required>
          <label for="addrs">Address</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uanimal" id="addrs" type="text" value="Bengal Cat" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="4000" readonly>
          <label for="price">Price</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s4">
            <input type="submit" class="btn" value="Place Order">
        </div>
      </div>
          
      
    
  </div>
                    
                </form>
            </div>
          </div>
          </div>
          <script language="javascript" type="text/javascript">
              $(document).ready(function(){
    $('.modal').modal();
  });
          </script>
      
    </div>
    <div class="#00e5ff cyan accent-3 black-text card-reveal">
      <span class="card-title black-text text-darken-4">Bengal Cat<i class="material-icons right">close</i></span>
      <p>If you love a cat with an exotic look but without the size and danger of a wild cat, the Bengal was developed with you in mind. Created by crossing small Asian Leopard Cats with domestic cats, this large-boned, shorthaired cat stands out for his spotted or marbled coat of many colors.</p>
    </div>
  </div>
                  
              </div>
              
              
  </div>      
              
              
              
              
              
              
              
              
              
              
              
              
              
              
          
        
      
                <%}%>
                

    
            
            
            
            
            
        

        
            
            
            <footer class="#4fc3f7 light-blue lighten-2 page-footer">
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
        </footer>
        
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>

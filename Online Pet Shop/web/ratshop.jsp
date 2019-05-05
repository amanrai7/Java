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
        <li class="tab"><a class="large" href="catshop.jsp">Shop A Cat</a></li>
        <li class="tab"><a class="large " href="rabbitshop.jsp">Shop A Rabbit</a></li>
        <li class="tab"><a class="large active" href="ratshop.jsp">Shop A Rat</a></li>
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
                <p>Rat Shop</p>
                
            </div>
            <br>
            <%while(rs.next()){%>
            
            
            <div class="row">

      

      
          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/hmous.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">House Mouse<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 2000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#hmous">Buy Now</a>

          <div class="row">
          <div id="hmous" class="white black-text modal">
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
            <input name="uanimal" id="addrs" type="text" value="House Mouse" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="2000" readonly>
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
      <span class="card-title black-text text-darken-4">House Mouse<i class="material-icons right">close</i></span>
      <p>The house mouse is the most commonly encountered and economically important of the commensal rodents. House mice are of Central Asian origin, but they are distributed worldwide and can be found throughout the United States. House mice are not only a nuisance, but they can pose significant health and property threats.</p>
    </div>
  </div>
                  
              </div>
              
              
          <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/dmous.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Deer Mouse<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 1000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#dmous">Buy Now</a>

          <div class="row">
          <div id="dmous" class="white black-text modal">
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
            <input name="uanimal" id="addrs" type="text" value="Deer Mouse" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="1000" readonly>
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
      <span class="card-title black-text text-darken-4">Deer Mouse<i class="material-icons right">close</i></span>
      <p>Deer mice often nest in sheltered outdoor areas such as old fence posts, hollow tree logs or piles of debris. During the winter months, deer mice may invade homes, garages, sheds or rarely used vehicles to seek shelter. Inside, attics and basements make the ideal deer mouse habitat. The deer mouse also builds its nest in storage boxes, stuffed furniture, drawers and wall voids.</p>
    </div>
  </div>
                  
              </div>

          
              
<!--              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/dalmat.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Dalmatian<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 13000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#dalmat">Buy Now</a>

          <div class="row">
          <div id="dalmat" class="white black-text modal">
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
            <input name="uanimal" id="addrs" type="text" value="Dalmatian Dog" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="13000" readonly>
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
      <span class="card-title black-text text-darken-4">Dalmatian Dog<i class="material-icons right">close</i></span>
      <p>Unique spots are the Dalmatian’s calling card, but his running ability is what made him famous. Bred to be a coaching dog, he ran alongside carriages or horseback riders for miles, discouraging stray dogs from interfering with the horses, alerting the coachman to the presence of approaching highwaymen, and guarding the carriage at rest stops. No fashionable lord or lady went driving without a pair of the flashy dogs by their side, and later the Dalmatian’s talents were adapted by firemen, who kept the dogs to clear paths through town for their horse-drawn fire engines.</p>
    </div>
  </div>
                  
              </div>-->
              
              
  </div>            
              
              
              
              
<!--        <div class="row">

      

      
          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/combai.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Combai<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 7000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#combai">Buy Now</a>

          <div class="row">
          <div id="combai" class="white black-text modal">
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
            <input name="uanimal" id="addrs" type="text" value="Combai Dog" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="7000" readonly>
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
      <span class="card-title black-text text-darken-4">Combai<i class="material-icons right">close</i></span>
      <p>The Combai Boarhund has powerful jaws. In Tamil Nadu in the province of India the Combai looks similar to some of the Indian Pariah dogs, but it is stockier. Its ears are pendant shaped folding over to the front in a v-shape. The shorthaired coat comes in tan or red brown with a black muzzle. It can have a small amount of black coloring on its feet and ears and a dark coloring along its back. A white patch on the chest is acceptable. Less common coat colors are piebald and brindle. Piebald is called porru and brindle is called pullisaral in the Tamil language. The more common colors of tan, red or brown with a black muzzle are called Karuvaisevalai or Karumunjinaai in the Tamil language. The piebald and brindle coloring can occur in the same litter but it is rare.</p>
    </div>
  </div>
                  
              </div>
              
              
          <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/mudhon.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Mudhol Hound<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 11000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#mhon">Buy Now</a>

          <div class="row">
          <div id="mhon" class="white black-text modal">
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
            <input name="uanimal" id="addrs" type="text" value="Mudhol Hound" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="11000" readonly>
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
      <span class="card-title black-text text-darken-4">Mudhol Hound<i class="material-icons right">close</i></span>
      <p>Mudhol Hound is an Indian dog breed that has served as a hunter, loyal companion, and guard dog for both royalty and peasants. Throughout existence, this breed has been known by a variety of names like Caravan Hound, Mudhol Hound, Karwani, Lahori, Pashmi and the Pisuri Hound. If you want to own this breed of dog, it’s better to know all the information related to this breed that will help you in proper caring of these dogs. This article comprises all important information related to this breed.</p>
    </div>
  </div>
                  
              </div>

          
              
              <div class="col s3 offset-s1">
                  
                                <div class="large card z-depth-3">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="imgs/dach.jpg">
    </div>
    <div class="card-action">
      <span class="card-title activator grey-text text-darken-4">Dachshund<i class="material-icons right">more_vert</i></span>
      <br><span class="card-title activator grey-text text-darken-4">&#8377 6000</span>
      <br>
      <br>
      <a class="modal-trigger btn" href="#dach">Buy Now</a>

          <div class="row">
          <div id="dach" class="white black-text modal">
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
            <input name="uanimal" id="addrs" type="text" value="Dachshund" class="validate" readonly>
          <label for="animal">Pet Selected</label>
        </div>
      </div>
          <div class="row">
        <div class="input-field col s8">
            <input name="uprice" id="price" type="text" class="validate" value="6000" readonly>
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
      <span class="card-title black-text text-darken-4">Dachshund<i class="material-icons right">close</i></span>
      <p>Dachshunds are scent hound dog breeds who were bred to hunt badgers and other tunneling animals, rabbits, and foxes. Packs of Dachshunds were even used to trail wild boar. Today their versatility makes them excellent family companions, show dogs, and small-game hunters.</p>
    </div>
  </div>
                  
              </div>
              
              
  </div>      -->
              
              
              
              
              
              
              
              
              
              
              
              
              
              
          
        
      
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

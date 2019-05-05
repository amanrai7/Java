<!DOCTYPE html>
<html>
    <head>
        <title>Chitkara Voting System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
        <link href='https://fonts.googleapis.com/css?family=Arimo' rel='stylesheet'>
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
        

        <div >
        
          <h1 class="form-heading">Registration Form</h1>
          <br>
          
          <div class="login-form">
          <div class="main-div">
              <div class="panel">
             <h1>New User</h1>
             <br>
             </div>
              <form id="Login"  action="regis" method="post">
          
                  <div class="form-group">
          
          
                      <input name="uid" type="number" class="form-control" id="inputID" placeholder="Enter ID" onKeyUp="limitText(this,10);"/>
          
                  </div>
          
                  <div class="form-group">
          
                      <input name="upass" type="password" class="form-control" id="inputPassword" placeholder="Password">
          
                  </div>
                  <div class="form-group">
          
                    <input name="uphone" type="number" class="form-control" id="inputID" placeholder="Enter Phone Number" onKeyUp="limitText(this,10);">
        
                </div>
                  
                  <input type="submit" class="btn btn-primary" value="Register">
          
              </form>
              </div>
              <div class="botto-text">Already a User ?<br><a href="index.jsp">Sign-in</a></div>
          </div></div>
          
          
        
         
        
        
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>

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
<html>

<head>
    <title>Hostel Management System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <link href='https://fonts.googleapis.com/css?family=Arimo' rel='stylesheet'>
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
    <%while(rs.next())
    {%>
    <section id="profi">
        <table class="table"  border="1">
            <tbody>
                <tr>
                    <td><h3>Id: </h3></td><td><h3><%=rs.getString(1)%></h3></td>
        </tr>
            <tr>
                <td><h3>Name: </h3></td><td><h3><%=rs.getString(2)%></h3></td>
            </tr>
            <tr>
                <td> <h3>Phone: </h3></td><td><h3><%=rs.getString(4)%></h3></td>
                </tr>
                <tr>
                    <td><h3>Email: </h3></td><td><h3><%=rs.getString(5)%></h3></td>
                    </tr>
                <tr>
                    <td><h3>Room No.: </h3></td><td><h3><%=rs.getString(6)%></h3></td>
                    </tr>
    </tbody>
            </table>
            
                    <form action="changepass" method="post">
                        <table class="table-borderless">
                            <tbody>
                                <tr><td colspan="2"><h2>Change Password:</h2></td></tr>
                                <tr><td>Enter New Password:</td><td><input type="password" name="upass" size="40"></td></tr>
                                <tr><td>Enter Again:</td><td><input type="password" name="upass1" size="40"></td></tr>
                            <tr><td colspan="2"><input type="submit" value="Change"></td></tr>
                        </tbody>
                        </table>
                    </form>
        </section>
                <%}%>
        <footer>Chitkara University 2019</footer>
    
</body>

</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
     <%
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","abcabc123");
        String id=(String)session.getAttribute("user");
        String query1="select * from cast where id=?";
        PreparedStatement pstmt=con.prepareStatement(query1);
        pstmt.setString(1, id);
        ResultSet rs=pstmt.executeQuery();
        if(rs.last()==true)
        {
        out.println("<script type=\"text/javascript\">");
       out.println("alert('Already Voted');");
       out.println("</script>");
       RequestDispatcher rd = request.getRequestDispatcher("inmain.jsp");
            rd.include(request, response);
        }
    else
    { %>
    <header id="log">
        <p><a href="logout.jsp"><i class="fas fa-sign-out-alt"></i></a></p>
    </header>
    
        <section id="cas">
            <article id="cas">
                <form action="CastVote" method="post">
                    <table border="1px solid grey">
                        <tr>
                            <th>Candidate</th>
                            <th>Your Choice</th>
                        </tr>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-male"
                aria-hidden="true"></i></span></p></td>
                            <td>Candidate A<br><input type="radio" name="candi" value="a"></td>
                        </tr>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-female"
                aria-hidden="true"></i></span></p></td>
                <td>Candidate B<br><input type="radio" name="candi" value="b"></td>
                        </tr>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-male"
                aria-hidden="true"></i></span></p></td>
                <td>Candidate C<br><input type="radio" name="candi" value="c"></td>
                        </tr>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-female"
                aria-hidden="true"></i></span></p></td>
                <td>Candidate D<br><input type="radio" name="candi" value="d"></td>
                        </tr>
                        <tr>
                        <td colspan="2"><p style="text-align:center;"><input class="caste" type="submit" ></p></td>
                        </tr>
                    </table>
                </form>
            
            </article>
        </section>
        <footer>Chitkara University 2018</footer>
    
 <%}%>
</body>

</html>

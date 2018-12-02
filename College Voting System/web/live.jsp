
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
     <%
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","abcabc123");
        %>
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
    <header id="log">
        <p><a href="logout.jsp"><i class="fas fa-sign-out-alt"></i></a></p>
    </header>
    
        <section id="cas">
            <article id="cas">
                <form action="" method="post">
                    <table border="1px solid grey">
                        <tr>
                            <th>Candidate</th>
                            <th>Vote Count</th>
                        </tr>
                         <%
                             String query1="select count(*) from cast where cand=?";
                                PreparedStatement pstmt=con.prepareStatement(query1);
                                pstmt.setString(1,"a");
                                ResultSet rs=pstmt.executeQuery();
                                if (rs.last()==true)
                                {
                         %>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-male"
                aria-hidden="true"></i><br>Candidate A</span></p></td>
                           
                            <td><%=rs.getString(1)%> Votes</td>
                        </tr>
                        <%}%>
                        <%
                             String query2="select count(*) from cast where cand=?";
                                PreparedStatement pstmt1=con.prepareStatement(query2);
                                pstmt1.setString(1,"b");
                                ResultSet rs1=pstmt1.executeQuery();
                                if (rs1.last()==true)
                                {
                         %>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-female"
                aria-hidden="true"></i><br>Candidate B</span></p></td>
                <td><%=rs1.getString(1)%> Votes</td>
                        </tr>
                        <%}%>
                        <%
                             String query3="select count(*) from cast where cand=?";
                                PreparedStatement pstmt2=con.prepareStatement(query3);
                                pstmt2.setString(1,"c");
                                ResultSet rs2=pstmt2.executeQuery();
                                if (rs2.last()==true)
                                {
                         %>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-male"
                aria-hidden="true"></i><br>Candidate C</span></p></td>
                <td><%=rs2.getString(1)%> Votes</td>
                        </tr>
                        <%}%>
                        <%
                             String query4="select count(*) from cast where cand=?";
                                PreparedStatement pstmt3=con.prepareStatement(query4);
                                pstmt3.setString(1,"d");
                                ResultSet rs3=pstmt3.executeQuery();
                                if (rs3.last()==true)
                                {
                         %>
                        <tr>
                            <td><p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-female"
                aria-hidden="true"></i><br>Candidate D</span></p></td>
                <td><%=rs3.getString(1)%> Votes</td>
                        </tr>
                        <%}%>
                    </table>
                </form>
            
            </article>
        </section>
        <footer>Chitkara University 2018</footer>
    
</body>

</html>


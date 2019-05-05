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
    <section id="complain">
    <form id="complain" action="addcomp" method="get">
        <div class="form-group">
            Enter Topic of your Complaint:<br> <input name="utopic" type="text" placeholder="" size="39" >
        </div>
        
        
        
        <div class="form-group">
            Describe your problem here:<br><textarea name="ucomplain" cols="40" rows="6" placeholder="Max 200 characters allowed" maxlength="200"></textarea>
        </div>
        <div class="form-group">
            <input type="submit" value="submit complaint">
        </div>
    </form>
    </section>
    <section id="complain">
        <% 
            String query2="Select * from comp where id=?";
            PreparedStatement pstmt=con.prepareStatement(query2);
            pstmt.setString(1, user);
            ResultSet rs1=pstmt.executeQuery();
        %>
        
        <h3 align="left">Submitted Complaints:</h3>
        <table class="table">
            <tbody>
                <tr>
                    <th>Topic</th>
                    <th>Complaint</th>
                    <th>Status</th>
                </tr>
                <%while(rs1.next())
                {%>
                <tr>
                    <td><%=rs1.getString(2)%></td>
                    <td><%=rs1.getString(3)%></td>
                    <td><%=rs1.getString(4)%></td> 
                </tr>
                
                <%}%>
            </tbody>
        </table>
    </section>
        <footer>Chitkara University 2019</footer>
    
</body>

</html>


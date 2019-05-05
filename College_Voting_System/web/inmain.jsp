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
    <header id="log">
        <p><a href="logout.jsp"><i class="fas fa-sign-out-alt"></i></a></p>
    </header>
    
        <section>
            <article>
                <p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-users"
                            aria-hidden="true"></i></span></p>
                <hr>
                <h3>Candidates</h3>
                <br>
                <a href="cand.jsp"><div class="in"><p style="text-align: center;font-size: 10px"><span style="text-align: center; display: inline-block;font-size: 10px"><i class="fas fa-arrow-alt-circle-right"
                    aria-hidden="true"></i></span></p></div></a>
            </article>
            <article>
                <p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-user-circle"
                            aria-hidden="true"></i></span></p>
                <hr>
                <h3>Profile</h3>
                <br>
                <a href="prof.jsp"><div class="in"><p style="text-align: center;font-size: 10px"><span style="text-align: center; display: inline-block;font-size: 10px"><i class="fas fa-arrow-alt-circle-right"
                    aria-hidden="true"></i></span></p></div></a>
            </article>
            <article>
                <p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-vote-yea"
                            aria-hidden="true"></i></span></p>
                <hr>
                <h3>Cast Vote</h3>
                <br>
                <a href="cast.jsp"><div class="in"><p style="text-align: center;font-size: 10px"><span style="text-align: center; display: inline-block;font-size: 10px"><i class="fas fa-arrow-alt-circle-right" accesskey=""aria-hidden="true"></i></span></p></div></a>
            </article>
            <article>
                <p style="text-align: center;"><span style="text-align: center; display: inline-block;"><i class="fas fa-poll-h"
                            aria-hidden="true"></i></span></p>
                <hr>
                <h3>Live results</h3>
                <br>
                <a href="live.jsp"><div class="in"><p style="text-align: center;font-size: 10px"><span style="text-align: center; display: inline-block;font-size: 10px"><i class="fas fa-arrow-alt-circle-right"
                    aria-hidden="true"></i></span></p></div></a>
            </article>
        </section>
        <footer>Chitkara University 2018</footer>
    
</body>

</html>

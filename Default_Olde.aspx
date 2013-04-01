<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .UglyassPinkText {
            color: #FF00FF;
        }
        .Introduction {
            font-style: italic;
            color: #0000FF;
        }
    </style>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/modernizr-2.6.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="PageWrapper">
        <header>Header Goes Here</header>
        <nav>Menu Goies Here</nav>
        <section id="MainContent">
    
        <h1 style="padding: 0px; margin: 0px 0px 10px 0px">Hey There Visitor, and welcome to Planet Wrox</h1>
        <p class="Introduction">
            Hello and thank you for paying a visit to <a href="http://www.PlanetWrox.com">www.PlanetWrox.com</a> , the coolest music and taco site on the internet!&nbsp; We&#39;re glad to have you.</p>
        <p class="Introduction">
            Feel free to <a href="Default.aspx">poke around</a> and be sure to check out our <strong>news and reviews</strong>.</p>
        </section>
        <aside id="Sidebar">Sidebar goes here</aside>
        <footer>Footer Goes Here</footer>
    </div>
    </form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min-jsf.css" rel="stylesheet">
    <title>Home</title>
</head>
    <body>
        <div class="container">
            Welcome Page
            <div>Your name: ${name}</div>
            <div>Your password: ${password}</div>
            <div><a  href="list-todos">Manage your todos</a></div>
        </div>

        <script src="META-INF\resources\webjars\bootstrap\5.1.3\js\bootstrap.bundle.js"></script>
        <script src="META-INF\resources\webjars\jquery\3.6.0\jquery.slim.js"></script>
    </body>
</html>

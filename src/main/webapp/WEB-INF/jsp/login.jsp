<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min-jsf.css" rel="stylesheet">
    <title>Login Page</title>
</head>
    <body>
        <div class="container">
            <h1>Welcome to the login page!</h1>
            <pre>${errorMessage}</pre>
            <form method="post">
                Name: <input type="text" name="name">
                Password: <input type="password" name="password">
                <input type="submit">
            </form>
        </div>

        <script src="META-INF\resources\webjars\bootstrap\5.1.3\js\bootstrap.bundle.js"></script>
        <script src="META-INF\resources\webjars\jquery\3.6.0\jquery.slim.js"></script>
    </body>
</html>

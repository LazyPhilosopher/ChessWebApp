<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
    <body>

        <h1>Welcome to the login page!</h1>
        <pre>${errorMessage}</pre>
        <form method="post">
            Name: <input type="text" name="name">
            Password: <input type="password" name="password">
            <input type="submit">
        </form>
    </body>
</html>
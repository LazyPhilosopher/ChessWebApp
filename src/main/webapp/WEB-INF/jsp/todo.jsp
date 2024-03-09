<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min-jsf.css" rel="stylesheet">
    <title>List Todos Page</title>
</head>
    <body>
        <div class="container">
            <h1>Enter Todo Details:</h1>
            <%--@elvariable id="todo" type="com.example.chesswebapp.todo.Todo"--%>
            <form:form method="post" modelAttribute="todo">
                Description: <form:input type="text" name="description" required="required" path="description"/>
                <form:input type="hidden" path="id" />
                <form:input type="hidden" path="done"/>
                <input type="submit" class="btn btn-success">
            </form:form>
        </div>

        <script src="META-INF\resources\webjars\bootstrap\5.1.3\js\bootstrap.bundle.js"></script>
        <script src="META-INF\resources\webjars\jquery\3.6.0\jquery.slim.js"></script>
    </body>
</html>

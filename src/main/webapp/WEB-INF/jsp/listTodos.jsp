<jsp:useBean id="name" scope="request" type="java.lang.String"/>
<jsp:useBean id="todos" scope="request" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min-jsf.css" rel="stylesheet">
    <title>List Todos Page</title>
</head>
    <body>
        <div class="container">
            <div>Welcome ${name}</div>
            <hr>
            <h1>Your Todos:</h1>
            <table class="table">
                <thead>
                <tr>
                    <th>id</th>
                    <th>Description</th>
                    <th>Target Date</th>
                    <th>Is Done?</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.id}</td>
                        <td>${todo.description}</td>
                        <td>${todo.targetDate}</td>
                        <td>${todo.done}</td>
                        <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">DELETE</a></td>
                        <td><a href="update-todo?id=${todo.id}" class="btn btn-success">UPDATE</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="add-todo" class="btn btn-success">Add todo</a>
        </div>

        <script src="META-INF\resources\webjars\bootstrap\5.1.3\js\bootstrap.bundle.js"></script>
        <script src="META-INF\resources\webjars\jquery\3.6.0\jquery.slim.js"></script>
    </body>
</html>

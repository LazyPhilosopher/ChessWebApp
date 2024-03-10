<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min-jsf.css" rel="stylesheet">
    <link href="webjars\bootstrap-datepicker\1.9.0\css\bootstrap-datepicker3.css" rel="stylesheet">

    <title>List Todos Page</title>
</head>
    <body>
        <div class="container">
            <h1>Enter Todo Details:</h1>
            <%--@elvariable id="todo" type="com.example.chesswebapp.todo.Todo"--%>
            <form:form method="post" modelAttribute="todo">
                <fieldset class="mb-3">
                    <form:label path="description">Description</form:label>
                    <form:input type="text" path="description" required="required"/>
                    <form:errors path="description" cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <form:label path="targetDate">Target Date</form:label>
                    <form:input type="text" path="targetDate" required="required"/>
                    <form:errors path="targetDate" cssClass="text-warning"/>
                </fieldset>

                <form:input type="hidden" path="id" />
                <form:input type="hidden" path="done"/>
                <input type="submit" class="btn btn-success">
            </form:form>
        </div>

        <script src="webjars\bootstrap\5.1.3\js\bootstrap.bundle.js"></script>
        <script src="webjars\jquery\3.6.0\jquery.slim.js"></script>
        <script src="webjars\bootstrap-datepicker\1.9.0\js\bootstrap-datepicker.min.js"></script>

        <script type="text/javascript">
            $('#targetDate').datepicker({
                format: 'yyyy-mm-dd',
                startDate: '-3d'
            });
        </script>
    </body>
</html>

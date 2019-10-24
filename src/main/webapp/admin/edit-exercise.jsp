<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Edit Exercises</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Edytuj zadanie</h1>
<hr>
<form action="/adminPanel/editExercise?id=${exercise.id}" method="post">
    <p>
        Nazwa: <input type="text" name="title" value="${exercise.title}" required>
    </p>
    <p>
        Opis: <input type="text" name="description"  value="${exercise.description}" required>
    </p>
    <button type="submit">Zapisz</button>
</form>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

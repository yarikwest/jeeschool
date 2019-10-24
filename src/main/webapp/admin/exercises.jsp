<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Exercises</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Zarządzanie zadaniami</h1>
<hr>
<p><a href="<c:url value="/adminPanel/addExercise"/>">Dodai nowe</a></p>
<table border="1">
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>#</th>
    </tr>
    <c:forEach var="exercise" items="${exercises}">
        <tr>
            <td>${exercise.title}</td>
            <td>${exercise.description}</td>
            <td><a href="<c:url value="/adminPanel/editExercise?id=${exercise.id}"/>">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

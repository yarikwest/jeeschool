<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>User</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Szczegóły użytkownika: ${user.userName}</h1>
<hr>
<p>Nazwa: ${user.userName}</p>
<p>Email: ${user.email}</p>
<p><strong>Dodane rozwiązania zadań:</strong></p>

<table border="1">
    <tr>
        <th>Tytuł zadania</th>
        <th>Data dodania</th>
        <th>#</th>
    </tr>

    <c:forEach var="solution" items="${solutions}">
        <tr>
            <td>${solution.value.title}</td>
            <td>${solution.key.created}</td>
            <td><a href="<c:url value="/solution?id=${solution.key.id}"/>">Szczegóły</a></td>
        </tr>
    </c:forEach>
</table>

<hr>
<jsp:include page="footer.jsp"/>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>index</title>
</head>
<body>
<%@include file="header.jsp" %>
<table border="1">
    <tr>
        <th>Tytuł zadania</th>
        <th>Autor rozwiązania</th>
        <th>Data rozwiązania</th>
        <th>Więcej</th>
    </tr>
    <c:forEach var="solution" items="${recent}">
        <tr>
            <td>${solution[0].title}</td>
            <td>${solution[1].userName}</td>
            <td>${solution[2].created}</td>
            <td><a href="<c:url value="/solution?id=${solution[2].id}"/>">open</a></td>
        </tr>
    </c:forEach>
</table>

<%@include file="footer.jsp" %>
</body>
</html>

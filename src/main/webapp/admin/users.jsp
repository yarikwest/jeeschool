<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Zarządzanie użytkownikami</h1>
<hr>
<p><a href="<c:url value="/adminPanel/addUser"/>">Dodai nowego</a></p>
<table border="1">
    <tr>
        <th>Imię i nazwisko</th>
        <th>Email</th>
        <th>#</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.userName}</td>
            <td>${user.email}</td>
            <td><a href="<c:url value="/adminPanel/editUser?userId=${user.id}"/>">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

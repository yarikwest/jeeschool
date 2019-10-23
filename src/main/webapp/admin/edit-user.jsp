<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Edit User</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Edytuj użytkownika</h1>
<hr>
<form action="/adminPanel/editUser" method="post">
    <p>
        <label>Imię i nazwisko:</label><br>
        <input type="text" name="username" value="${user.userName}" required>
    </p>
    <p>
        <label>Email:</label><br>
        <input type="email" name="email" value="${user.email}" required>
    </p>
    <p>
        <label>Grupa:</label><br>
        <select name="groupId">
            <c:forEach var="group" items="${groups}">
                <c:if test="${user.groupId == group.id}">
                    <option selected value="${group.id}">${group.name}</option>
                </c:if>
                <c:if test="${user.groupId != group.id}">
                    <option value="${group.id}">${group.name}</option>
                </c:if>
            </c:forEach>
        </select>
    </p>
    <input type="hidden" name="id" value="${user.id}">
    <button type="submit">Zapisz</button>
</form>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

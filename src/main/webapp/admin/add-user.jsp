<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Add User</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Dodaj użytkownika</h1>
<hr>
<c:if test="${invalidPass}">
    <h2 style="color: red">Wprowadzone hasła są różne</h2>
</c:if>
<form action="/adminPanel/addUser" method="post">

    <p>
        <label>Imię i nazwisko:</label><br>
        <input type="text" name="username" required>
    </p>
    <p>
        <label>Email:</label><br>
        <input type="email" name="email" required>
    </p>
    <p>
        <label>Hasło:</label><br>
        <input type="password" name="pass" required>
    </p>
    <p>
        <label>Powtórz hasło:</label><br>
        <input type="password" name="pass2" required>
    </p>
    <p>
        <label>Grupa:</label><br>
        <select name="groupId">
            <c:forEach var="group" items="${groups}">
                <option value="${group.id}">${group.name}</option>
            </c:forEach>
        </select>
    </p>

    <button type="submit">Zapisz</button>
</form>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

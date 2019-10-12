<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Groups</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Zarządzanie grupami użytkowników</h1>
<hr>
<p><a href="<c:url value="/adminPanel/addGroup"/>">Dodai nową</a></p>
<table border="1">
    <tr>
        <th>Nazwa grupy</th>
        <th>#</th>
    </tr>
    <c:forEach var="group" items="${groups}">
        <tr>
            <td>${group.name}</td>
            <td><a href="<c:url value="/adminPanel/editGroup?groupId=${group.id}"/>">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

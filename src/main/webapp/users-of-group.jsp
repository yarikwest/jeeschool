<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users of Group</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Lista użytkowników grupy: ${groupName}</h1>
<hr>
<table border="1">
    <tr>
        <th>Nazwa użytkownika</th>
        <th></th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.userName}</td>
            <td><a href="<c:url value="/user?id=${user.id}"/>">Szczegóły</a></td>
        </tr>

    </c:forEach>

</table>


<hr>
<jsp:include page="footer.jsp"/>
</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Edit Group</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Edytuj grupę</h1>
<hr>
<form action="/adminPanel/editGroup?groupId=${group.id}" method="post">
    <p>
        Nazwa grupy: <input type="text" name="groupName" value="${group.name}" required>
    </p>
    <button type="submit">Zapisz</button>
</form>
<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

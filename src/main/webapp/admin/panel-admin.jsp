<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Panel Admina</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h1>Panel Admina</h1>
<hr>
<p><a href="<c:url value="/adminPanel/exercises"/>">Lista zadań</a></p>
<p><a href="<c:url value="/adminPanel/groups"/>">Lista grup użytkowników </a></p>
<p><a href="<c:url value="/adminPanel/users"/>">Lista użytkowników</a></p>

<hr>
<jsp:include page="../footer.jsp"/>
</body>
</html>

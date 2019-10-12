<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Solution Detail</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<a href="<c:url value="/"/>">back</a>
<h1>Opis rozwiązania</h1>
<hr>
<section>
    <p> ${solution.description}</p>
</section>
<hr>
<jsp:include page="footer.jsp"/>
</body>
</html>

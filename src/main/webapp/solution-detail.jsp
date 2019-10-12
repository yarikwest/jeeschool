<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Solution Detail</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<section>
    <a href="<c:url value="/"/>">back</a>
    <p> ${solution.description}</p>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>

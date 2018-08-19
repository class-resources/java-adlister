<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSPs: Include</title>
    <%@include file="partials/stylesheets.html"%>
</head>
<body>
    <%@include file="partials/navbar.html"%>

    <h1>Some Page</h1>

    <%@include file="partials/footer.html"%>

    <%-- OR --%>
    <jsp:include page="partials/footer.html" />

</body>
</html>

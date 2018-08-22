<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <%--<div class="container">--%>
        <%--<h1>Welcome to the Adlister!</h1>--%>
    <%--</div>--%>

    <h1>Here are all the products:</h1>

    <%--Inside this JSP, we'll loop through the collection of products that was defined in the
    controller with the c:forEach tag, and, inside of the loop, generate some html for each product
    that includes the product's name and price. We'll use the EL syntax inside of the loop to access each
    product's properties.--%>

    <c:forEach var="product" items="${products}">
        <div class="product">
            <h2>${product.name}</h2>
            <p>Price: $ ${product.price}</p>
        </div>
    </c:forEach>

</body>
</html>

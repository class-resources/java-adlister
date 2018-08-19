<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 8/19/18
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- taglib directive for bringing in a library (JSP Standard Tag Library) --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%

    request.setAttribute("lactoseIntolerant", false);


    List<String> dairyProducts = new ArrayList<>();
    dairyProducts.add("Yogurt");
    dairyProducts.add("Milk");
    dairyProducts.add("Chedder");
    dairyProducts.add("Cottage Cheese");
    dairyProducts.add("Queso");
    request.setAttribute("dairyProducts", dairyProducts);


    request.setAttribute("mainMessage", "JSTL Lecture");

    request.setAttribute("isAdmin", true);

    request.setAttribute("age", 20);


%>
<html>
<head>
    <title>JSPs: JSTL</title>
</head>
<body>

    <%-- c:out tag for escaping output --%>
    <h1><c:out value="${mainMessage}" /></h1>

    <c:if test="${isAdmin}">
        <h3>Secret admin stuff!</h3>
    </c:if>

    <c:if test="${age >= 18}">
        <p>The cake is a lie.</p>
    </c:if>

    <c:choose>
        <c:when test="${lactoseIntolarant}">
            <h2>No Dairy Products</h2>
        </c:when>
        <c:otherwise>
            <h2>Dairy Products...</h2>
            <c:forEach items="${dairyProducts}" var="dairyProduct">
                <div>
                    <h3>${dairyProduct}</h3>
                </div>
            </c:forEach>
        </c:otherwise>
    </c:choose>

    <c:choose>
        <c:when test="${param.color.equals(\"blue\")}">
            <p style="color:blue">BLUE!</p>
        </c:when>
        <c:when test="${param.color.equals(\"red\")}">
            <p style="color:red">RED!</p>
        </c:when>
        <c:when test="${param.color.equals(\"yellow\")}">
            <p style="color:yellow">YELLOW!</p>
        </c:when>
    </c:choose>

</body>
</html>

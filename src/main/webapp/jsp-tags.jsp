<%-- This is a JSP page directive --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- This is another page directive that is used to import --%>
<%@ page import="java.util.*" %>

<% List<Integer> nums = new ArrayList<>(); %>

<%-- This is a way to define instance variables on what will become this JSP's servlet object --%>
<%! int x = 2; %>

<html>
<head>
    <!- This comment is available client side ->
    <%-- This comment only exists server side --%>
    <title>JSPs: Tags Lecture</title>
</head>
<body>
    <%-- These are a series of scriptlet tags used to mix Java code and HTML --%>
    <%
        String greeting = "Hello"; // we can have multiple statements
        String place = "Planet";
    %>

    <%
        String message = greeting + " " + place;
    %>

    <%-- This H1 uses a variation of a scriptlet tag that outputs the result of an expression --%>
    <h1><%= message %></h1>
    <%= 2 %>

</body>
</html>

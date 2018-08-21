<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 8/21/18
  Time: 12:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Form</title>
</head>
<body>

    <h1>Color Form</h1>

    <form action="/color" method="POST">
        <label for="color">Enter Color</label>
        <input id="color" type="color" name="color">
        <button>Submit</button>
    </form>

</body>
</html>

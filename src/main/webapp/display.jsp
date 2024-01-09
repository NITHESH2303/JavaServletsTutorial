<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sum.com/jsp/jstl.core" %>--%>
<html>
<head>
    <title>Display</title>
</head>
<body>

<%--    ${Student.name}--%>
    <%
        String name = request.getAttribute("Student").toString();
        out.println(name);
    %>
</body>
</html>

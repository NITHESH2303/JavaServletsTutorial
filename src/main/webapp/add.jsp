<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add</title>
</head>
<body bgcolor="aqua">
    <%--
        <% %> tag -> Scriplet
        jsp converts every content into this tag to servlet

        JSP Directive
            @page -> import, specify language
            @include -> header, footer
            @taglib ->use external library -> mention URI

    --%>
    <%
        int i = Integer.parseInt(request.getParameter("num1"));
        int j = Integer.parseInt(request.getParameter("num2"));

        int k = i+j;

        out.println("Output: " + k);
    %>
</body>
</html>

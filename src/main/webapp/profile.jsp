<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>

    <%
        String url = "jdbc:mysql://localhost:3306/test";
        String username = "nithesh-pt7363";
        String password = "";
        String sql = "select * from sample";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, password);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);
        rs.next();
    %>
    id: <%= rs.getString(1)%> <br>
    Name: <%= rs.getString(2)%> <br>
    Marks: <%= rs.getString(3)%> <br>

</body>
</html>

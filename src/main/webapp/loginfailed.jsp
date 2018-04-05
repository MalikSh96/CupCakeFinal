<%@page import="entity.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet.css" rel="stylesheet" type="text/css"/>
        <title>failedLogin</title>
    </head>
    <body>
                        <%
            Users user = (Users) session.getAttribute("user"); %>
                <div class="navbar">
  <a href="index.jsp">Home</a>
  <a href="login.jsp">Log In</a>
  <a href="registration.jsp">Registration</a>
  <%if(user.isAdmin())%><a href="admin.jsp">Admin</a>
</div>
        
        <h1>Login failed</h1>
        <div class="order-section">
        <a href ="login.jsp"> Retry login </a>
        </div>
    </body>
</html>

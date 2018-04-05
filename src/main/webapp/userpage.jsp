<%@page import="databaseConnect.DAO"%>
<%@page import="datasource.DataSource1"%>
<%@page import="entity.Users"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            Users user = (Users) session.getAttribute("user");
            DataSource1 ds1 = new DataSource1();
            DAO dao = new DAO(ds1.getDataSource());
            user.setId(user);
        %>
                <div class="navbar">
  <a href="index.jsp">Home</a>
  <a href="userpage.jsp">Your profile</a>
  <a href="products.jsp">Products</a>
  <%if(user.isAdmin())%><a href="admin.jsp">Admin</a>
</div>
        
        <h1>USERPAGE</h1>
    <center>
        <p>
        
            Logged in as: <%= user.getUsername() %><br>
            Id: <%= user.getId() %><br>
            Password: <%= user.getPassword() %><br>
            Balance: <%= dao.getUserBalance(user) %> <br>
            
            Admin: <%= user.isAdmin() %><br>
            
        </p>
        <div class="order-section">
        <a href ="products.jsp"> Products </a>
        </div>
    </center>
    </body>
</html>

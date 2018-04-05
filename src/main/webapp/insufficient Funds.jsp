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
            user.getCart().setTotalPrice(0);
            user.getCart().shoppingCart.clear();
        %>
        
                <div class="navbar">
  <a href="index.jsp">Home</a>
  <a href="userpage.jsp">Your profile</a>
  <a href="products.jsp">Products</a>
  <%if(user.isAdmin())%><a href="admin.jsp">Admin</a>
</div>
        
        <h1>Insufficient Funds</h1>
        <div class="order-section">
        <a href ="userpage.jsp"> Return to userpage </a>
        
        </div>
    </body>
</html>

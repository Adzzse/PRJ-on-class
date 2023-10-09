<%-- 
    Document   : viewCart
    Created on : Oct 9, 2023, 5:00:10 PM
    Author     : DoHoangAnh
--%>

<%@page import="java.util.Map"%>
<%@page import="anhdh.cart.CartObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Store</title>
    </head>
    <body>
        <h1>Book Store!</h1>
        <%
            //1.Customer goes to cart place
            if (session != null) {
                CartObject cart = (CartObject) session.getAttribute("CART");
                if (cart != null) {
                    Map<String, Integer> items = cart.getItems();
                    if (items != null) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Name</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 0;
                    for (String key : items.keySet()) {
                %>
                <tr>
                    <td> <%= ++count%>
                    .</td>
                    <td><%= key%>
                    </td>
                    <td><%= items.get(key)%>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <%
                        return;
                    }//end item existed
                }//end cart existed
            }//cart place must exist
%>
    </body>
</html>

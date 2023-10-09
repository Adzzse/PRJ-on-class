<%-- 
    Document   : search
    Created on : Oct 5, 2023, 4:27:03 PM
    Author     : DoHoangAnh
--%>

<%@page import="anhdh.registration.RegistrationDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                Cookie lastCookie = cookies[cookies.length - 1];
                String username = lastCookie.getName();
                %>
                <font color="red">
                Welcome, <%= username %>
                </font>
                <%
            }//end cookies existed
        %>
        <h1>Search Page</h1>
        <form action=""
              <table>
                <tbody>
                    <%int count = 0;
                        for (RegistrationDTO dto : ) {
                        }

                        <form    action = "DispatchServlet" method = "POST"
                                > <tr>
                                < td
                                > <   %= dto.getUsername%>
                <input type="hidden" name="txtUsername"
                       value="<%= dto.getUsername()%>" />
                </td>
                <td>
                    <input type="text" name="txtPassword"
                           value="<%= dto.getPassword()%>" />
                </td>
                <td>
                    <input type="checkbox" name="chkAdmin" value="ON" 
                           <%
                               if (dto.isRole()) {
                           %>
                           checked="checked"
                           <%
                               }
                           %>
                           />
                </td>
                <td>
                    <input type="hidden" name="lastSearchValue" value="<%= searchValue%>" />
                    <input type ="submit" value="Update" name="btAction" />
                </td>
                </tr>
        </form>
        <%
            }
        %>   
    </tbody>
</table>
</body>
</html>

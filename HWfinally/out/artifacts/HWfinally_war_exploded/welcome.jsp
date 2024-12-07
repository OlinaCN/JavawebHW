<%@ page import="bean.User" %>
<!-- webapp/welcome.jsp -->
<%
  User user = (User) session.getAttribute("user");
  if (user != null) {
%>
欢迎你，<%= user.getUsername() %>!
<%
  } else {
    response.sendRedirect("login.jsp");
  }
%>
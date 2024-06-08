

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/views/homeView.jsp");
    dispatcher.forward(request, response);
%>


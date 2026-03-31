<%@ page import="java.sql.*" %>
<%@ page import="yourpackage.DBConnection" %>

<%
Connection con=DBConnection.getCon();

PreparedStatement ps=con.prepareStatement(
"INSERT INTO chat(sender,message) VALUES(?,?)");

ps.setString(1,(String)session.getAttribute("user"));
ps.setString(2,request.getParameter("msg"));

ps.executeUpdate();

response.sendRedirect("chat.jsp");
%>
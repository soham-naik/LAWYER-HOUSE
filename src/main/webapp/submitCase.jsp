<%@ page import="java.sql.*" %>
<%@ page import="yourpackage.DBConnection" %>

<%
Connection con=DBConnection.getCon();

PreparedStatement ps=con.prepareStatement(
"INSERT INTO cases(name,type,description) VALUES(?,?,?)");

ps.setString(1,request.getParameter("name"));
ps.setString(2,request.getParameter("type"));
ps.setString(3,request.getParameter("description"));

ps.executeUpdate();

response.sendRedirect("payment.jsp");
%>
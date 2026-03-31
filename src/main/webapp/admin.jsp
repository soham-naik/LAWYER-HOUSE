<%@ page import="java.sql.*" %>
<%@ page import="yourpackage.DBConnection" %>

<h2>Admin Panel</h2>

<%
Connection con=DBConnection.getCon();
Statement st=con.createStatement();

ResultSet users=st.executeQuery("SELECT * FROM users");
while(users.next()){
out.println(users.getString("name")+" - "+users.getString("role")+"<br>");
}

ResultSet cases=st.executeQuery("SELECT * FROM cases");
while(cases.next()){
out.println(cases.getString("name")+" - "+cases.getString("type")+"<br>");
}
%>
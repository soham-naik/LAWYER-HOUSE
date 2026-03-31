<%@ page import="java.sql.*" %>
<%@ page import="yourpackage.DBConnection" %>

<h2>Lawyer Dashboard</h2>

<%
Connection con=DBConnection.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM cases");

while(rs.next()){
%>
<div style="border:1px solid;padding:10px;">
<%=rs.getString("name")%> -
<%=rs.getString("type")%><br>
<%=rs.getString("description")%>
</div>
<%
}
%>
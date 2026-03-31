<form action="sendMessage.jsp" method="post">
<input type="text" name="msg">
<button>Send</button>
</form>

<%@ page import="java.sql.*" %>
<%@ page import="yourpackage.DBConnection" %>

<%
Connection con=DBConnection.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM chat");

while(rs.next()){
out.println(rs.getString("sender")+": "+rs.getString("message")+"<br>");
}
%>
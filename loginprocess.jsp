<%@ page import="java.sql.*" %>
<%@ page import="yourpackage.DBConnection" %>

<%
String email=request.getParameter("email");
String pass=request.getParameter("password");

Connection con=DBConnection.getCon();

PreparedStatement ps=con.prepareStatement(
"SELECT * FROM users WHERE email=? AND password=?");

ps.setString(1,email);
ps.setString(2,pass);

ResultSet rs=ps.executeQuery();

if(rs.next()){
    session.setAttribute("user",email);
    session.setAttribute("role",rs.getString("role"));

    if(rs.getString("role").equals("lawyer")){
        response.sendRedirect("lawyerDashboard.jsp");
    } else {
        response.sendRedirect("userDashboard.jsp");
    }
} else {
    out.println("Invalid login");
}
%>


import java.sql.*;

public class DBConnection {
    public static Connection getCon() throws Exception {

        String url = System.getenv("DB_URL");
        String user = System.getenv("DB_USER");
        String pass = System.getenv("DB_PASS");

        Class.forName("org.postgresql.Driver");

        return DriverManager.getConnection(url, user, pass);
    }
}
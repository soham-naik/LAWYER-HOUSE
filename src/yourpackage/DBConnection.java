import java.sql.*;

public class DBConnection {
    public static Connection getCon() throws Exception {
        Class.forName("org.postgresql.Driver");
        return DriverManager.getConnection(
            "jdbc:postgresql://localhost:5432/legal_db",
            "postgres",
            "your_password"
        );
    }
}
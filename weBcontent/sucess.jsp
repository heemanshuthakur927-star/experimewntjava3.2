<%@ page import="java.sql.*,com.example.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Success Page</title>
</head>
<body>
    <h2>Data Submitted Successfully!</h2>
    <p><b>Name:</b> ${name}</p>
    <p><b>Email:</b> ${email}</p>

    <h3>All Users in Database:</h3>
    <table border="1">
        <tr><th>ID</th><th>Name</th><th>Email</th></tr>
        <%
            Connection con = DBConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM users");
            while(rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("email") %></td>
            </tr>
        <%
            }
            con.close();
        %>
    </table>
</body>
</html>

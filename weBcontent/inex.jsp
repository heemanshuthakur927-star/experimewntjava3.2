<!DOCTYPE html>
<html>
<head>
    <title>PBLJ Web App - User Form</title>
</head>
<body>
    <h2>Enter User Details</h2>
    <form action="UserServlet" method="post">
        Name: <input type="text" name="name" required><br><br>
        Email: <input type="email" name="email" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>

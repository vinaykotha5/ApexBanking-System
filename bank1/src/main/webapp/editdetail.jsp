<%@ page import="java.util.List" %>
<%@ page import="com.bank.dao.AdminDAO" %>
<%@ page import="com.bank.model.Customerlogin" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background for a clean look */
        }

        .form-container {
            margin: 20px;
            padding: 20px;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            color: #343a40;
            margin-bottom: 20px;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }

        .form-container label {
            font-weight: 500;
            color: #495057;
        }

        .form-container input {
            margin-bottom: 15px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .hidden {
            display: none;
        }
    </style>
</head>

<body>
<%
    AdminDAO admin = new AdminDAO();
    List<Customerlogin> customers = admin.getCustomerDetails();
%>
<div class="container form-container">
    <h2>Customer Details</h2>
    <form action="CustomerDetailsServlet" method="post" class="CustomerDetails">
        <div class="form-group">
            <label for="accountno">Enter Account No:</label>
            <input type="text" id="accountno" name="accountno" class="form-control" required>
        </div>
        <button class="btn btn-primary" type="submit">Actions</button>
    </form>
    <br><br>			
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

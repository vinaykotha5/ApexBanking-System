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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-IzA5d3XzlsdaANXlzAGwwA4B12tR6MztfJOm9Pjq5o0PA7fWpcIJoyH0roC2zA5fP" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Light background color */
            font-family: 'Poppins', sans-serif;
        }

        .container {
            margin-top: 20px;
        }

        .form-container {
            margin-bottom: 30px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #007bff; /* Blue color for the header */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .table-hover tbody tr:hover {
            background-color: #e9ecef; /* Light gray background on hover */
        }

        .message {
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
        }
    </style>
</head>

<body>
    <div class="container">
        <!-- Display error and success messages -->
        <div class="form-container">
            <% 
                String error = request.getParameter("error");
                if (error != null && !error.isEmpty()) {
            %>
            <div class="message error">
                <%= error %>
            </div>
            <% } %>

            <% 
                String success = request.getParameter("success");
                if (success != null && !success.isEmpty()) {
            %>
            <div class="message success">
                <%= success %>
            </div>
            <% } %>
        </div>

        <!-- Table of Customers -->
        <div class="form-container">
            <h2>All Customers</h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Account No.</th>
                        <th>Full Name</th>
                        <th>Address</th>
                        <th>Mobile No.</th>
                        <th>Email ID</th>
                        <th>Account Type</th>
                        <th>ID Proof</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        try {
                            AdminDAO admin = new AdminDAO();
                            List<Customerlogin> customers = admin.getCustomerDetails();
                            if (customers.isEmpty()) {
                                out.println("<tr><td colspan='7'>No customers found.</td></tr>");
                            } else {
                                for (Customerlogin customer : customers) { 
                    %>
                        <tr>
                            <td><%= customer.getAccountNo() %></td>
                            <td><%= customer.getFullName() %></td>
                            <td><%= customer.getAddress() %></td>
                            <td><%= customer.getMobileNo() %></td>
                            <td><%= customer.getEmailId() %></td>
                            <td><%= customer.getAccountType() %></td>
                            <td><%= customer.getIdProof() %></td>
                        </tr>
                    <% 
                                } 
                            }
                        } catch (Exception e) {
                            out.println("<tr><td colspan='7'>Error retrieving customer details: " + e.getMessage() + "</td></tr>");
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-hf3gSrbSUfFbc5t+nNGNeCBYl1Mdcv8B5DT9j6D3b0Dhnw6Q6Rm03sjPzR4pu0uC" crossorigin="anonymous"></script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background for consistency */
            font-family: 'Poppins', sans-serif;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
        }

        .form-container {
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

        .form-container .field {
            margin-bottom: 15px;
        }

        .form-container label {
            font-weight: 500;
            color: #495057;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ced4da;
        }

        .form-container input:focus {
            border-color: #80bdff;
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.25);
        }

        .form-container .row {
            margin-bottom: 15px;
        }

        .form-container .column {
            flex: 1;
            margin-right: 10px;
        }

        .form-container .column:last-child {
            margin-right: 0;
        }

        .createbtn {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .createbtn button {
            width: 48%;
            border-radius: 5px;
            border: none;
            color: #ffffff;
            font-size: 16px;
            padding: 10px;
            cursor: pointer;
        }

        .createbtn .create {
            background-color: #007bff;
        }

        .createbtn .create:hover {
            background-color: #0056b3;
        }

        .createbtn .delete {
            background-color: #dc3545;
        }

        .createbtn .delete:hover {
            background-color: #c82333;
        }

        .hidden {
            display: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="form-container" id="customer-registration">
            <form class="registration-form" id="registration-form" action="UpdateCustomerDetailsServlet" method="post">
                <input type="hidden" name="accountno" value="${account_no}">
                <h2>Edit Customer Details</h2>
                <div class="field">
                    <label for="customer-name">Customer Name</label>
                    <input type="text" id="customer-name" name="full_name" placeholder="Full Name" value="${full_name}" required>
                </div>
                <div class="field">
                    <label for="address">Address</label>
                    <input type="text" id="address" name="address" placeholder="Address" value="${address}" required>
                </div>
                <div class="field">
                    <div class="row">
                        <div class="column">
                            <label for="mobile-number">Mobile Number</label>
                            <input type="number" id="mobile-number" name="mobile_no" placeholder="+91" value="${mobile_no}" required>
                        </div>
                        <div class="column">
                            <label for="mail-id">Mail ID</label>
                            <input type="email" id="mail-id" name="email_id" placeholder="example@xyz.com" value="${email_id}" required>
                        </div>
                        <div class="column">
                            <label for="date-of-birth">Date Of Birth</label>
                            <input type="date" id="date-of-birth" name="date_of_birth" value="${date_of_birth}" required>
                        </div>
                    </div>
                </div>
                <div class="createbtn">
                    <button class="create" type="submit">Save Changes</button>
                    <form action="DeleteCustomer" method="post">
                        <input type="hidden" name="accountno" value="${account_no}">
                        <button class="delete" type="submit">Delete</button>
                    </form>
                </div>
            </form>
        </div>
        <div class="form-container hidden" id="customer-details">
            <h2>Customer Details</h2>
        </div>
    </div>

    <script>
        function showCustomerDetails() {
            document.getElementById('customer-registration-tab').classList.remove('active');
            document.getElementById('customer-details-tab').classList.add('active');
            document.getElementById('customer-registration').classList.add('hidden');
            document.getElementById('customer-details').classList.remove('hidden');
            document.querySelector('.content').style.transform = 'translateX(-100%)';
        }

        function showCustomerRegistration() {
            document.getElementById('customer-details-tab').classList.remove('active');
            document.getElementById('customer-registration-tab').classList.add('active');
            document.getElementById('customer-details').classList.add('hidden');
            document.getElementById('customer-registration').classList.remove('hidden');
            document.querySelector('.content').style.transform = 'translateX(0)';
        }

        function logout() {
            window.location.href = '/logout';
        }

        document.getElementById('registration-form').addEventListener('submit', function (event) {
            if (!this.checkValidity()) {
                event.preventDefault();
                alert('Please fill out all required fields.');
            }
        });
    </script>
</body>

</html>

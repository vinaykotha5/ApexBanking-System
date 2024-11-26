<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <style>
        /* Google Font Import - Poppins */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f0f2f5; /* Light gray background for better contrast */
        }

        .container {
            max-width: 900px; /* Wider container for better readability */
            width: 100%;
            border-radius: 8px;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #dee2e6;
            box-sizing: border-box;
        }

        header {
            font-size: 24px;
            font-weight: 600;
            color: #343a40;
            margin-bottom: 20px;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .fields {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .input-field {
            flex: 1 1 calc(50% - 20px);
            display: flex;
            flex-direction: column;
        }

        .input-field label {
            font-size: 14px;
            font-weight: 500;
            color: #495057;
            margin-bottom: 5px;
        }

        .input-field input,
        .input-field select {
            outline: none;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ced4da;
            padding: 10px;
            color: #495057;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .input-field input:focus,
        .input-field select:focus {
            border-color: #80bdff;
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.25);
        }

        .container form button,
        .backBtn {
            height: 45px;
            max-width: 180px;
            width: 100%;
            border: none;
            outline: none;
            color: #ffffff;
            border-radius: 5px;
            background-color: #007bff;
            transition: background-color 0.3s linear;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
        }

        .container form button:hover,
        .backBtn:hover {
            background-color: #0056b3;
        }

        .backBtn {
            background-color: #6c757d;
            margin-right: 10px;
        }

        .backBtn:hover {
            background-color: #5a6268;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            .input-field {
                flex: 1 1 100%;
            }
        }

        @media (max-width: 576px) {
            .fields {
                flex-direction: column;
            }

            .input-field {
                margin-bottom: 15px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <header>Customer Registration</header>
        <form action="RegisterCustomerServlet" method="post">
            <div class="fields">
                <div class="input-field">
                    <label for="customer-name">Customer Name</label>
                    <input type="text" id="customer-name" placeholder="Full Name" name="fullName" pattern="[A-Za-z0-9]+" required>
                </div>
                <div class="input-field">
                    <label for="address">Address</label>
                    <input type="text" id="address" placeholder="Address" name="address" pattern="[A-Za-z0-9]+" required>
                </div>
                <div class="input-field">
                    <label for="mobile-number">Mobile Number</label>
                    <input type="tel" id="mobile-number" placeholder="+91-validnumber" pattern="[0-9]{10}" name="mobileNo" required>
                </div>
                <div class="input-field">
                    <label for="mail-id">Mail ID</label>
                    <input type="email" id="mail-id" name="emailId" placeholder="example@xyz.com" pattern=".+@gmail\.com" required>
                </div>
                <div class="input-field">
                    <label for="date-of-birth">Date Of Birth</label>
                    <input type="date" id="date-of-birth" name="dob" min="1940-01-01" max="2008-01-01" required>
                </div>
                <div class="input-field">
                    <label for="account-type">Account Type</label>
                    <select id="account-type" name="accountType">
                        <option value="" disabled selected>Select</option>
                        <option value="savings">Savings</option>
                        <option value="current">Current</option>
                    </select>
                </div>
                <div class="input-field">
                    <label for="initial-balance">Initial Balance</label>
                    <input type="number" id="initial-balance" name="initialBalance" min="1000" max="1000000" required placeholder="Min Rs.1000">
                </div>
                <div class="input-field">
                    <label for="id-proof">ID Proof</label>
                    <select id="id-proof" name="idProof">
                        <option value="" disabled selected>Select</option>
                        <option value="Pan Card">Pan Card</option>
                        <option value="Aadhar Card">Aadhar Card</option>
                        <option value="Passport">Passport</option>
                    </select>
                </div>
            </div>
            <div class="buttons">
                <button class="backBtn" type="reset">Reset</button>
                <button type="submit">Create Account</button>
            </div>
        </form>
    </div>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setup Password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #f7f9fc;
        font-family: 'Poppins', sans-serif;
    }

    .registration-form {
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }

    .registration-form h2 {
        text-align: center;
        margin-bottom: 20px;
        font-weight: 600;
        color: #333;
    }

    .registration-form .field {
        margin-bottom: 20px;
    }

    .registration-form .field label {
        display: block;
        margin-bottom: 5px;
        color: #555;
    }

    .registration-form .field input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
    }

    .registration-form .field input:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .registration-form .create {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .registration-form .create:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <form class="registration-form" action="SetupPasswordServlet" method="post">
        <h2>Setup New Password</h2>
        <div class="field">
            <label for="customer-name">Account No:</label>
            <input type="text" id="customer-name" placeholder="Account No."
                class="cname" name="accountNo" required>
        </div>
        <div class="field">
            <label for="tempPassword">Temporary Password</label>
            <input type="password" id="tempPassword" placeholder="Temporary Password" name="tempPassword" required>
        </div>
        <div class="field">
            <label for="Password">New Password</label>
            <input type="password" id="Password" placeholder="Password" name="newPassword" required>
        </div>

        <button class="create btn-primary" type="submit">Submit</button>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

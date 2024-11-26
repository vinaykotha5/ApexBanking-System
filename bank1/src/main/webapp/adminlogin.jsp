<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        * {
            font-family: "Poppins", sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: url('ba.png') no-repeat center center fixed;
            background-size: cover;
        }

        .page {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            height: 100%;
            padding-right: 30px; /* Add some padding to move the form a little to the left */
        }

        .container {
            width: 350px; /* Adjusted width */
            height: auto; /* Height set to auto to accommodate content */
            background: #8efbf9; /* Background color updated to match customer login */
            border: 2px solid rgba(255, 255, 255, 0.6);
            border-radius: 15px; /* Adjusted border radius */
            backdrop-filter: blur(15px); /* Frosted glass effect */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.6); /* Softer shadow */
            position: relative; /* For pseudo-element */
            overflow: hidden; /* Hide pseudo-element overflow */
            color: #fff; /* White text color */
        }

        /* Add gradient overlay effect */
        .container::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(0, 0, 0, 0.4), rgba(255, 0, 150, 0.3)); /* Lighter gradient overlay */
            z-index: 0;
            pointer-events: none; /* Make sure it doesn't interfere with interactions */
        }

        .container form {
            position: relative; /* Position relative to stack above pseudo-element */
            z-index: 1; /* Ensure form is above the gradient */
            width: 100%;
        }

        .container form h2 {
            font-size: 2em; /* Adjusted font size */
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff; /* White text color */
        }

        .input-box {
            position: relative;
            margin: 20px 0;
            width: 100%;
            border-bottom: 2px solid #fff;
        }

        .input-box input {
            width: 100%;
            height: 40px;
            background: transparent;
            border: none;
            outline: none;
            font-size: 1em;
            padding: 0 30px 0 10px;
            color: #fff;
            transition: background 0.3s ease;
        }

        .input-box input:focus {
            background: rgba(255, 255, 255, 0.2); /* Slight background change on focus */
        }

        .input-box input:focus ~ label,
        .input-box input:valid ~ label {
            top: -20px;
            font-size: 0.8em;
            color: #007bff;
        }

        .input-box label {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #fff;
            font-size: 0.9em;
            pointer-events: none;
            transition: 0.5s;
        }

        .input-box .icon {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            font-size: 1.1em;
            color: #fff;
            transition: color 0.3s ease;
        }

        .btn {
            width: 100%;
            height: 45px;
            border-radius: 25px;
            padding: 0.5rem 1.5rem;
            border: none;
            background-color: #007bff; /* Blue button */
            color: #fff;
            text-align: center;
            font-weight: 600;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
        }

        .btn:active {
            background-color: #003d7a;
            transform: translateY(1px);
        }

        .bottom {
            display: flex;
            flex-direction: row;
            justify-content: center;
            width: 100%;
            color: #fff;
            margin-top: 20px;
        }

        .bottom a {
            text-decoration: none;
            color: #fff;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .bottom a:hover {
            color: #007bff; /* Change color on hover */
        }
    </style>
</head>
<body class="page">
    <div class="container">
        <form action="adminlogin" method="post">
            <h2>Admin Login</h2>
            <div class="input-box">
                <input required="" type="text" name="username" placeholder=" " />
                <label for="username">Enter Username</label>
                <i class="fas fa-user icon"></i>
            </div>
            <div class="input-box">
                <input required="" type="password" name="password" placeholder=" " />
                <label for="password">Enter Password</label>
                <i class="fas fa-lock icon"></i>
            </div>
            <button class="btn" type="submit">Login</button>
            <div class="bottom">
                <a href="customerlogin.jsp">Customer Login</a>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

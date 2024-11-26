<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, rgba(106, 17, 203, 0.7), rgba(37, 117, 252, 0.7)), /* Gradient overlay */
                        url('pxfuel.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            color: #fff; /* White text color */
            font-family: 'Arial', sans-serif; /* Modern font */
        }

        .centered {
            text-align: center;
            background: rgba(0, 0, 0, 0.4); /* Darker overlay for better contrast */
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(10px); /* Frosted glass effect */
        }

        .centered h1 {
            margin-bottom: 30px;
            font-size: 3.5rem;
            font-weight: 700;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6);
        }

        .buttons .button {
            display: inline-block;
            margin: 15px;
            padding: 15px 30px;
            font-size: 1.5rem;
            text-decoration: none;
            color: #fff;
            background-color: #007bff; /* Blue button */
            border-radius: 10px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
        }

        .buttons .button:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: translateY(-5px); /* Slight lift effect */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
        }

        .buttons .button:active {
            background-color: #003d7a; /* Even darker blue on click */
            transform: translateY(2px); /* Slight press effect */
        }
    </style>
</head>
<body>
    <div class="centered">
        <h1>Unity Bank</h1>
        <div class="buttons">
            <a href="adminlogin.jsp" class="button">Admin</a>
            <a href="customerlogin.jsp" class="button">Customer</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

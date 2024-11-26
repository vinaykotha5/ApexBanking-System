<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Account Login</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            padding-right: 30px;
        }

        .container {
            width: 350px; /* Adjusted width */
            height: auto; /* Height set to auto to accommodate content */
            background: #8efbf9;
            border: 2px solid rgba(255, 255, 255, 0.6);
            border-radius: 15px;
            backdrop-filter: blur(15px);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.6);
            position: relative;
            overflow: hidden;
        }

        .container::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(0, 0, 0, 0.3), rgba(255, 0, 150, 0.3));
            z-index: 0;
            pointer-events: none;
        }

        .container form {
            position: relative;
            z-index: 1;
            width: 100%;
        }

        .container form p.title {
            font-size: 1.5em;
            color: #fff;
            text-align: center;
            margin-bottom: 20px; /* Added bottom margin */
            margin-top: 0; /* Removed top margin */
        }

        .input-field {
            position: relative;
            margin: 20px 0; /* Added vertical margin for spacing */
            width: 100%;
            border-bottom: 2px solid #fff;
        }

        .input-field i {
            position: absolute;
            top: 50%;
            right: 10px; /* Adjusted to right */
            transform: translateY(-50%);
            color: #fff;
            font-size: 1.2em;
        }

        .input-field input {
            width: 100%;
            height: 40px;
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9em;
            padding: 0 35px 0 10px; /* Adjusted padding */
            color: #fff;
            transition: background 0.3s ease;
        }

        .input-field input:focus {
            background: rgba(255, 255, 255, 0.2);
        }

        .input-field input:focus ~ label,
        .input-field input:valid ~ label {
            top: -15px;
            font-size: 0.75em;
            color: #007bff;
        }

        .input-field label {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #fff;
            font-size: 0.9em;
            pointer-events: none;
            transition: 0.5s;
        }

        .submit-btn {
            width: 100%;
            height: 35px; /* Decreased height */
            border-radius: 20px;
            padding: 0.4rem 1rem; /* Decreased padding */
            border: none;
            background-color: #007bff;
            color: #fff;
            text-align: center;
            font-weight: 600;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            margin-top: 10px; /* Added top margin for spacing */
        }

        .submit-btn:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
        }

        .submit-btn:active {
            background-color: #003d7a;
            transform: translateY(1px);
        }

        .admin {
            margin-top: 20px; /* Added top margin */
        }

        .admin a {
            text-decoration: none;
            color: #fff;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .admin a:hover {
            color: #007bff;
        }
    </style>
</head>
<body class="page">
    <div class="container">
        <form class="form-control-custom" action="LoginServlet" method="post">
            <p class="title">Customer Login</p>
            <div class="input-field">
                <input required="" class="input" type="text" name="accountNo" placeholder=" " />
                <label class="label" for="accountNo">Enter Account Number</label>
                <i class="fas fa-user"></i>
            </div>
            <div class="input-field">
                <input required="" class="input" type="password" name="password" placeholder=" " />
                <label class="label" for="password">Enter Password</label>
                <i class="fas fa-lock"></i>
            </div>
            <button class="submit-btn" type="submit">Sign In</button>
            <div class="admin">
                <a href="adminlogin.jsp" class="shift">Login as Admin</a>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

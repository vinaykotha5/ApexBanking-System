<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%; /* Ensure the body takes up the full height */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
            background-color: #f4f6f9; /* Light gray background for a clean look */
        }

        body {
            color: #343a40;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #004d99; /* Deep blue for a professional look */
            color: white;
            padding: 10px;
            text-align: center;
            width: 100%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Ensure it stays on top */
        }

        .sidebar {
            background-color: #00264d; /* Darker blue for the sidebar */
            color: white;
            padding-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 60px; /* Adjust based on header height */
            bottom: 0;
            left: 0;
            width: 250px;
            z-index: 1000; /* Ensure it stays on top */
        }

        .sidebar h2 {
            color: #66b3ff; /* Light blue for header text in the sidebar */
            text-align: center;
            margin-bottom: 20px;
        }

        .sidebar .nav-link {
            color: #ffffff;
            font-weight: bold;
            transition: background-color 0.3s, color 0.3s;
        }

        .sidebar .nav-link:hover {
            background-color: #004d99;
            color: #ffffff;
        }

        .sidebar .nav-link.active {
            background-color: #003366; /* Even darker blue for active link */
            color: white;
        }

        .main-content {
            margin-left: 250px; /* Space for the sidebar */
            padding: 20px;
            flex: 1;
            background-color: #ffffff; /* White background for the main content */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            min-height: calc(100vh - 60px); /* Adjust based on header height */
            margin-top: 60px; /* Space for the header */
        }

        .content-header {
            border-bottom: 1px solid #dee2e6;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }

        .card {
            border: none;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .card-title {
            color: #004d99; /* Deep blue for card titles */
        }

        .nav-link i {
            margin-right: 8px;
        }

        /* Styling for iframe */
        iframe {
            width: 100%;
            height: calc(100vh - 120px); /* Adjust height based on header and sidebar */
            border: none;
        }
    </style>
</head>

<body>
    <header>
        <h1>Admin Dashboard</h1>
    </header>
    <nav class="sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="customerregister.jsp" onclick="loadPage('customerregister.jsp'); return false;"><i class="fas fa-user-plus"></i>Customer Registration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="customerdetails.jsp" onclick="loadPage('customerdetails.jsp'); return false;"><i class="fas fa-user"></i>Customer Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="editdetail.jsp" onclick="loadPage('editdetail.jsp'); return false;"><i class="fas fa-edit"></i>Modify Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="adminlogin.jsp" ><i class="fas fa-sign-out-alt"></i>Logout</a>
            </li>
        </ul>
    </nav>
    <main class="main-content">
        <div class="content-header">
            <h2>Welcome to the Admin Dashboard</h2>
        </div>
        <!-- Iframe for content display -->
        <iframe id="content-frame" src="customerregister.jsp"></iframe>
    </main>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function loadPage(pageUrl) {
            document.getElementById('content-frame').src = pageUrl;
        }
    </script>
</body>

</html>

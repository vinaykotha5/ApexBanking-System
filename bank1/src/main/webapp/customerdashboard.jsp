<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bank.model.Customerlogin, java.util.*, com.bank.model.Transaction, com.bank.dao.CustomerDAO" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
        }
        body {
            color: #343a40;
            display: flex;
            flex-direction: column;
        }
        header {
            background-color: #004d99;
            color: white;
            padding: 10px;
            text-align: center;
            width: 100%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        .container-fluid {
            display: flex;
            padding-top: 60px;
            height: 100%;
        }
        .sidebar {
            background-color: #004d99;
            padding: 20px;
            width: 250px;
            position: fixed;
            top: 60px;
            bottom: 0;
            left: 0;
            overflow-y: auto;
            border-right: 2px solid #003366;
        }
        .sidebar .nav-link {
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        .sidebar .nav-link i {
            margin-right: 10px;
        }
        .sidebar .nav-link:hover {
            background-color: #005bb5;
            border-radius: 5px;
        }
        .main {
            margin-left: 270px;
            padding: 20px;
            width: 100%;
        }
        .balance, .transactions {
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            position: relative;
        }
        .balance.total-balance {
            max-width: 300px; /* Corrected width */
             /* Adjusted height */
            padding: 15px; /* Adjusted padding */
        }
        .balance.customer-details {
            max-width: 1000px; /* Increased width */
        }
        .tabcontent {
            display: none;
        }
        .tabcontent.active {
            display: block;
        }
        .transaction-item {
            border-bottom: 1px solid #dee2e6;
            padding: 10px 0;
        }
        .transaction-item:last-child {
            border-bottom: none;
        }
        .print-button {
            position: absolute;
            top: 20px;
            right: 20px;
        }
        .span-view-icon {
            position: absolute;
            top: 10px;
            right: 10px;
        }
        .span-view-icon .btn {
            background-color: transparent;
            border: none;
            color: #004d99;
            font-size: 18px; /* Smaller font size for the eye icon */
        }
        .span-view-icon .btn:hover {
            color: #005bb5;
        }
        .collapse {
            display: flex;
            align-items: center;
        }
        .collapse .text {
            font-size: 20px; /* Font size for balance */
            font-weight: bold;
        }
    </style>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        $(document).ready(function(){
            fetchBalance();
            $('#defaultOpen').click();
        });
        
        function fetchBalance(){
            $.ajax({
                url: 'BalanceServlet',
                type: 'GET',
                success: function(data){
                    $('#balance').text(data.balance);
                },
                error: function(){
                    alert('Failure while fetching balance!');
                }
            });
        }

        function openPage(pageName, elmnt) {
            $('.tabcontent').removeClass('active');
            $('.tablink').removeClass('active');
            $('#' + pageName).addClass('active');
            $(elmnt).addClass('active');
        }
    </script>
</head>

<body>
<% 
    if (session == null || session.getAttribute("customer") == null) {
        response.sendRedirect("CustomerLogin.jsp");
        return;
    }

    Customerlogin customer = (Customerlogin) session.getAttribute("customer");
    CustomerDAO customerDAO = new CustomerDAO();
    int accountNo = (int) session.getAttribute("accountNo");
    List<Transaction> transactions = customerDAO.getTransactions(accountNo);
%>

<header>
    <h1>Customer Dashboard</h1>
</header>

<div class="container-fluid">
    <nav class="sidebar">
        <a class="nav-link tablink" href="javascript:void(0)" onclick="openPage('details', this)" id="defaultOpen">
            <i class="fas fa-user"></i> Details
        </a>
        <a class="nav-link tablink" href="javascript:void(0)" onclick="openPage('withdraw', this)">
            <i class="fas fa-minus-circle"></i> Withdraw
        </a>
        <a class="nav-link tablink" href="javascript:void(0)" onclick="openPage('deposit', this)">
            <i class="fas fa-plus-circle"></i> Deposit
        </a>
        <li class="nav-item">
                <a class="btn btn-danger w-100 mt-2" href="customerlogin.jsp" ><i class="fas fa-sign-out-alt"></i>Logout</a>
            </li>
        </form>
    </nav>

    <div class="main">
        <div class="row mb-4">
            <div class="col-md-8 welcome">
                <h4>Welcome back,</h4>
                <h1><%= customer.getFullName() %>!</h1>
            </div>
            <div class="col-md-4">
                <div class="balance total-balance">
                    <p><i class="fas fa-wallet"></i> Total Balance</p>
                    <div class="span-view-icon">
                        <button class="btn" type="button" data-toggle="collapse" data-target="#showBalance"
                            aria-expanded="false" aria-controls="showBalance">
                            <i class="fas fa-eye"></i> <!-- Smaller eye icon -->
                        </button>
                    </div>
                    <div style="min-height: 70px;">
                        <span>Rs. </span>
                        <div class="collapse collapse-horizontal" id="showBalance">
                            <span class="text" id="balance"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="details" class="tabcontent active">
            <div class="balance customer-details">
                <h5><i class="fas fa-user-circle"></i> Customer Details</h5>
                <p><strong><i class="fas fa-user"></i> Full Name:</strong> <%= customer.getFullName() %></p>
                <p><strong><i class="fas fa-mobile-alt"></i> Mobile No:</strong> <%= customer.getMobileNo() %></p>
                <p><strong><i class="fas fa-envelope"></i> Email:</strong> <%= customer.getEmailId() %></p>
                <p><strong><i class="fas fa-birthday-cake"></i> Date of Birth:</strong> <%= customer.getDateOfBirth() %></p>
                <p><strong><i class="fas fa-home"></i> Address:</strong> <%= customer.getAddress() %></p>
                <hr>
                <h5><i class="fas fa-credit-card"></i> Account Details</h5>
                <p><strong><i class="fas fa-id-card"></i> Account No:</strong> <%= customer.getAccountNo() %></p>
                <p><strong><i class="fas fa-building"></i> Account Type:</strong> <%= customer.getAccountType() %></p>
            </div>
        </div>

        <div id="withdraw" class="tabcontent">
            <div class="balance">
                <h5><i class="fas fa-minus-circle"></i> Withdraw Amount</h5>
                <form action="WithdrawServlet" method="post">
                    <div class="form-group">
                        <label for="withdraw">Enter Amount</label>
                        <input type="number" class="form-control" id="withdraw" name="amount" min="1" placeholder="INR">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>

        <div id="deposit" class="tabcontent">
            <div class="balance">
                <h5><i class="fas fa-plus-circle"></i> Deposit Amount</h5>
                <form action="DepositServlet" method="post">
                    <div class="form-group">
                        <label for="deposit">Enter Amount</label>
                        <input type="number" class="form-control" id="deposit" name="amount" min="1" placeholder="INR">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>

        <div class="transactions">
            <h5><i class="fas fa-history"></i> Transaction History</h5>
            <!-- Print Button -->
            <form action="downloadPDF" method="get" class="print-button">
                <button class="btn btn-secondary" type="submit"><i class="fas fa-print"></i> Print</button>
            </form>
            <div>
                <% for (Transaction transaction : transactions) { %>
                    <div class="transaction-item">
                        <p><strong><i class="fas fa-calendar-day"></i> Date:</strong> <%= transaction.getTransactionDate() %></p>
                        <p><strong><i class="fas fa-money-bill-wave"></i> Amount:</strong> Rs. <%= transaction.getAmount() %></p>
                        
                    </div>
                <% } %>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap and Font Awesome JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

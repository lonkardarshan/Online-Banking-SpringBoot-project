<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('d18.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            margin: 0; /* Remove default body margin */
            height: 100vh; /* Set body height to full viewport height */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.8);
            border: none; /* Remove card border */
            padding: 20px; /* Add padding to the card */
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .mt-3 {
            margin-top: 15px;
        }

        .text-center {
            color: #007bff;
        }
    </style>
</head>
<body>

<div class="card">
    <h2 class="text-center"><b>Login</b> <b>To</b> <b>Bank</b></h2>
    <font color="red">
        <%
        if (request.getAttribute("msg") != null) {
            out.println(request.getAttribute("msg"));
        }
        %>
    </font>
    <form action="/userlogin" method="post">
        <div class="form-group">
            <label for="username" style="display: none;">AccountNumber:</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Account Number" required>
        </div>

        <div class="form-group">
            <label for="password" style="display: none;">Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
        </div>

        <button type="submit" class="btn btn-primary btn-block">Login</button>

        <p class="mt-3 text-center">Don't have an account? <a href="/register">Register</a></p>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>

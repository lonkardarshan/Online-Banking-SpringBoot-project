<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <style>
        body {
            background-image: url('d38.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            height: 135vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            color: #333;
        }

        .navbar {
            background-color: navy blue;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 10px 12px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .registration-container {
            margin: 30px auto;
            width: 45%;
            max-width: 300px;
            background-color: navy blue; /* Nevy blue color */
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 10px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: green;
        }

        input {
            width: 100%;
            padding: 12px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: red;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 1px;
            cursor: pointer;
            font-size: 10px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #001f3f;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="home">Home</a>
        <a href="createAccount">Create Account</a>
        <a href="register">Register</a>
        <a href="/login">Logout</a>
    </div>

    <div class="container registration-container">
        <h2 class="text-center"><b>Create Account Form</b></h2>
        <form action="createAccountt" method="post">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="Email" name="Email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="form-group">
                <label for="adharcrad">Adharcard:</label>
                <input type="text" id="adharcrad" name="adharcrad" required>
            </div>
            
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>

            <button type="submit">Create Account</button>
        </form>
    </div>
</body>
</html>

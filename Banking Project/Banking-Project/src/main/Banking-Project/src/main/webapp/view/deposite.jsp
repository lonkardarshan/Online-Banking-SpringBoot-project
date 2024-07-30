<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
    <style>
        body {
            background-image: url('d37.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            height: 101vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            color: #333;
        }

        nav {
            background-color:  ; /* Corrected color value */
            overflow: hidden;
            width: 100%;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: blue;
        }

        .registration-container {
            width: 25%;
            background-color: merlot; /* Corrected color value */
            padding: 5px;
            border-radius: 1px;
            color: merlot; /* Corrected color value */
        }

        .card {
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: transparent;
        }

        .card-body {
            padding: 30px;
        }

        h2 {
            color: white;
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
            background-color: #2196F3;
            color: white;
            padding: 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
    <h2>Deposit</h2>
        <nav>
            <a href="home">Home</a>
            <a href="/withdraw">Withdraw</a>
            <a href="/deposit">Deposit</a>
            <a href="/login">Logout</a>
        </nav>
   	<font color=" red"> <%
 if (request.getAttribute("msg") != null) {
 	out.println(request.getAttribute("msg"));
 }
 %>
    </font>
    <form action="/deposite" method="post">
        Amount: <input type="number" name="amount" step="0.01" min="0"><br>
        <input type="submit" value="Deposite">
    </form>
</body>
</html>

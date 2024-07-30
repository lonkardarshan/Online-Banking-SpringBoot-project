<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
<style>
body {
	background-image: url('d35.jpg');
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
	background-color: red vlolet;
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
	background-color: merlot;
	padding: 5px;
	border-radius: 1px;
	color: merlot;
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

	<!-- Navigation bar -->
	<nav>
		<a href="home">Home</a> <a href="createAccount">Create Account</a> <a
			href="register">Register</a> <a href="/login">Logout</a>
	</nav>

<div class="container registration-container">
    <div class="row justify-content-start">
        <div class="col-md-8 col-md-offset-2 me-auto">
            <div class="card">
                <div class="card-body">
                    <h2 class="text-center" style="font-style: italic; color: Red;">
                        <marquee>
                            <b>B</b>ank <b>R</b>egistration <b>F</b>orm
                        </marquee>
                    </h2>
                    <form action="/registerr" method="post">
                        <div class="form-group">
                            <label for="name">Full Name:</label>
                            <input type="text" id="name" name="name" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" required>
                        </div>

                        <div class="form-group">
                            <label for="phone">Phone Number:</label>
                            <input type="tel" id="phone" name="phone" required>
                        </div>

                        <button type="submit">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

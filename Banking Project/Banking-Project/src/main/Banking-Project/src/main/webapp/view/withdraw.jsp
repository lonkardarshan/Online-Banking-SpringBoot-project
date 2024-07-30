<!DOCTYPE html>
<html>
<head>
<title>Withdraw</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	background-image: url('d22.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 76vh;
	margin: 0;
	            background-color: blue; /* Set a light background color */
	
}
/* Add these styles to your existing styles */
form {
	margin-top: 15px;
	padding: 10px;
	background-color: nevy blue; /* Semi-transparent white background */
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Soft box shadow */
	max-width: 400px; /* Adjust as needed */
	margin: auto; /* Center the form */
	
}

form div {
	margin-bottom: 15px;
}

input[type="text"], input[type="number"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 1px solid #ccc; /* Add a border */
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 15px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

h2 {
	color: skyblue;
	font-style: italic;
	font-weight: bold;
	font-size: 30px;
}

nav {
	display: flex;
	margin-top: 20px;
	align-items: center;
}
         

        marquee {
            color: red; /* Set text color to dark green */
            text-shadow: 3px 4px 4px #8FED8F; /* Add a light green shadow */
        }

a {
	color: red;
	text-decoration: none;
	margin: 0 10px;
	padding: 15px 20px;
	border: 1px solid #4CAF50;
	border-radius: 10px;
	font-size: 19px;
	height: 35px;
	width: 154px;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
}

a:hover {
	background-color: #4CAF50;
	color: white;
	animation: glow 1s infinite alternate; /* Added animation property */
}

@
keyframes glow {from { box-shadow:005px0px#4CAF50;
	
}

to {
	box-shadow: 0 0 20px 0px #4CAF50;
}

</style>

</head>
<body>
	<nav>
		<a href="/home"><b>Home</b></a> <a href="/withdraw"><b><i>Withdraw</i></b></a>
		<a href="deposite"><b><i>Deposite</i></b></a> <a href="/login"><b>Logout</b></a>
	</nav>
	    <center>
        <marquee>
            <h2><b><i>Withdraw Now</i></b></h2>
        </marquee>
    </center>
	<font color=" red"> <%
 if (request.getAttribute("msg") != null) {
 	out.println(request.getAttribute("msg"));
 }
 %>
	</font>
	<form action="withdraw" method="post">
		<div>
			<b>Enter Name</b>: <input type="text" name="name"><br>
			<b> Enter Amount</b>: <input type="number" name="amount" step="0.01"
				min="0"><br> <b>Enter PIN</b>: <input type="password"
				name="pin"><br>
		</div>
		<input type="submit" value="Withdraw">
	</form>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            background-image: url('d15.jpg'); 
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat; 
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h2 {
            color: sky blue; /* Text color for h2 */
            font-style: italic; /* Italicize the text */
            font-weight: bold; /* Make the text bold */
            font-size: 30px;
        }

        marquee {
            color: blue; /* Marquee text color */
            font-style: italic; /* Italicize the text */
            font-weight: bold; /* Make the text bold */
            font-size: 30px; /* Font size for the marquee text */
            mix-blend-mode: multiply; /* Mix violet and red */
        }

        nav {
            display: flex;
            margin-top: 20px;
        }

        a {
            color:  red ;
            text-decoration: none;
            margin: 0 10px;
            padding: 15px 20px; /* Padding ko behtar dikhai dene ke liye adjust karein */
            border: 1px solid #4CAF50;
            border-radius: 10px;
            font-size: 19px; /* Text size ko behtar dikhai dene ke liye adjust karein */
            height: 35px; /* Unchai ko behtar dikhai dene ke liye set karein */
            width: 154px; /* Chaurai ko behtar dikhai dene ke liye set karein */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        a:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <marquee behavior="scroll" direction="left">WellCome To Online Bankig  Systeam ${user.username}</marquee>
    <nav>
        <a href="home"><h1><b>Home</b></h1></a>
        <a href="/withdraw"><h1><b>Withdraw</b></h1></a>
        <a href="/deposite"><h1><b>Deposit</b></h1></a>
        <a href="/register"><h1><b>Register</b></h1></a>
        <a href="/createAccount"><h1><b>CreateAccount</b></h1></a>
        <a href="/login"><h1><b>Logout</b></h1></a>
    </nav>
</body>
</html>

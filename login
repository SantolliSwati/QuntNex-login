<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QuntNex Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .course-container {
            display: none;
            margin-top: 20px;
        }
        .course-container h3 {
            cursor: pointer;
            color: #007bff;
        }
        .course-details {
            display: none;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>QuntNex Login</h2>
        <input type="text" id="username" placeholder="Username" required>
        <input type="password" id="password" placeholder="Password" required>
        <button onclick="login()">Login</button>
    </div>

    <div class="course-container" id="courses">
        <h3 onclick="showDetails('java')">Java Full Stack</h3>
        <div class="course-details" id="java-details">
            <p>Java Full Stack includes:</p>
            <ul>
                <li>Java Programming</li>
                <li>Spring Framework</li>
                <li>Hibernate</li>
                <li>RESTful APIs</li>
            </ul>
        </div>

        <h3 onclick="showDetails('python')">Python Full Stack</h3>
        <div class="course-details" id="python-details">
            <p>Python Full Stack includes:</p>
            <ul>
                <li>Python Programming</li>
                <li>Django Framework</li>
                <li>Flask</li>
                <li>RESTful APIs</li>
            </ul>
        </div>

        <h3 onclick="showDetails('testing')">Software Testing</h3>
        <div class="course-details" id="testing-details">
            <p>Software Testing includes:</p>
            <ul>
                <li>Manual Testing</li>
                <li>Automation Testing (Selenium)</li>
                <li>Performance Testing</li>
            </ul>
        </div>
    </div>

    <script>
        function login() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            
            if (username === "admin" && password === "password") {
                document.querySelector('.login-container').style.display = 'none';
                document.getElementById('courses').style.display = 'block';
            } else {
                alert("Invalid credentials!");
            }
        }

        function showDetails(course) {
            var courseDetails = document.getElementById(course + '-details');
            var isVisible = courseDetails.style.display === 'block';
            document.querySelectorAll('.course-details').forEach(function (detail) {
                detail.style.display = 'none'; 
            });
            courseDetails.style.display = isVisible ? 'none' : 'block';
        }
    </script>

</body>
</html>

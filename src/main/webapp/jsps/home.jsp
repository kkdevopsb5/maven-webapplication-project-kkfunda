<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MS GROUP Home Page</title>
<link rel="icon" href="images/kkfunda.jpg">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: #f0f8ff;
        color: #333;
        margin: 0;
        padding: 0;
    }
    header {
        background-color: #1e90ff;
        color: white;
        padding: 20px;
        text-align: center;
    }
    .content {
        padding: 20px;
        text-align: center;
    }
    .info-box {
        background: #ffffff;
        border: 2px solid #1e90ff;
        border-radius: 8px;
        padding: 20px;
        max-width: 600px;
        margin: 20px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    footer {
        background-color: #1e90ff;
        color: white;
        text-align: center;
        padding: 10px;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
    img {
        width: 100px;
    }
    a {
        color: #ffffff;
        text-decoration: underline;
    }
</style>
</head>
<body>

<header>
    <h1>Welcome to KK DevOps</h1>
    <h2>KK DEVOPS WITH AWS AND SRE IN TELUGU-ENGLISH-Hindi-Tamil</h2>
</header>

<div class="content">

    <div class="info-box">
        <h3>Server Side IP Address</h3>
        <% 
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
        %>
        <p>Server Host Name: <strong><%= inetAddress.getHostName() %></strong></p>
        <p>Server IP Address: <strong><%= ip %></strong></p>

        <h3>Client Side IP Address</h3>
        <p>Client IP Address: <strong><%= request.getRemoteAddr() %></strong></p>
        <p>Client Host Name: <strong><%= request.getRemoteHost() %></strong></p>
    </div>

    <div>
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <p><strong>KK FUNDA</strong><br>
        Martha Halli, Bangalore<br>
        +91-9676831734<br>
        <a href="mailto:kkeducationblr@gmail.com">Mail to KK FUNDA</a></p>
    </div>

    <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>

</div>

<footer>
    KK FUNDA Training, Development Center.<br>
    <small>© 2024 by KK FUNDA</small>
</footer>

</body>
</html>

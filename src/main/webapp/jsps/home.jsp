<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: #f9f9f9;
        font-family: Arial, sans-serif;
    }
    header {
        background: linear-gradient(90deg, #007bff, #00c6ff);
        color: white;
        padding: 20px;
        text-align: center;
    }
    h1, h3 {
        margin: 10px 0;
    }
    .info-card {
        background: white;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
        padding: 20px;
        margin: 20px auto;
        max-width: 700px;
    }
    footer {
        margin-top: 30px;
        background: #222;
        color: white;
        padding: 15px;
        text-align: center;
    }
    footer a {
        color: #00c6ff;
        text-decoration: none;
    }
</style>
</head>
<body>

<header>
    <h1>🚀 Welcome to KK FUNDA kkdevops.com DEVOPS DEVSECOPS SRE NEW BATCH on OCT 26 10:30  AM IST ACTUAL CLASSES TIMINGS IS 6:45 AM TO 8:45 AM IST Portal 🚀</h1>
    <h3>Training | Development | Consulting</h3>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="info-card">
        <h3>🌐 Server Side Information</h3>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
            out.println("<p><b>Server Host Name:</b> " + inetAddress.getHostName() + "</p>");
            out.println("<p><b>Server IP Address:</b> " + ip + "</p>");
        %>
    </div>

    <!-- Client Info -->
    <div class="info-card">
        <h3>💻 Client Side Information</h3>
        <hr>
        <p><b>Client IP Address:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host Name:</b> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Contact Info -->
    <div class="info-card text-center">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" width="120" class="mb-3 rounded-circle shadow">
        <h4>KK FUNDA</h4>
        <p><b>Address:</b> Martha Halli, Bangalore</p>
        <p><b>Phone:</b> +91-9676831734</p>
        <p><b>Email:</b> <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></p>
        <a href="mailto:kkeducation@gmail.com" class="btn btn-primary mt-2">📧 Mail to KK FUNDA</a>
    </div>

    <!-- Service Links -->
    <div class="info-card text-center">
        <h4>⚙️ Our Services</h4>
        <p><a href="services/employee/getEmployeeDetails" class="btn btn-success">Get Employee Details</a></p>
    </div>

</div>

<footer>
    <p>© 2024 KK FUNDA Training & Development Center</p>
    <p><small>Powered by <a href="https://google.com/">KK FUNDA</a></small></p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

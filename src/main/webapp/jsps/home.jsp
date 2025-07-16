<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>KLR | DevOps Portal</title>
<link href="images/klr-icon.png" rel="icon">
<style>
    body {
        font-family: 'Courier New', monospace;
        background-color: #1e1e1e;
        color: #dcdcdc;
        margin: 0;
        padding: 20px;
    }
    h1, h3 {
        color: #00ffff;
        text-align: center;
    }
    a {
        color: #00ff00;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    .container {
        text-align: center;
    }
    hr {
        border: 1px solid #444;
    }
    .info-box {
        border: 1px solid #555;
        padding: 10px;
        margin: 20px auto;
        width: 80%;
        background-color: #2b2b2b;
    }
    small {
        color: #888;
    }
</style>
</head>
<body>
    <h1>Welcome to KLR DevOps</h1>
    <h1>KLR Portal</h1>
    <hr>

    <div class="info-box">
        <h3>Server Side IP Address</h3>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
            out.println("Server Host Name :: " + inetAddress.getHostName() + "<br>");
            out.println("Server IP Address :: " + ip);
        %>
    </div>

    <div class="info-box">
        <h3>Client Side IP Address</h3>
        <%
            out.print("Client IP Address :: " + request.getRemoteAddr() + "<br>");
            out.print("Client Host Name :: " + request.getRemoteHost());
        %>
    </div>

    <hr>
    <div class="container">
        <img src="images/klr-icon.png" alt="KLR Logo" width="100"><br>
        <strong>
            KLR, Martha Halli, Bangalore<br>
            📞 +91-9676831734<br>
            ✉️ <a href="mailto:klredu@gmail.com">klredu@gmail.com</a>
        </strong>
    </div>

    <hr>
    <p>🔧 Service : <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    <hr>
    <p align="center">KLR Training & Development Center</p>
    <p align="center"><small>Copyright © 2024 by <a href="https://google.com/">KLR</a></small></p>
</body>
</html>

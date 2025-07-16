<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>KLR | DevOps Innovation</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="images/klr-icon.png" rel="icon">

  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: #f0f0f0;
    }

    header {
      padding: 30px 20px;
      text-align: center;
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid #444;
    }

    header h1 {
      font-size: 48px;
      margin: 0;
      font-weight: bold;
      color: #00ffff;
      letter-spacing: 2px;
      text-transform: uppercase;
    }

    header h2 {
      font-size: 28px;
      margin-top: 5px;
      color: #00ff88;
    }

    .info-section {
      max-width: 800px;
      margin: 40px auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.05);
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.5);
    }

    .info-section h3 {
      border-bottom: 1px solid #555;
      padding-bottom: 10px;
      margin-bottom: 15px;
      font-size: 22px;
      color: #00ffcc;
    }

    .info-section p {
      font-size: 16px;
      margin: 5px 0;
    }

    .contact {
      text-align: center;
      margin-top: 40px;
    }

    .contact img {
      width: 120px;
      border-radius: 8px;
      margin-bottom: 15px;
    }

    .contact a {
      color: #00ff88;
      text-decoration: none;
      font-weight: bold;
    }

    footer {
      text-align: center;
      margin-top: 60px;
      padding: 20px;
      font-size: 14px;
      color: #aaa;
      border-top: 1px solid #444;
    }
  </style>
</head>

<body>
  <header>
    <h1>KLR DevOps</h1>
    <h2>Innovating Your Digital Backbone</h2>
  </header>

  <div class="info-section">
    <h3>🔧 Server Details</h3>
    <%
      InetAddress inetAddress = InetAddress.getLocalHost();
      String ip = inetAddress.getHostAddress();
      out.println("<p>Server Host Name: " + inetAddress.getHostName() + "</p>");
      out.println("<p>Server IP Address: " + ip + "</p>");
    %>

    <h3>🌐 Client Details</h3>
    <%
      out.println("<p>Client IP Address: " + request.getRemoteAddr() + "</p>");
      out.println("<p>Client Host Name: " + request.getRemoteHost() + "</p>");
    %>
  </div>

  <div class="contact">
    <img src="images/klr-icon.png" alt="KLR Logo">
    <p><strong>KLR, Martha Halli, Bangalore</strong></p>
    <p>📞 +91-9676831734</p>
    <p>📧 <a href="mailto:klredu@gmail.com">klredu@gmail.com</a></p>
  </div>

  <footer>
    <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    <p>&copy; 2024 KLR Training & Development Center | <a href="https://google.com/">KLR</a></p>
  </footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>KK FUNDA Home</title>
<link href="images/kkfunda.jpg" rel="icon" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
:root{
  --bg1:#0b1020; --bg2:#0a3d62; --accent:#00c6ff; --accent2:#7c3aed;
  --card:rgba(255,255,255,.10); --border:rgba(255,255,255,.18);
  --text:rgba(255,255,255,.92); --muted:rgba(255,255,255,.72);
}
body{
  background:
    radial-gradient(1200px 800px at 10% 10%, rgba(0,198,255,.25), transparent 60%),
    radial-gradient(900px 700px at 90% 20%, rgba(124,58,237,.22), transparent 55%),
    linear-gradient(180deg,var(--bg1),var(--bg2));
  color:var(--text);
  font-family:system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif;
  min-height:100vh;
}
.blob{position:absolute;filter:blur(28px);opacity:.55;z-index:0;animation:float 10s ease-in-out infinite;}
.blob.one{width:260px;height:260px;background:rgba(0,198,255,.45);top:70px;left:40px;border-radius:55% 45% 60% 40%;}
.blob.two{width:320px;height:320px;background:rgba(124,58,237,.45);top:140px;right:40px;border-radius:45% 55% 45% 55%;animation-delay:2.5s;}
@keyframes float{0%,100%{transform:translateY(0) translateX(0) scale(1);}50%{transform:translateY(-18px) translateX(10px) scale(1.03);}}
.wrap{position:relative;z-index:2;}
.navbar-lite{border-bottom:1px solid rgba(255,255,255,.10);backdrop-filter:blur(10px);background:rgba(0,0,0,.12);}
.hero{padding:56px 0 24px;}
.hero .badge{background:rgba(255,255,255,.14);border:1px solid rgba(255,255,255,.18);color:var(--text);font-weight:600;}
.hero h1{font-size:clamp(1.6rem,3.5vw,2.6rem);line-height:1.2;letter-spacing:-0.02em;margin-top:12px;}
.hero p{color:var(--muted);max-width:720px;}
.glass-card{
  background:var(--card);border:1px solid var(--border);border-radius:18px;
  box-shadow:0 18px 40px rgba(0,0,0,.25);backdrop-filter:blur(10px);
  padding:20px;height:100%;
}
.card-title{font-size:1.05rem;margin:0;font-weight:700;display:flex;align-items:center;gap:10px;}
.card-title .dot{width:10px;height:10px;background:var(--accent);border-radius:50%;box-shadow:0 0 14px rgba(0,198,255,.8);}
.divider{height:1px;background:rgba(255,255,255,.10);margin:14px 0 0;}
.kv{
  display:grid;grid-template-columns:1fr auto;gap:10px;align-items:start;
  padding:10px 12px;border-radius:12px;background:rgba(255,255,255,.08);
  border:1px solid rgba(255,255,255,.12);margin-top:12px;
}
.kv small{display:block;color:var(--muted);margin-bottom:2px;}
.kv code{color:#e7f7ff;background:transparent;padding:0;white-space:normal;}
.btn-soft{background:rgba(255,255,255,.14);border:1px solid rgba(255,255,255,.22);color:white;}
.btn-soft:hover{background:rgba(255,255,255,.22);border-color:rgba(255,255,255,.30);color:white;}
.brand-card{display:flex;gap:16px;align-items:center;}
.brand-card img{
  width:78px;height:78px;border-radius:18px;object-fit:cover;
  border:1px solid rgba(255,255,255,.18);box-shadow:0 10px 28px rgba(0,0,0,.25);
}
.brand-meta p{margin:4px 0;color:var(--muted);}
a{color:#b8f1ff;text-decoration:none;} a:hover{text-decoration:underline;}
footer{
  margin-top:28px;padding:18px 0 26px;color:var(--muted);
  border-top:1px solid rgba(255,255,255,.10);
  background:rgba(0,0,0,.10);backdrop-filter:blur(10px);
}
.toast-lite{
  position:fixed;bottom:18px;left:50%;transform:translateX(-50%);
  background:rgba(0,0,0,.55);border:1px solid rgba(255,255,255,.18);
  padding:10px 14px;border-radius:999px;color:#fff;display:none;z-index:9999;
}
</style>
</head>

<body>
<div class="blob one"></div>
<div class="blob two"></div>

<%
  InetAddress inetAddress = InetAddress.getLocalHost();
  String serverHost = inetAddress.getHostName();
  String serverIp = inetAddress.getHostAddress();

  String clientIp = request.getRemoteAddr();
  String clientHost = request.getRemoteHost();
  String userAgent = request.getHeader("User-Agent");
  if (userAgent == null) userAgent = "Unknown";
%>

<div class="wrap">
  <nav class="navbar navbar-expand-lg navbar-lite">
    <div class="container py-2">
      <div class="d-flex align-items-center gap-2">
        <img src="images/kkfunda.jpg" alt="KK FUNDA"
             style="width:34px;height:34px;border-radius:10px;border:1px solid rgba(255,255,255,.18);">
        <div>
          <div class="fw-bold">KK FUNDA</div>
          <div style="font-size:.85rem;color:rgba(255,255,255,.68)">Training • Development • Consulting</div>
        </div>
      </div>

      <div class="ms-auto d-flex gap-2">
        <a class="btn btn-soft btn-sm" href="services/employee/getEmployeeDetails">Employee Details</a>
        <a class="btn btn-primary btn-sm" href="mailto:kkeducationblr@gmail.com">Contact</a>
      </div>
    </div>
  </nav>

  <div class="container hero">
    <span class="badge rounded-pill px-3 py-2">🚀 New Batch • Jan 25th</span>
    <h1 class="mt-3">Welcome to <span style="color:var(--accent)">KK FUNDA</span> Learning Portal</h1>
    <p class="mt-2">Modern JSP UI with server/client diagnostics + quick links.</p>
  </div>

  <div class="container pb-4">
    <div class="row g-4">

      <div class="col-12 col-lg-6">
        <div class="glass-card">
          <div class="card-title"><span class="dot"></span>🌐 Server Side Information</div>
          <div class="divider"></div>

          <div class="kv">
            <div>
              <small>Server Host Name</small>
              <code id="serverHost"><%= serverHost %></code>
            </div>
            <button class="btn btn-soft btn-sm" type="button" onclick="copyText('serverHost')">Copy</button>
          </div>

          <div class="kv">
            <div>
              <small>Server IP Address</small>
              <code id="serverIp"><%= serverIp %></code>
            </div>
            <button class="btn btn-soft btn-sm" type="button" onclick="copyText('serverIp')">Copy</button>
          </div>

          <div class="mt-3" style="color:var(--muted);font-size:.92rem">
            Tip: If site doesn’t open, check Tomcat status + inbound rules (8080/80).
          </div>
        </div>
      </div>

      <div class="col-12 col-lg-6">
        <div class="glass-card">
          <div class="card-title"><span class="dot"></span>💻 Client Side Information</div>
          <div class="divider"></div>

          <div class="kv">
            <div>
              <small>Client IP Address</small>
              <code id="clientIp"><%= clientIp %></code>
            </div>
            <button class="btn btn-soft btn-sm" type="button" onclick="copyText('clientIp')">Copy</button>
          </div>

          <div class="kv">
            <div>
              <small>Client Host Name</small>
              <code id="clientHost"><%= clientHost %></code>
            </div>
            <button class="btn btn-soft btn-sm" type="button" onclick="copyText('clientHost')">Copy</button>
          </div>

          <div class="kv">
            <div>
              <small>User-Agent</small>
              <code><%= userAgent %></code>
            </div>
            <span class="badge rounded-pill"
                  style="background:rgba(255,255,255,.14);border:1px solid rgba(255,255,255,.18);">
              Browser
            </span>
          </div>
        </div>
      </div>

      <div class="col-12 col-lg-8">
        <div class="glass-card">
          <div class="brand-card">
            <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
            <div class="brand-meta">
              <div class="fw-bold fs-5">KK FUNDA</div>
              <p>📍 Martha Halli, Bangalore</p>
              <p>📞 +91-9676831734</p>
              <p>✉️ <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></p>

              <div class="d-flex flex-wrap gap-2 mt-2">
                <a href="mailto:kkeducationblr@gmail.com" class="btn btn-primary btn-sm">📧 Email Us</a>
                <a href="https://google.com/" class="btn btn-soft btn-sm" target="_blank" rel="noopener">🌐 Website</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-12 col-lg-4">
        <div class="glass-card text-center">
          <div class="card-title justify-content-center"><span class="dot"></span>⚙️ Our Services</div>
          <div class="divider"></div>

          <p class="mt-3" style="color:var(--muted);font-size:.95rem">Quick access to service endpoints.</p>

          <a href="services/employee/getEmployeeDetails" class="btn btn-success w-100">
            Get Employee Details →
          </a>

          <div class="mt-3" style="color:var(--muted);font-size:.85rem">
            If link fails: verify context path + mapping.
          </div>
        </div>
      </div>

    </div>
  </div>

  <footer>
    <div class="container d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center gap-2">
      <div>© 2024 KK FUNDA Training & Development Center</div>
      <div><small>Powered by <a href="https://google.com/" target="_blank" rel="noopener">KK FUNDA</a></small></div>
    </div>
  </footer>
</div>

<div id="toast" class="toast-lite">Copied ✅</div>

<script>
async function copyText(id){
  const el = document.getElementById(id);
  const text = (el?.innerText || "").trim();
  try{
    await navigator.clipboard.writeText(text);
  }catch(e){
    // fallback
    const ta = document.createElement("textarea");
    ta.value = text;
    document.body.appendChild(ta);
    ta.select();
    document.execCommand("copy");
    document.body.removeChild(ta);
  }
  showToast("Copied ✅");
}
function showToast(msg){
  const t = document.getElementById("toast");
  t.innerText = msg;
  t.style.display = "block";
  clearTimeout(window.__t);
  window.__t = setTimeout(()=> t.style.display="none", 1400);
}
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

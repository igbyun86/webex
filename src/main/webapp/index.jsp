<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*,java.net.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <title>Index Page </title>
</head>

<%
  Date date = new Date();
  out.print("<h2>" +date.toString()+"</h2>");
%>
<body>
<h2>Request Information</h2>

Client IP: <%= request.getRemoteAddr() %> <br>
HTTP Method: <%= request.getMethod() %> <br>

<h2>Response Information</h2>
Session ID: <%= session.getId() %> <br>
Session timeout: <%= session.getMaxInactiveInterval() %> <br>

<h2>Server Information</h2>
<%
  InetAddress inet= InetAddress.getLocalHost();
%>
Server IP: <%=inet.getHostAddress() %> <br>
Server Info: <%=application.getServerInfo() %> <br>
Server Name: <%=request.getServerName() %> <br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	display: flex;
	justify-content: center;
}

body {
	margin-top: 40vh;
}
</style>
</head>
<body>
	<%
			String temp = request.getParameter("pwd");
			int pwd = Integer.parseInt(temp);
			Integer pass = pwd;
			
			if (pass.equals(session.getAttribute("pass")))
			{
				double bal = (double) session.getAttribute("bal");
		%>
	<h1 style="color: green;">
		Available Balance :
		<%= bal%></h1>
	<%
			}
			else
			{
		%>
	<h1 style="color: red;">Please enter valid password.....</h1>
	<%
			}
		%>
</body>
</html>
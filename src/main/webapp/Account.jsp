<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
b {
	font: monospace;
	font-size: 60px;
}

a {
	text-decoration: none;
	color: blue;
	font-size: 30px;
}

body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 60vh;
	margin-top: 20px;
	background-color: skyblue;
}

fieldset {
	width: 40%;
	height: 200vwh;
	border-radius: 10px;
	background-color: cyan;
	box-shadow: 5px 8px 10px black;
	border: 0px;
	outline: 0px;
	padding: 40px
}

h2 {
	font-size: 30px;
}
</style>
</head>
<body>
	<h1>
		<b>SSK Bank</b>
	</h1>
	<center>
		<h2>
			Welcome
			<%= session.getAttribute("name") %></h2>
	</center>
	<fieldset>
		<h1 id=head1>Choose your option</h1>
		<ul type="none">
			<li><a href="CheckBalance.jsp">Check balance</a></li>
			<li><a href="Withdraw.jsp">Withdraw money</a></li>
			<li><a href="Delete.jsp">Delete the account</a></li>
			<li><a href="Update.jsp">Update password</a></li>
		</ul>
	</fieldset>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Interface</title>
<style>
#head {
	color: green;
	font-size: 60px;
}

#head1 {
	text-decoration: underline;
}

a {
	color: blue;
	font-size: 30px;
}

b {
	font-size: 30px;
	margin: 20px;
}

body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 60vh;
	margin-top: 80px;
	background-color: skyblue;
}

fieldset {
	width: 100%;
	height: 200vwh;
	border-radius: 10px;
	background-color: cyan;
	box-shadow: 5px 8px 10px black;
	border: 0px;
	outline: 0px;
	padding: 20px;
}

label, .ip, h1 {
	font-size: 40px;
}

#login {
	border-radius: 10px;
	font-size: 30px;
	border: 0px;
	outline: 0px;
	padding: 10px;
}

.ip {
	border: 0px;
	outline: 0px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<center>
		<h1 id="head">WELCOME TO SSK BANK!!!!!</h1>
		<fieldset>
			<h1 id="head1">LOG IN</h1>
			<form action="LoginBackend.jsp" method="post">
				<label>Enter the mobile number : </label><input name="mobile"
					class="ip"><br>
				<br> <label>Enter the password : </label><input name="pass"
					class="ip"><br>
				<br> <input type="submit" value="LOG IN" id="login">
			</form>
			<br>
		</fieldset>
		<br> <b>Click here to </b><a href="Create.jsp">Create an
			account</a><br> <b>Click here to </b><a href="Search.jsp">Search
			an account</a><br> <br>
		<br>
		<h1 style="color: red;">${param.msg}</h1>
	</center>
</body>
</html>


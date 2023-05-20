<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw Money</title>
<style>
body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 60vh;
	margin-top: 50px;
	background-color: skyblue;
}

fieldset {
	width: 20%;
	height: 200vwh;
	border-radius: 10px;
	background-color: cyan;
	box-shadow: 5px 8px 10px black;
	border: 0px;
	outline: 0px;
	padding: 40px
}

input, label {
	font-size: 30px;
	margin: 10px;
	border: 0px;
	outline: 0px;
	border-radius: 10px;
}

h1 {
	text-align: center;
	font-size: 40px;
	text-decoration: underline;
}

#draw {
	position: relative;
	left: 120px;
}
</style>
</head>
<body>
	<h1>Withdraw Money</h1>
	<br>
	<fieldset>
		<form action="WithdrawBackend.jsp" method="post">
			<label>Enter the amount to withdraw </label><input name="withdraw"><br>
			<br> <input type="submit" value="Withdraw" id="draw">
		</form>
	</fieldset>
</body>
</html>
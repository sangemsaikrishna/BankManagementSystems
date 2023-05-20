<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create A Account</title>
<style>
fieldset {
	width: 30%;
}

#create {
	position: relative;
	left: 340px;
}

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
	width: 40%;
	height: 200vwh;
	border-radius: 10px;
	background-color: cyan;
	box-shadow: 5px 8px 10px black;
	border: 0px;
	outline: 0px;
	padding: 40px
}

label, input {
	font-size: 30px;
}

h1 {
	font-size: 40px;
	text-decoration: underline black;
}

input {
	border: 0px;
	outline: 0px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<h1>Account Creation</h1>
	<br>
	<fieldset>
		<form action="CreateBackend.jsp" method="post">
			<label>Enter the name : </label><input name="name"><br>
			<br> <label>Enter the mobile number : </label><input
				name="mobile"><br>
			<br> <label>Enter the deposit amount :</label><input
				name="deposit"><br>
			<br> <label>Enter the Branch : </label><input name="branch"><br>
			<br> <label>Create a pin : </label><input name="pass"><br>
			<br> <input type="submit" value="Create" id="create">
		</form>
	</fieldset>
</body>
</html>
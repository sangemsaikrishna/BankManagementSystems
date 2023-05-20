<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Account</title>
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
	padding: 10px;
}

#heading {
	text-align: center;
	text-decoration: underline;
}
</style>
</head>
<body>
	<center>
		<h1 id="heading">DELECT ACCOUNT</h1>
		<fieldset>
			<form action="DeleteBackend.jsp" method="post">
				<label>Enter the password</label> <br> <input type="password"
					placeholder="Enter the password" name="pass"> <br> <input
					type="submit" value="Delete">
			</form>
		</fieldset>
		<h1 style="color: red;">${param.del}</h1>
	</center>
</body>
</html>
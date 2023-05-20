<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<style>
fieldset {
	width: 30%;
}

#search {
	position: relative;
	left: 140px;
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

#heading {
	text-align: center;
	font-size: 40px;
	text-decoration: underline;
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
</style>
</head>
<body>
	<h1 id="heading">Search an account</h1>
	<br>
	<fieldset>
		<form action="SearchBackend,jsp.jsp" method="post">
			<label>Enter the account number </label><input name="acc"><br>
			<br> <input type="submit" value="Search" id="search">
		</form>
	</fieldset>
	<h1 style="color: red;">${param.msg}</h1>
</body>
</html>
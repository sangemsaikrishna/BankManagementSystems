<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Password</title>
	<style>
		body 
		{
        	display: flex;
        	flex-direction: column;
        	justify-content: center;
        	align-items: center;
        	height: 60vh;
        	margin-top: 20px;
        	background-color: skyblue;
      	}
      	fieldset
		{
			width: 40%;
			height: 200vwh;
			border-radius: 10px;
			background-color: cyan;
			box-shadow: 5px 8px 10px black;
			border: 0px;
			outline: 0px;
			padding: 40px
		}
		fieldset
		{
			width: 20%;
			height: 200vwh;
			border-radius: 10px;
			background-color: cyan;
			box-shadow: 5px 8px 10px black;
			border: 0px;
			outline: 0px;
			padding: 40px
		}
		input,label
		{
			font-size: 30px;
			margin: 10px;
			border: 0px;
			outline: 0px;
			border-radius: 10px;
		}
		#heading
		{
			text-align: center;
			text-decoration: underline;
		}
		#submit
		{
			position: relative;
			left: 130px;
		}
	</style>
</head>
<body>
		<h1 id="heading">UPDATE PASSWORD</h1>
		<fieldset>
		<form action="UpdateBackend.jsp" method="post">
			<label>Enter the old password</label>
			<input type="password" name="pwd">
			<br>
			<label>Enter the new password</label>
			<input type="password" name="new">
			<br>
			<input type="submit" value="Submit" id="submit">
		</form>
		</fieldset>
		<h1 style="color: green;">${param.msg}</h1>
</body>
</html>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	color: green;
}
</style>
</head>
<body>
	<%
		String temp = request.getParameter("withdraw");
		double withdraw = Double.parseDouble(temp);
		long acc = Long.parseLong(session.getAttribute("acc").toString());
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "SELECT * FROM ssk06.bank WHERE acc = ?";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url);
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setLong(1, acc);
		ResultSet rs = ps.executeQuery();
		rs.next();
		double current_bal = rs.getDouble("deposit");
		if (withdraw <= current_bal && withdraw > 0)
		{
			double new_bal = current_bal - withdraw;
			String update_query = "UPDATE ssk06.bank SET deposit = ? WHERE acc = ?";
			PreparedStatement ps1 = connection.prepareStatement(update_query);
			ps1.setDouble(1, new_bal);
			ps1.setLong(2, acc);
			int n = ps1.executeUpdate();
			if (n != 0)
			{
	%>
	<fieldset>
		<h1>Withdrawal successful</h1>
		<h2>
			Updated Balance :
			<%= new_bal %></h2>
		<h2>
			Click here to return to <a href="BankInterface.jsp">Home Menu</a>
		</h2>
	</fieldset>
	<%
			}
			else
			{
					throw new Exception("Failed to update balance");
			}
		}
		else if (withdraw <= 0)
		{
			throw new Exception("Withdrawal amount must be greater than 0");
		}
		else
		{
			throw new Exception("Insufficient balance");
		}
	%>
	<h2>
		Click here to return to <a href="Withdraw.jsp">Withdraw Menu</a>
	</h2>
</body>
</html>
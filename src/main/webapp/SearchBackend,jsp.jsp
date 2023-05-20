<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
<style>
table, td {
	border: 3px solid orange;
	padding: 10px;
	border-collapse: collapse;
	text-align: center;
	font-size: 30px;
	color: black;
}

h2 {
	font-size: 30px;
}

body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: skyblue;
}
</style>
</head>
<body>
	<%
		String acc = request.getParameter("acc");
			//long acc = Long.parseLong(temp);
			// jdbc code
			String url = "jdbc:mysql://localhost:3306?user=root&&password=12345";
			String query = "SELECT * FROM ssk06.bank WHERE acc = ?";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url);
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, acc);
			ResultSet rs = ps.executeQuery();
			// to check whether the first record is present or not
			boolean status = rs.isBeforeFirst();
			if (status)
			{
				// records are present in buffer memory
	%>
	<!-- create table -->
	<table>
		<tr>
			<td>Acc No</td>
			<td>IFSC Code</td>
			<td>Name</td>
			<td>Mobile</td>
			<td>Balance</td>
			<td>Branch</td>
		</tr>
		<%
		 	// call next method and retrieve records
		 	while (rs.next())
		 	{
		 		String acc1 = rs.getString("acc");
		 		String ifsc = rs.getString("ifsc");
		 		String name = rs.getString("name");
		 		int mobile = rs.getInt("mobile");
		 		double bal = rs.getInt("deposit");
		 		String branch = rs.getString("branch");
 	%>
		<tr>
			<td><%= acc1 %></td>
			<td><%= ifsc %></td>
			<td><%= name %></td>
			<td><%= mobile %></td>
			<td><%= bal %></td>
			<td><%= branch %></td>
		</tr>
		<%
		 	}// close while loop
	%>
	</table>
	<h2>
		Click here to return to <a href="BankInterface.jsp">Home Menu</a>
	</h2>
	<%
		}// close if block
		else
		{
	%>
	<jsp:forward page="Search.jsp">
		<jsp:param value="No account found....." name="msg" />
	</jsp:forward>

	<%
		}// close else block
		connection.close();
	%>
</body>
</html>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		//long mobile = Long.parseLong(temp);
		String temp1 = request.getParameter("deposit");
		double deposit = Double.parseDouble(temp1);
		String branch = request.getParameter("branch");
		int pass = Integer.parseInt(request.getParameter("pass"));
		
		// to generate account number and ifsc number
		long acc = (long) (Math.random() * 1000000000 * 100);
        String ifsc = "";
        ifsc = ifsc + "S" + (int) (Math.random() * 10000) + "S" + (int) (Math.random() * 10000) + "K"
                + (int) (Math.random() * 10000);
		
		// jdbc
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "INSERT INTO ssk06.bank VALUES(?, ?, ?, ?, ?, ?, ?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url);
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setLong(1, acc);
		ps.setString(2, ifsc);
		ps.setString(3, name);
		ps.setString(4, mobile);
		ps.setDouble(5, deposit);
		ps.setString(6, branch);
		ps.setInt(7, pass);
		
		int rowsInserted = ps.executeUpdate();
		
		if (rowsInserted > 0)
		{
			// records is inserted
		%>
	<!-- <h1 style="color: green;"><%= rowsInserted %> got inserted.....</h1>
			<h2>Click here to return to <a href="BankInterface.jsp">Home Menu</a></h2> -->
	<jsp:forward page="BankInterface.jsp">
		<jsp:param value="Account created successfully!!!!!!" name="msg" />
	</jsp:forward>
	<%
		}
		else if (rowsInserted == 0)
		{
		%>
	<jsp:forward page="BankInterface.jsp">
		<jsp:param value="Account already exist......" name="msg" />
	</jsp:forward>
	<% 
		}
		else
		{
		%>
	<jsp:forward page="BankInterface.jsp">
		<jsp:param value="No account created......" name="msg" />
	</jsp:forward>
	<%
		}
		connection.close();
		%>
</body>
</html>
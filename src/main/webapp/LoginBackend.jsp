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
		String mobile = request.getParameter("mobile");
		//long mobile = Long.parseLong(temp);
		String temp1 = request.getParameter("pass");
		int pass = Integer.parseInt(temp1);
		
		// jdbc code
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "select * from ssk06.bank where mobile = ? and pass = ?";
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url);
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1, mobile);
		ps.setInt(2, pass);
		ResultSet rs = ps.executeQuery();
		
		boolean status = rs.isBeforeFirst();
		if (status)
		{
		 	while (rs.next())
		 	{
		 		session.setAttribute("name", rs.getString("name"));
		 		session.setAttribute("mobile", rs.getString("mobile"));// changed
		 		session.setAttribute("acc", rs.getLong("acc"));
		 		session.setAttribute("ifsc", rs.getString("ifsc"));
		 		session.setAttribute("bal", rs.getDouble("deposit"));
		 		session.setAttribute("branch", rs.getString("branch"));
		 		session.setAttribute("pass", rs.getInt("pass"));// added
	%>
	<jsp:forward page="Account.jsp"></jsp:forward>
	<%
		 	}
		}
		else
		{
	%>
	<jsp:forward page="BankInterface.jsp">
		<jsp:param value="No accound found....." name="msg" />
	</jsp:forward>
	<%
		}
		connection.close();
	%>
</body>
</html>
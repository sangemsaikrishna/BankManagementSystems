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
		String temp = request.getParameter("pass");
		int pwd = Integer.parseInt(temp);
		Integer pass = pwd;
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "delete from ssk06.bank where name = ? and pass = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url);
		PreparedStatement ps = connection.prepareStatement(query);
		
		if (pass.equals(session.getAttribute("pass")))
		{
			ps.setString(1, (String) session.getAttribute("name"));
			ps.setInt(2, pass);
			int record = ps.executeUpdate();
	%>
	<!-- <h1>No of rows updated : <%= record%></h1> -->
	<jsp:forward page="Delete.jsp">
		<jsp:param value="Account deleted successfully....." name="del" />
	</jsp:forward>
	<%
		}
	%>
</body>
</html>
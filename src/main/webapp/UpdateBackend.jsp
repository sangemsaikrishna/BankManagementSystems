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
		String temp = request.getParameter("pwd");
    	int oldPwd = Integer.parseInt(temp);
    	temp = request.getParameter("new");
    	int newPwd = Integer.parseInt(temp);
		
		String url = "jdbc:mysql://localhost:3306?user=root&&password=12345";
		
		Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url);

        String query = "UPDATE ssk06.bank SET pass=? WHERE pass=?";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setInt(1, newPwd);
        stmt.setInt(2, oldPwd);
        
        int rows = stmt.executeUpdate();
        
        if(rows > 0) 
        {
	%>
	<jsp:forward page="Update.jsp">
		<jsp:param value="Password updated successfully!" name="msg" />
	</jsp:forward>
	<!-- <h1>Password updated successfully!</h1> -->
	<%
		}
		else
		{
	%>
	<jsp:forward page="Update.jsp">
		<jsp:param value="Old password is incorrect. Please try again!"
			name="msg" />
	</jsp:forward>
	<h1 style="color: red;">Old password is incorrect. Please try
		again.</h1>
	<%
		}
	%>
</body>
</html>
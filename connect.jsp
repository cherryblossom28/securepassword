<%@ page import="java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>



<%
	Connection connection = null;
 	try {
	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/enp","root","root");
	}
	catch(Exception e)
	{
		PrintWriter out = response.getWriter();
        e.printStackTrace(new PrintWriter(out));
	}
%>
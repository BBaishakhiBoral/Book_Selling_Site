<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");

	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	try
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		
		String url="jdbc:oracle:thin:@localhost:1521:XE";//XE 
		String userid="system";//system
		String pass_word="sujoy2001";//as defined
		
		con=DriverManager.getConnection(url,userid,pass_word);
		stmt=con.createStatement();
		
		String query="SELECT USERNAME FROM BOOK_USERS WHERE USERNAME='"+username+"' AND PASSWORD='"+password+"'";
		rs=stmt.executeQuery(query);
		if(rs.next())
		{
			response.sendRedirect("home.jsp");	
			session.setAttribute("username", username);
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
			
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
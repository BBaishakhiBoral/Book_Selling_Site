<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
	Connection con=null;
	Statement stmt=null;
	
	try
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		
		String url="jdbc:oracle:thin:@localhost:1521:XE";//XE 
		String userid="system";//system
		String pass_word="sujoy2001";//as defined
		
		con=DriverManager.getConnection(url,userid,pass_word);
		stmt=con.createStatement();
		
		session.invalidate();
		String query="TRUNCATE TABLE CART";
		stmt.execute(query);
		response.sendRedirect("register&login.jsp");
		con.close();
	}
	catch(Exception e){
		out.print(e);
	}
%>
</body>
</html>
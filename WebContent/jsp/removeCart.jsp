<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%
	String b=request.getParameter("bid");
	out.print(b);
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
		String query="DELETE FROM CART WHERE BID='"+b+"'";
		int rn=stmt.executeUpdate(query);
		if(rn>0){
			response.sendRedirect("cartview.jsp");
		}
		con.close();
	}
	catch(Exception e){
		out.print(e);
	}
%>
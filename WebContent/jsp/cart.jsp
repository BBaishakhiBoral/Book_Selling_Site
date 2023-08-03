<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	
<%
	String bn=request.getParameter("bn");
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	ResultSet rst=null;
	try
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		
		String url="jdbc:oracle:thin:@localhost:1521:XE";//XE 
		String userid="system";//system
		String pass_word="sujoy2001";//as defined
		
		con=DriverManager.getConnection(url,userid,pass_word);
		stmt=con.createStatement();
		
		String q1="SELECT BID,BNAME,PRICE FROM BOOKS WHERE BID='"+bn+"'";
		rs=stmt.executeQuery(q1);
		if(rs.next()){
			String bid=rs.getString(1);
			String bname=rs.getString(2);
			double price=rs.getDouble(3);
			
			out.print(bid);
			String q3= "INSERT INTO CART(BID,BNAME,PRICE,QUANTITY,TOTAL) VALUES('"+bid+"','"+bname+"','"+price+"','"+1+"','"+price+"')";
			int rn=stmt.executeUpdate(q3);
			if(rn>0){
				session.setAttribute("msg", "Added to Cart");
				response.sendRedirect("home.jsp");
			}
		}
		con.close();
	}
	catch(Exception e)
	{
		out.print(e);
		String q2="SELECT QUANTITY,PRICE FROM CART WHERE BID='"+bn+"'";
		rst=stmt.executeQuery(q2);
		if(rst.next()){
			int q=rst.getInt(1)+1;
			double p=rst.getDouble(2);
			String q4="UPDATE CART SET QUANTITY='"+q+"',TOTAL='"+(p*q)+"' WHERE BID='"+bn+"'";
			int rn=stmt.executeUpdate(q4);
			if(rn>0){
				session.setAttribute("msg", "Already in Cart");
				response.sendRedirect("home.jsp");
			}
		}
	}
	
%>
	
</body>
</html>
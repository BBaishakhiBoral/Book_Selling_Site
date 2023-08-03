<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
	String bid=request.getParameter("bid");
	int q=Integer.parseInt(request.getParameter("q"));
	double p=Double.valueOf(request.getParameter("p"));
	out.print(q);
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
		q=q-1;
		if(q>0){
			String q4="UPDATE CART SET QUANTITY='"+q+"',TOTAL='"+(p*q)+"' WHERE BID='"+bid+"'";
			int rn=stmt.executeUpdate(q4);
			if(rn>0){
				response.sendRedirect("cartview.jsp");
			}
		}
		else{
			response.sendRedirect("removeCart.jsp?bid="+bid);
		}
	}
	catch(Exception e){
		out.print(e);
	}
%>

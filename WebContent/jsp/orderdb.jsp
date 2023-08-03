<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String ad1=request.getParameter("ad1");
	String ad2=request.getParameter("ad2");
	String town=request.getParameter("town");
	String state=request.getParameter("state");
	String pin=request.getParameter("pin");
	String phno=request.getParameter("phno");
	String add=ad1+","+ad2+","+town+","+state;
	String name=fname+" "+lname;
	double total=Double.valueOf(session.getAttribute("total").toString())+100;
	int i=0;
	int []a;
	int []b;
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
		
		String q1="SELECT COUNT(*) FROM BUYERS";
		rs=stmt.executeQuery(q1);
		rs.next();
		int n=rs.getInt(1)+1;
		String oid='P'+Integer.toString(n);
		String query="INSERT INTO BUYERS(ORDERID,NAME,ADDRESS,PIN,PHONE,TOTAL) VALUES('"+oid+"','"+name+"','"+add+"','"+pin+"','"+phno+"','"+total+"')";
		int rn=stmt.executeUpdate(query);
		if(rn>0)
		{
			String q2="SELECT COUNT(*) FROM CART";
			rs=stmt.executeQuery(q2);
			rs.next();
			int c=rs.getInt(1);
			a=new int[c];
			b=new int[c];
			String q3="SELECT BID,QUANTITY FROM CART";
			rs=stmt.executeQuery(q3);
			while(rs.next())
			{
				a[i]=Integer.parseInt(rs.getString(1));
				b[i]=rs.getInt(2);
				i++;
			}
			for(i=0;i<a.length;i++)
			{	
				String q4="INSERT INTO ORDERLIST(ORDERID,BID,QUANTITY) VALUES('"+oid+"','"+String.valueOf(a[i])+"','"+b[i]+"')";
				stmt.executeUpdate(q4);
			}
			String q5="TRUNCATE TABLE CART";
			stmt.execute(q5);
			response.sendRedirect("home.jsp");
		}
		con.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}	
%>
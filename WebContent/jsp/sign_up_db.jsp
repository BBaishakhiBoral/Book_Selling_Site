<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
	String username=request.getParameter("username");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String phno=request.getParameter("phno");

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
		
		String query="INSERT INTO BOOK_USERS(USERNAME,EMAIL,PASSWORD,PHONENO) VALUES('"+username+"','"+email+"','"+password+"','"+phno+"')";
		int rn=stmt.executeUpdate(query);
		if(rn>0)
			response.sendRedirect("register&login.jsp");
		con.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}	
%>
  <%--
    function validRegister(){
    	var user=document.getElementById("user").value;
    	var email=document.getElementById("email").value;
    	var a=document.getElementById("pw").value;
    	var b=document.getElementById("cpw").value;
    	var ph=document.getElementById("phno").value;
    	if(user==""){
    		document.getElementById("message").innerHTML="**Please enter username";
    		return false;
    	}
    	
    	if(email==""){
    		document.getElementById("message").innerHTML="**Please enter email-id";
    		return false;
    	}
    	
    	if(ph==""){
    		document.getElementById("message").innerHTML="**Please enter phone number";
    		return false;
    	}
    	if(ph.match(/[0-9]/))
    		true;
    	else{
    		document.getElementById("message").innerHTML="**Phone number contains only digits";
    		return false;
    	}
    	
    	if(ph.length!=10){
    		document.getElementById("message").innerHTML="**Phone number must have 10 digits";
    		return false;
    	}
    	if(a==""){
    		document.getElementById("message").innerHTML="**Please enter password";
    		return false;
    	}
    	if(b==""){
    		document.getElementById("message").innerHTML="**Please enter confirm password";
    		return false;
    	}
    	
    	
    	if(a.length<6)
    	{
    		document.getElementById("message").innerHTML="**Password must have minimum 6 characters";
    		return false;
    	}
    	
    	if(a.match(/[A-Z]/))
    		true;
    	else{
    		document.getElementById("message").innerHTML="**Password must contain atleast one Capital letter";
    		return false;
    	}
    	
    	if(a.match(/[a-z]/))
    		true;
    	else{
    		document.getElementById("message").innerHTML="**Password must contain atleast one small letter";
    		return false;
    	}

    	if(a.match(/[0-9]/))
    		true;
    	else{
    		document.getElementById("message").innerHTML="**Password must contain atleast one digit";
    		return false;
    	}
    	
    	if(a.match(/[!\@\#\$\%\^\&\*\(\)|_\-\+\=\?\>\<\.\,\;\'\:\"]/))
    		true;
    	else{
    		document.getElementById("message").innerHTML="**Password must contain atleast one special character";
    		return false;
    	}
    	if(a!=b){
    		document.getElementById("message").innerHTML="**Password and Confirm Password doesn't match";
    			return false;
    		}
    	alert("Successfully Registered");
    	return true;
    }--%>
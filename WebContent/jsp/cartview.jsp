<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style type="text/css">
    
	
    </style>
    <link rel="stylesheet" href="../css/cartview.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>
        <table id="tab">
                <tr>
                    <th>Products</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Remove</th>
                </tr>
             <%
				Connection con;
				Statement stmt;
				ResultSet rs;
				double sum=0;
				try
				{
					String driver="oracle.jdbc.driver.OracleDriver";
					Class.forName(driver);
					
					String url="jdbc:oracle:thin:@localhost:1521:XE";//XE 
					String userid="system";//system
					String pass_word="sujoy2001";//as defined
					
					con=DriverManager.getConnection(url,userid,pass_word);
					stmt=con.createStatement();
					
					String query="SELECT * FROM CART";
					rs=stmt.executeQuery(query);
					if(rs.next()==false)
					{
							%>
							<tr>
								<td colspan="5" align="center">Empty Cart</td>
							</tr>
							
							<% 	
					}
					else{
						do
						{
							sum=sum+rs.getDouble("TOTAL");
				%>
						<tr>
							<td><%= rs.getString("BNAME") %></td>
							<td><%= rs.getDouble("PRICE") %></td>
							<td><a href="minus.jsp?bid=<%=rs.getString(1) %>&q=<%=rs.getInt(4) %>&p=<%=rs.getDouble(3) %>"><i class="fa-solid fa-minus"></i></a><%= rs.getInt("QUANTITY") %><a href="plus.jsp?bid=<%=rs.getString(1) %>&q=<%=rs.getInt(4) %>&p=<%=rs.getDouble(3) %>"><i class="fa-solid fa-plus"></i></a></td>
							<td><%= rs.getDouble("TOTAL") %></td>
							<td><a class="btn" href="removeCart.jsp?bid=<%=rs.getString(1)%>"><i class="fa-solid fa-trash-can"></i></a></td>
						</tr>
			<%
					}while(rs.next());
					}
					con.close();
				}
				catch(Exception e)
				{
					out.print(e);
				}
			%>
        </table>

    <div class="total">
                
                    <h3>CART TOTAL</h3>
                        <h5><b>Subtotal</b></h5>
                        <p><%=sum %></p>
                     <ul class="link">
                    <li><a href="home.jsp">RETURN TO HOME</a></li>
                    <li><a href="order.jsp"">PROCEED TO BUY</a></li>
                    </ul>
                </div>
           
</body>
</html>
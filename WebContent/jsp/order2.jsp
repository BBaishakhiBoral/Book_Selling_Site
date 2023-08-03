<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order</title>
    <link rel="stylesheet" href="../css/order1.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>

  <body>
    <div class="container box">
      <div class="title">
        <h2>Place Your Order</h2>
        <div class="icon">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            version="1.1"
            width="32"
            height="32 "
            viewBox="0 0 256 256"
            xml:space="preserve"
          >
            <defs></defs>
            <g
              style="
                stroke: none;
                stroke-width: 0;
                stroke-dasharray: none;
                stroke-linecap: butt;
                stroke-linejoin: miter;
                stroke-miterlimit: 10;
                fill: currentColor;
                fill-rule: nonzero;
                opacity: 1;
              "
              transform="translate(1.4065934065934016 1.4065934065934016) scale(2.81 2.81)"
            >
              <path
                d="M 75.927 56.703 H 43.784 c -1.539 0 -2.897 -1.005 -3.347 -2.477 L 30.199 20.754 h -8.58 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 h 11.169 c 1.539 0 2.897 1.005 3.347 2.476 l 10.239 33.473 h 27.227 l 7.633 -18.164 H 54.06 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 H 86.5 c 1.172 0 2.267 0.587 2.915 1.563 c 0.648 0.977 0.766 2.213 0.312 3.293 L 79.153 54.559 C 78.607 55.858 77.336 56.703 75.927 56.703 z"
                style="
                  stroke: none;
                  stroke-width: 1;
                  stroke-dasharray: none;
                  stroke-linecap: butt;
                  stroke-linejoin: miter;
                  stroke-miterlimit: 10;
                  fill: currentColor;
                  fill-rule: nonzero;
                  opacity: 1;
                "
                transform=" matrix(1 0 0 1 0 0) "
                stroke-linecap="round"
              />
              <circle
                cx="41.455"
                cy="67.935"
                r="4.815"
                style="
                  stroke: none;
                  stroke-width: 1;
                  stroke-dasharray: none;
                  stroke-linecap: butt;
                  stroke-linejoin: miter;
                  stroke-miterlimit: 10;
                  fill: currentColor;
                  fill-rule: nonzero;
                  opacity: 1;
                "
                transform="  matrix(1 0 0 1 0 0) "
              />
              <circle
                cx="77.195"
                cy="67.935"
                r="4.815"
                style="
                  stroke: none;
                  stroke-width: 1;
                  stroke-dasharray: none;
                  stroke-linecap: butt;
                  stroke-linejoin: miter;
                  stroke-miterlimit: 10;
                  fill: currentColor;
                  fill-rule: nonzero;
                  opacity: 1;
                "
                transform="  matrix(1 0 0 1 0 0) "
              />
              <path
                d="M 25.434 56.703 H 8.687 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 h 16.747 c 1.933 0 3.5 1.567 3.5 3.5 S 27.367 56.703 25.434 56.703 z"
                style="
                  stroke: none;
                  stroke-width: 1;
                  stroke-dasharray: none;
                  stroke-linecap: butt;
                  stroke-linejoin: miter;
                  stroke-miterlimit: 10;
                  fill: currentColor;
                  fill-rule: nonzero;
                  opacity: 1;
                "
                transform=" matrix(1 0 0 1 0 0) "
                stroke-linecap="round"
              />
              <path
                d="M 20.247 42.18 H 3.5 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 h 16.747 c 1.933 0 3.5 1.567 3.5 3.5 S 22.18 42.18 20.247 42.18 z"
                style="
                  stroke: none;
                  stroke-width: 1;
                  stroke-dasharray: none;
                  stroke-linecap: butt;
                  stroke-linejoin: miter;
                  stroke-miterlimit: 10;
                  fill: currentColor;
                  fill-rule: nonzero;
                  opacity: 1;
                "
                transform=" matrix(1 0 0 1 0 0) "
                stroke-linecap="round"
              />
            </g>
          </svg>
        </div>
      </div>
      <hr />

      <div class="d-flex">
        <form name="form" action="order2db.jsp" method="post" onclick="return valid()">
          <label>
            <span class="fname"
              >First Name <span class="required">*</span></span>
            <input type="text" name="fname" required />
          </label>

          <label>
            <span class="lname">Last Name <span class="required">*</span></span>
            <input type="text" name="lname" required />
          </label>

          <label>
            <span>Street Address <span class="required">*</span></span>
            <input
              type="text"
              name="ad1"
              placeholder="House number and street name"
              required
            />
          </label>

          <label>
            <span>&nbsp;</span>
            <input
              type="text"
              name="ad2"
              placeholder="Apartment, suite, unit etc. (optional)"
            />
          </label>

          <label>
            <span>Town / City <span class="required">*</span></span>
            <input type="text" name="town" required />
          </label>

          <label>
            <span>State <span class="required">*</span></span>
            <input type="text" name="state" required />
          </label>

          <label>
            <span>Post code / ZIP <span class="required">*</span></span>
            <input type="text" name="pin" required />
          </label>

          <label>
            <span>Phone <span class="required">*</span></span>
            <input type="tel" name="phno" required />
          </label>
          <input type="submit" value="Place Order" onclick="return valid();">
        </form>
        <div class="orderItems">
          <div class="orderItems-products">
            <div class="icon-title">
              <h3>Shopping Cart</h3>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                version="1.1"
                width="32"
                height="32 "
                viewBox="0 0 256 256"
                xml:space="preserve"
              >
                <defs></defs>
                <g
                  style="
                    stroke: none;
                    stroke-width: 0;
                    stroke-dasharray: none;
                    stroke-linecap: butt;
                    stroke-linejoin: miter;
                    stroke-miterlimit: 10;
                    fill: currentColor;
                    fill-rule: nonzero;
                    opacity: 1;
                  "
                  transform="translate(1.4065934065934016 1.4065934065934016) scale(2.81 2.81)"
                >
                  <path
                    d="M 75.927 56.703 H 43.784 c -1.539 0 -2.897 -1.005 -3.347 -2.477 L 30.199 20.754 h -8.58 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 h 11.169 c 1.539 0 2.897 1.005 3.347 2.476 l 10.239 33.473 h 27.227 l 7.633 -18.164 H 54.06 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 H 86.5 c 1.172 0 2.267 0.587 2.915 1.563 c 0.648 0.977 0.766 2.213 0.312 3.293 L 79.153 54.559 C 78.607 55.858 77.336 56.703 75.927 56.703 z"
                    style="
                      stroke: none;
                      stroke-width: 1;
                      stroke-dasharray: none;
                      stroke-linecap: butt;
                      stroke-linejoin: miter;
                      stroke-miterlimit: 10;
                      fill: currentColor;
                      fill-rule: nonzero;
                      opacity: 1;
                    "
                    transform=" matrix(1 0 0 1 0 0) "
                    stroke-linecap="round"
                  />
                  <circle
                    cx="41.455"
                    cy="67.935"
                    r="4.815"
                    style="
                      stroke: none;
                      stroke-width: 1;
                      stroke-dasharray: none;
                      stroke-linecap: butt;
                      stroke-linejoin: miter;
                      stroke-miterlimit: 10;
                      fill: currentColor;
                      fill-rule: nonzero;
                      opacity: 1;
                    "
                    transform="  matrix(1 0 0 1 0 0) "
                  />
                  <circle
                    cx="77.195"
                    cy="67.935"
                    r="4.815"
                    style="
                      stroke: none;
                      stroke-width: 1;
                      stroke-dasharray: none;
                      stroke-linecap: butt;
                      stroke-linejoin: miter;
                      stroke-miterlimit: 10;
                      fill: currentColor;
                      fill-rule: nonzero;
                      opacity: 1;
                    "
                    transform="  matrix(1 0 0 1 0 0) "
                  />
                  <path
                    d="M 25.434 56.703 H 8.687 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 h 16.747 c 1.933 0 3.5 1.567 3.5 3.5 S 27.367 56.703 25.434 56.703 z"
                    style="
                      stroke: none;
                      stroke-width: 1;
                      stroke-dasharray: none;
                      stroke-linecap: butt;
                      stroke-linejoin: miter;
                      stroke-miterlimit: 10;
                      fill: currentColor;
                      fill-rule: nonzero;
                      opacity: 1;
                    "
                    transform=" matrix(1 0 0 1 0 0) "
                    stroke-linecap="round"
                  />
                  <path
                    d="M 20.247 42.18 H 3.5 c -1.933 0 -3.5 -1.567 -3.5 -3.5 s 1.567 -3.5 3.5 -3.5 h 16.747 c 1.933 0 3.5 1.567 3.5 3.5 S 22.18 42.18 20.247 42.18 z"
                    style="
                      stroke: none;
                      stroke-width: 1;
                      stroke-dasharray: none;
                      stroke-linecap: butt;
                      stroke-linejoin: miter;
                      stroke-miterlimit: 10;
                      fill: currentColor;
                      fill-rule: nonzero;
                      opacity: 1;
                    "
                    transform=" matrix(1 0 0 1 0 0) "
                    stroke-linecap="round"
                  />
                </g>
              </svg>
            </div>

            <hr />
            
              <table id="customers">
                <%
                String bn=request.getParameter("bn");
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
					
					String q1="SELECT BNAME,PRICE FROM BOOKS WHERE BID='"+bn+"'";
					rs=stmt.executeQuery(q1);
					while(rs.next())
					{
						sum=rs.getDouble("PRICE");
			%>
						<tr>
							<td><%= rs.getString("BNAME") %></td>
							<td>1</td>
							<td><%= rs.getDouble("PRICE") %></td>
							<td><%= rs.getDouble("PRICE") %></td>
						</tr>
			<%
					}
					session.setAttribute("bn", bn);
					session.setAttribute("total", sum);
					con.close();
				}
				catch(Exception e)
				{
					out.print(e);
				}
			%>
              </table>
              <hr />
              <h3 class="total-amount">
                Sub-total: <span><%=sum %></span>
              </h3>
              <h3 class="total-amount">
                Shipping Charge: <span>60.0</span>
              </h3>
              <hr />
              <h3 class="total-amount">
                Total: <span><%=sum+60 %></span>
              </h3>
          </div>
          <div class="orderItems-payment">
            <h3>Payment Method</h3>
            <hr />
            <div class="mode-select">
              <div class="mode">
                <label for="cash-on-delivery">
                  <img src="../image1/cash-on-delivery.png" alt="" />
                  Cash on Delivery
                </label>
                <input
                  type="radio"
                  id="cash-on-delivery"
                  name="payment-mode"
                  value="cash-on-delivery"
                  required
                />
              </div>
              <div class="mode">
                <label for="online-payment">
                  <img
                    src="../image1/cashless-payment.png"
                    alt=""
                  />Credit/Debit/UPI</label
                >
                <input
                  type="radio"
                  id="online-payment"
                  name="payment-mode"
                  value="online-Payment"
                  required
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
 	function valid(){
 		if(form.fname.value==""){
 			alert ( "Please enter your first name." );
        	form.fname.focus();
        	return false;
 		}
 		if(form.lname.value==""){
 			alert ( "Please enter your last name." );
        	form.lname.focus();
        	return false;
 		}
 		if(form.ad1.value==""){
 			alert ( "Please enter your address." );
        	form.ad1.focus();
        	return false;
 		}
 		if(form.town.value==""){
 			alert ( "Please enter your town." );
        	form.town.focus();
        	return false;
 		}
 		if(form.state.value==""){
 			alert ( "Please enter your state." );
        	form.state.focus();
        	return false;
 		}
 		if(form.pin.value==""){
 			alert ( "Please enter your Pincode." );
        	form.pin.focus();
        	return false;
 		}
 		if(form.phno.value==""){
 			alert ( "Please enter your phone number." );
        	form.phno.focus();
        	return false;
 		}
 		re = /[a-z]/;
   	    if(re.test(form.pin.value)) {
   	      alert("Error: No alphabet allowed in Pincode");
   	      form.phno.focus();
   	      return false;
   	    }
   	    re = /[A-Z]/;
   	    if(re.test(form.pin.value)) {
   	      alert("Error: No alphabet allowed in Pincode");
   	      form.phno.focus();
   	      return false;
   	    }
   	 	if(form.phno.value.length != 6) {
    	    alert("Error: Pincode should be 6 digits");
    	    form.phno.focus();
    	    return false;
     	}
 		re = /[a-z]/;
   	    if(re.test(form.phno.value)) {
   	      alert("Error: No alphabet allowed in phone number");
   	      form.phno.focus();
   	      return false;
   	    }
   	    re = /[A-Z]/;
   	    if(re.test(form.phno.value)) {
   	      alert("Error: No alphabet allowed in phone number");
   	      form.phno.focus();
   	      return false;
   	    }
   	 	if(form.phno.value.length != 10) {
    	    alert("Error: Phone number should be 10 digits");
    	    form.phno.focus();
    	    return false;
     	}
   	 	
 		alert("Order Placed Successfully");
 		return true;
 		
 	}
 </script> 
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	String username = session.getAttribute("username").toString();
	if(username==null){
		response.sendRedirect("register&login.jsp");
	}
	%> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STORY</title>
    <style type="text/css">
        .header .header-2 .menu{
            text-align: center;
        }
     .header .header-2 .menu ul li
	{
		display:inline-flex;
        position: relative;
		width: 120px;
        margin: 5px;
        padding: 7px;
        font-size: 15px;
        color: #fff;
		
	}
    .header .header-2 .menu ul li a{
        color: #fff;
        text-decoration: none;
    }
	.header .header-2 .menu ul li ul
	{
		display:none;
	}
	.header .header-2 .menu ul li:hover
	{
		font-weight:bold;
		cursor:point;
	}
	.header .header-2 .menu ul li:hover ul
	{
		display: block;
        position: absolute;
        background:var(--green) ;
        margin-top: 10px;
        
	}
    .header .header-2 .menu ul li:hover ul{
        display:block;
        margin: 10px;
    }
    .header .header-2 .menu ul li:hover ul li{
        width: 150px;
        padding: 10px;
        border-bottom: 1px dotted #fff;
        border-radius: 0;
        text-align: left;
    }
    .header .header-2 .menu ul li:hover ul li:last-child{
        border-bottom: none;
    }

    .header .header-2 .menu ul li:hover ul li a:hover{
        color: aqua;
        font-weight: bold;
    }
	input[type=text]{
		background: #eee;
		text-align:center;
		width:100%;
		font-size: 2rem;
   	    color:var(--black);
   	    font-weight:bold;
   	    overflow: scroll;
	}
    </style>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/story.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <div class="header-1">

        <a href="#" class="logo"> <i class="fas fa-book"></i> GitoBitan </a>

        <form action="" class="search-form">
            <input type="search" name="" placeholder="search here..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>

        <div class="icons">
            <div id="search-btn" class="fas fa-search"></div>
                <a href="#" class="fas fa-heart"></a>
                <a href="cartview.jsp" class="fas fa-shopping-cart"></a>
                <div id="login-btn" class="fas fas fa-user"></div>
                <div id="login-btn1" class="fas fa-sign-out"></div>
        </div>

    </div>

    <div class="header-2">
        <div class="text"><p>Welcome <%--  <%=username %>--%></p></div>
        <div class="menu">
            
                <ul>
                    <li><a href="#home">home</a></li> 
                     <li><a href="#">Categories</a>
                        <ul>
                            <li><a href="story.jsp">Story</a></li>
                            <li><a href="computer.jsp">Computer</a></li>
                            <li><a href="bio.jsp">Autobiography</a></li>
                            <li><a href="quiz.jsp">Quiz</a></li>
                            <li><a href="home.jsp">All</a></li>
                        </ul>
                    </li>
                     <li><a href="#featured">featured</a></li>
                     <li><a href="#s_footer">about</a></li>
                     <li><a href="#Order">Order</a></li>
                 </ul>
            
        </div>
    </div>

</header>

<!-- header section ends -->

<!-- bottom navbar  -->

<nav class="bottom-navbar1">
    <a href="#home" class="fas fa-home"></a>
    <a href="#featured" class="fas fa-list"></a>
    <a href="#arrivals" class="fas fa-tags"></a>
    <a href="#s_footer" class="fas fa-tags"></a>
    
</nav>

<!-- login form  -->

<div class="login-form-container">

    <div id="close-login-btn" class="fas fa-times"></div>

    <form action="" onsubmit="return valid()">
        <h3>Update Your password</h3>
        <span>Password</span>
        <input type="password" name="" class="box" placeholder="enter your password" id="password">
        <span>Confirm Password</span>
        <input type="password" name="" class="box" placeholder="confirm password" id="c_password">
        <div class="checkbox">
            <input type="checkbox" name="" id="remember-me">
            <label for="remember-me"> remember me</label>
        </div>
        <input type="submit" value="Update" class="btn">
        
    </form>

</div>
<div class="logout-form-container">

    <div id="close-logout-btn" class="fas fa-times"></div>

    <form action="Logout.jsp">
        <h1> you want to Logout</h1>
        <span>Username:<%--  <%=username %> --%></span>
        <br><br>
        <input type="submit" value="LOGOUT" class="btn">
        
    </form>

</div>

<!--pic popup-->

<div class="book1-container">

    <div id="close-book1-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image2/fbook4.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:350 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>

<div class="book2-container">

    <div id="close-book2-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image2/fbook6.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:500 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>

<div class="book3-container">

    <div id="close-book3-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image2/fbook8.jpeg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:500 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="row">

        <div class="content">
            <h1>Lets buy Some book</h1>
            <br><br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam deserunt nostrum accusamus. Nam alias
                sit necessitatibus, aliquid ex minima at!</p>
            <a href="#" class="btn">Enjoy yourself</a>
        </div>

        <div class="swiper books-slider">
            <div class="swiper-wrapper">
                <a href="#" class="swiper-slide"><img src="../image2/fbook4.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image2/fbook6.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image2/fbook8.jpeg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image2/fbook13.jpg" alt=""></a>
            </div>
            <img src="image1/stand.png" class="stand" alt="">
        </div>

    </div>

</section>

<!-- home section ense  -->

<!-- icons section starts  -->

<section class="icons-container">

    <div class="icons">
        <i class="fas fa-shipping-fast"></i>
        <div class="content">
            <h3>free shipping</h3>
            <p>order over $100</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-lock"></i>
        <div class="content">
            <h3>secure payment</h3>
            <p>100 secure payment</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-redo-alt"></i>
        <div class="content">
            <h3>easy returns</h3>
            <p>10 days returns</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-headset"></i>
        <div class="content">
            <h3>24/7 support</h3>
            <p>call us anytime</p>
        </div>
    </div>

</section>

<!-- icons section ends -->

<!-- featured section starts  -->

<section class="featured" id="featured">

    <h1 class="heading"> <span></span> </h1>

    <div class="swiper featured-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a  href= "#" id="eye-button1"  class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image2/fbook4.jpg" alt="">
                </div>
                <div class="content">
                	<input type="text" value="FELUDA SAMAGRA">
                    <div class="price">1750 rs <span>2000</span></div>
                    <a href="cart.jsp?bn=4" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=4" class="btn">Buy now</a>
                </div>
                
            </div>
           

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" id="eye-button2" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image2/fbook6.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="BHAGAVAD GITA">
                    <div class="price">500 rs <span>850</span></div>
                    <a href="cart.jsp?bn=6" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=6" class="btn">Buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" id="hello1" class="fas fa-search"></a>
                    <a href="#" id="eye-button3" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image2/fbook8.jpeg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="GOPAL BHAR">
                    <div class="price">120 rs <span>200</span></div>
                    <a href="cart.jsp?bn=8" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=8" class="btn">buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    
                    <a href="#" id="eye-button4" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image2/fbook13.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="NIGHT OF TERROR">
                    <div class="price">700 rs <span>1400</span></div>
                    <a href="cart.jsp?bn=11" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=11" class="btn">buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#"  id="eye-button5" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image2/frbook1.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="THAKUMAR JHULI">
                    <div class="price">250 rs <span>300</span></div>
                    <a href="cart.jsp?bn=13" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=13" class="btn">buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#"  id="eye-button6" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image2/frbook2.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="BHOOTNATH ER DAIRY">
                    <div class="price">500 rs <span>850</span></div>
                    <a href="cart.jsp?bn=12" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=12" class="btn">buy now</a>
                </div>
            </div>

            
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<!-- featured section ends -->

<!-- newsletter section starts -->



<!-- newsletter section ends -->

<!-- arrivals section starts  -->



<!-- arrivals section ends -->

<!-- deal section starts  -->

<section class="deal">

    <div class="content">
        <h3>deal of the day</h3>
        <h1>upto 50% off</h1>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde perspiciatis in atque dolore tempora quaerat at fuga dolorum natus velit.</p>
        
    </div>

    <div class="image">
        <img src="image1/deal-img.jpg" alt="">
    </div>

</section>



<footer class="site-footer" id = "s_footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h6>About</h6>
          <p class="text-justify">Online book selling app is easy to use for buy any kind of book from any where for everyone

          </p>
        </div>
  
        <div class="col-xs-6 col-md-3">
          <h6>Categories</h6>
          <ul class="footer-links">
            <li><a href="#">Learning</a></li>
          </ul>
        </div>
  
        <div class="col-xs-6 col-md-3">
          <h6>Quick Links</h6>
          <ul class="footer-links">
            <li><a href="#">Home</a></li>
            <li><a href="#s_footer">About Us</a></li>
            <li><a href="#s_get_started">Get Started</a></li>
          </ul>
        </div>
      </div>
      <hr>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-sm-6 col-xs-12">
          <p class="copyright-text">Develpoment & Design: my Team Samay sarkar,Sujoy sen,Sandipan Majumdar,Baisakhi Boral and the help of
            <a href="#">Internet</a>.
          </p>
        </div>
  
        <div class="col-md-4 col-sm-6 col-xs-12">
          <ul class="social-icons">
            <li><a class="facebook" href="#"><i class="fa-brands fa-facebook-f"></i></a></li>
            <li><a class="github" href="#"><i class="fa-brands fa-github"></i></a></li>
            <li><a class="linkedin" href="#"><i class="fa-brands fa-linkedin-in"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- ==== GSAP CDN ==== -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
    <!-- ==== SCRIPT.JS ==== -->

<!-- footer section ends -->

<!-- loader  -->

<!--
<div class="loader-container">
    <img src="image1/loader-img.gif" alt="">
</div> 

-->














<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../js/dash.js"></script>
<script src="../js/story.js"></script>

</body>
</html>
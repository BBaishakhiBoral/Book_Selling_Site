<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	String username = session.getAttribute("username").toString();
	if(username==null){
		response.sendRedirect("register&login.jsp");
	}
	%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
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
	.text p{
		font-size: 40px;
    	color: #ffff;
    	
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
    <link rel="stylesheet" href="../css/home.css">

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
            	<h4 id="msg" style="color: var(--green); margin-left: 20px;">${msg}</h4>
                <a href="#" class="fas fa-heart"></a>
                <a href="cartview.jsp" class="fas fa-shopping-cart"></a>
               
                <div id="login-btn" class="fas fas fa-user"></div>
                <div id="login-btn1" class="fas fa-sign-out"></div>
        </div>

    </div>

    <div class="header-2">
        <div class="text"><p>Welcome <%=username %></p></div>
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
                     <li><a href="#arrivals">arrivals</a></li>
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

    <form action="updatedb.jsp" onsubmit="return valid()">
        <h3>Update Your password</h3>
        <span>Current Password</span>
        <input type="password" name="opw" class="box" placeholder="enter your password" id="password">
        <span>New Password</span>
        <input type="password" name="npw" class="box" placeholder="enter new password" id="c_password">
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
        <span>Username:<%=username %></span>
        <br><br>
        <input type="submit" value="LOGOUT" class="btn">
        
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
                <a href="#" class="swiper-slide"><img src="../image1/fbook1.webp" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1/fbook2.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1/fbook3.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1/fbook4.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1/fbook5.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1/fbook6.jpg" alt=""></a>
            </div>
            <img src="../image1/stand.png" class="stand" alt="">
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
            <p>call us any time</p>
        </div>
    </div>

</section>

<!-- icons section ends -->

<!-- featured section starts  -->

<section class="featured" id="featured">
<input type="hidden" value="Added to Cart" id="ad">
    <h1 class="heading"> <span>Featured</span> </h1>
    <div class="swiper featured-slider">

        <div class="swiper-wrapper">
			
            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a  href= "#" id="eye-button1"  class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook1.webp" alt="">
                </div>
                <div class="content">
					<input type="text" value="LET US C" id="b1">
                    <div class="price">200 rs <span>300</span></div>
                    <a href="cart.jsp?bn=1" class="btn" >add to cart</a>
                    
                    <a href="order2.jsp?bn=1" class="btn">Buy now</a>
                </div>
                
            </div>
           

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button2" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook2.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="LIFE'S AMAZING SECRETS" id="b2">
                    <div class="price">150 rs <span>200</span></div>
                    <a href="cart.jsp?bn=2" class="btn">add to cart</a>
                    
                    <a href="order2.jsp?bn=2" class="btn">Buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button3" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook3.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="RICH DAD POOR DAD">
                    <div class="price">500 rs <span>700</span></div>
                    <a href="cart.jsp?bn=3" class="btn">add to cart</a>
                    <a href="order2.jsp?bn=3" class="btn">Buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button4" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook4.jpg" alt="">
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
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#"  id="eye-button5" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook5.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="JAVA THE COMPLETE REFERENCE">
                    <div class="price">370 rs <span>550</span></div>
                    <a href="cart.jsp?bn=5" class="btn" >add to cart</a>
                    <a href="order2.jsp?bn=5" class="btn">Buy now</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#"  id="eye-button6" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook6.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="BHAGAVAD GITA">
                    <div class="price">500 rs <span>850</span></div>
                    <a href="cart.jsp?bn=6" class="btn" >add to cart</a>
                    <a href="order2.jsp?bn=6" class="btn">Buy now</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button7" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1/fbook7.jpg" alt="">
                </div>
                <div class="content">
                    <input type="text" value="FUNDAMENTALS OF DATABASE SYSTEMS">
                    <div class="price">550 rs <span>720</span></div>
                    <a href="cart.jsp?bn=7" class="btn" >add to cart</a>
                    <a href="order2.jsp?bn=7" class="btn">Buy now</a>
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

<section class="arrivals" id="arrivals">

    <h1 class="heading"> <span>new arrivals</span> </h1>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook1.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">75 rs<span>120</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook2.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">650 rs <span>850</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook3.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">520 rs <span>780</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook4.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">220 rs <span>340</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook5.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">360 rs <span>480</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

        </div>

    </div>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook6.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">330 rs <span>450</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook7.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">455 rs <span>620</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook8.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">256 rs <span>440</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook9.webp" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">1000 rs <span>1350</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../image1/frbook10.jpg" alt="">
                </div>
                <div class="content">
                    <h3>new arrivals</h3>
                    <div class="price">510 rs <span>840</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

        </div>

    </div>

</section>

<!-- arrivals section ends -->

<!-- deal section starts  -->

<section class="deal">

    <div class="content">
        <h3>deal of the day</h3>
        <h1>upto 50% off</h1>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde perspiciatis in atque dolore tempora quaerat at fuga dolorum natus velit.</p>
        
    </div>

    <div class="image">
        <img src="../image1/deal-img.jpg" alt="">
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
    <img src="../image1/loader-img.gif" alt="">
</div> 

-->















<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript">
    setTimeout("time()",3000);
    
    function time(){
    	document.getElementById('msg').innerHTML='';
    }
 </script>
<!-- custom js file link  -->
<script src="../js/dash.js"></script>
<script src="../js/final.js"></script>

</body>
</html>
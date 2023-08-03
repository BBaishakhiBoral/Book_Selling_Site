<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Responsive Online Book Store Website Design Tutorial</title>

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
    <link rel="stylesheet" href="../css/final1.css">

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
                <a href="#" class="fas fa-shopping-cart"></a>
                <div id="login-btn" class="fas fas fa-user"></div>
                <div id="login-btn1" class="fas fa-sign-out"></div>
        </div>

    </div>

    <div class="header-2">
   		 <img class="imageicon" src="../images/person1.png"> 
        <div class="text">
       		<p>Welcome Sujoy</p>
	       <%--<% String username = session.getAttribute("username").toString(); Welcome <%=username%> --%>
        </div>
        <nav class="navbar1">
            <a href="#home">home</a>
            <a href="#featured">featured</a>
            <a href="#arrivals">arrivals</a>
            <a href="#about">about</a>
            <a href="#Order">Order</a>
            
        </nav>
    </div>

</header>

<!-- header section ends -->

<!-- bottom navbar  -->

<nav class="bottom-navbar1">
    <a href="#home" class="fas fa-home"></a>
    <a href="#featured" class="fas fa-list"></a>
    <a href="#arrivals" class="fas fa-tags"></a>
    <a href="#about" class="fas fa-tags"></a>
    
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

    <form action="">
        <h1> you want to Logout</h1>
        <span>Username:</span>
        <br><br>
        <input type="submit" value="LOGOUT" class="btn">
        
    </form>

</div>

<div class="book1-container">

    <div id="close-book1-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook1.webp" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:200 RS</span>
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
            <img src="../image1//fbook2.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:150 RS</span>
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
            <img src="../image1//fbook3.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:500 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>
<div class="book4-container">

    <div id="close-book4-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook4.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:350 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>
<div class="book5-container">

    <div id="close-book5-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook5.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:370 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>
<div class="book6-container">

    <div id="close-book6-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook6.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:500 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>
<div class="book7-container">

    <div id="close-book7-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook7.jpg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:700 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>
<div class="book8-container">

    <div id="close-book8-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook8.jpeg"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:Harishchandra chattopadhay</span>
        <span>Price:120 RS</span>
        <br><br>
        <input type="submit" value="BUY NOW" class="btn">
        
    </form>

</div>

<div class="book9-container">

    <div id="close-book9-btn" class="fas fa-times"></div>

    <form action="">
        <center><h1> Book Information</h1></center>
        <br><br>
        <div class="image">
            <img src="../image1//fbook9.webp"  width="300px" height="400px" alt="">
        </div>
        <span>Author name:</span>
        <span>Price:120 RS</span>
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
                <a href="#" class="swiper-slide"><img src="../image1//fbook1.webp" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1//fbook2.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1//fbook3.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1//fbook4.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1//fbook5.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="../image1//fbook6.jpg" alt=""></a>
            </div>
            <img src="../image1//stand.png" class="stand" alt="">
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

    <h1 class="heading"> <span>Best Selling</span> </h1>

    <div class="swiper featured-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a  href= "#" id="eye-button1"  class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook1.webp" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">200 rs <span>300</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
                
            </div>
           

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button2" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook2.jpg" alt="">
                </div>
                <div class="content">
                    <h3></h3>
                    <div class="price">150 rs <span>200</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button3" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook3.jpg" alt="">
                </div>
                <div class="content">
                    <h3></h3>
                    <div class="price">500 rs <span>700</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button4" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook4.jpg" alt="">
                </div>
                <div class="content">
                    <h3></h3>
                    <div class="price">350 rs <span>500</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#"  id="eye-button5" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook5.jpg" alt="">
                </div>
                <div class="content">
                    <h3></h3>
                    <div class="price">370 rs <span>550</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#"  id="eye-button6" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook6.jpg" alt="">
                </div>
                <div class="content">
                    <h3></h3>
                    <div class="price">500 rs <span>850</span></div>
                    <a href="#" class="btn">add to cart</a>
                   
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button7" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook7.jpg" alt="">
                </div>
                <div class="content">
                    <h3></h3>
                    <div class="price">550 rs <span>720</span></div>
                    <a href="#" class="btn">add to cart</a>
            
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button8" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook8.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">120 rs <span>200</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#"  id="eye-button9" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook9.webp" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">400 rs <span>520</span></div>
                    <a href="#" class="btn">add to cart</a>
                    
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button10" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook10.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">650 rs <span>900</span></div>
                    <a href="#" class="btn">add to cart</a>
                  
                </div>
            </div>
            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button11" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook11.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">320 rs <span>450</span></div>
                    <a href="#"  class="btn">add to cart</a>
                    
                </div>
            </div>
            
            
            
            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" id="eye-button15" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../image1//fbook15.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">430 rs <span>750</span></div>
                    <a href="#" class="btn">add to cart</a>
                   
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
                    <img src="../image1//frbook1.jpg" alt="">
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
                    <img src="../image1//frbook2.jpg" alt="">
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
                    <img src="../image1//frbook3.jpg" alt="">
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
                    <img src="../image1//frbook4.jpg" alt="">
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
                    <img src="../image1//frbook5.jpg" alt="">
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
                    <img src="../image1//frbook6.jpg" alt="">
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
                    <img src="../image1//frbook7.jpg" alt="">
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
                    <img src="../image1//frbook8.jpg" alt="">
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
                    <img src="../image1//frbook9.webp" alt="">
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
                    <img src="../image1//frbook10.jpg" alt="">
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
        <img src="../image1//deal-img.jpg" alt="">
    </div>

</section>


<!-- deal section ends -->

<!-- reviews section starts  -->

<!-- <section class="reviews" id="reviews">

    <h1 class="heading"> <span>client's reviews</span> </h1>

    <div class="swiper reviews-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="../image1//pic-1.png" alt="">
                <h3>john deo</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique facere hic.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="../image1//pic-2.png" alt="">
                <h3>john deo</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique facere hic.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="../image1//pic-3.png" alt="">
                <h3>john deo</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique facere hic.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
            <div class="swiper-slide box">
                <img src="../image1//pic-4.png" alt="">
                <h3>john deo</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique facere hic.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="../image1//pic-5.png" alt="">
                <h3>john deo</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique facere hic.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="../image1//pic-6.png" alt="">
                <h3>john deo</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique facere hic.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>
    
</section> -->

<!-- reviews section ends -->

<!-- blogs section starts  -->

<!--<section class="blogs" id="blogs">

    <h1 class="heading"> <span>our blogs</span> </h1>

    <div class="swiper blogs-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <div class="image">
                    <img src="../image1//blog-1.jpg" alt="">
                </div>
                <div class="content">
                    <h3>blog title goes here</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="image">
                    <img src="../image1//blog-2.jpg" alt="">
                </div>
                <div class="content">
                    <h3>blog title goes here</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="image">
                    <img src="../image1//blog-3.jpg" alt="">
                </div>
                <div class="content">
                    <h3>blog title goes here</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="image">
                    <img src="image/1blog-4.jpg" alt="">
                </div>
                <div class="content">
                    <h3>blog title goes here</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="image">
                    <img src="../image1//blog-5.jpg" alt="">
                </div>
                <div class="content">
                    <h3>blog title goes here</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

        </div>

    </div>

</section> -->

<!-- blogs section ends -->

<!-- footer section starts  -->

<!--<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>our locations</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> france </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> africa </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> featured </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> arrivals </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> reviews </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> blogs </a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> account info </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> ordered items </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> privacy policy </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> payment method </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> our serivces </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#"> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </a>
            <img src="image/worldmap.png" class="map" alt="">
        </div>
        
    </div>

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="credit"> created by <span>mr. web designer</span> | all rights reserved! </div>

</section> -->
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


<div class="loader-container">
    <img src="../image1//loader-img.gif" alt="">
</div> 















<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../js/dash.js"></script>
<script src="..js/final.js"></script>

</body>
</html>
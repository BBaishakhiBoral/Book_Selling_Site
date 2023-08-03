<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="google-site-verification" content="NuzXQk4FzoBs7aB6OMhJUH8V0O5GnLQVNK8_56pDrnk" />
    <title>Responsive Landing Page using HTML, CSS & Javascript</title>

    <!-- ==== STYLE.CSS ==== -->
    <link rel="stylesheet" href="../css/style_5.css" />

    <!-- ====  REMIXICON CDN ==== -->
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />

    <!-- ==== ANIMATE ON SCROLL CSS CDN  ==== -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body style="background-color:#80e3b5;">
    <!-- ==== HEADER ==== -->
    <header class="container header">
      <!-- ==== NAVBAR ==== -->
      <nav class="nav">
        <div class="logo">
            <a href="#" class="logo"> <i class="fas fa-book"></i> GitoBitan </a>
          <h2> Online Book Selling Site</h2>
        </div>

        <div class="nav_menu" id="nav_menu">
          <button class="close_btn" id="close_btn">
            <i class="ri-close-fill"></i>
          </button>

          <ul class="nav_menu_list">
            <li class="nav_menu_item">
              <a href="/" class="nav_menu_link">Home</a>
            </li>
            <li class="nav_menu_item">
              <a href="#s_footer" class="nav_menu_link">About</a>
            </li>
            <li class="nav_menu_item">
              <a href="#s_get_started" class="nav_menu_link">Get Started</a>
            </li>
            <!-- <li class="nav_menu_item">
              <a href="#" class="nav_menu_link">Option 4</a>
            </li> -->
          </ul>
        </div>

        <button class="toggle_btn" id="toggle_btn">
          <i class="ri-menu-line"></i>
        </button>
      </nav>
    </header>

    <section class="wrapper">
      <div class="container">
        <div class="grid-cols-2">
          <div class="grid-item-1">
            <h1 class="main-heading">
                There is No Friend As <span>Loyal</span> As a <span>Book</span>
              <br />
              
            </h1>
            <p class="info-text">
              A Online book selling website for the students of schools, colleges and other learning institutes.
            </p>

            <div class="btn_wrapper">
              <button class="btn btn-custom view_more_btn">
                See details<i class="ri-arrow-right-line"></i>
              </button>

              <button class="btn btn-custom documentation_btn">
                Get started<i class="ri-arrow-right-line"></i>
              </button>
            </div>
          </div>
          <div class="grid-item-2">
            <div class="team_img_wrapper">
              <img src="../images/student.png" alt="logo-img" />
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="wrapper">
      <div class="container" data-aos="fade-right" data-aos-duration="1000">
        <div class="grid-cols-3" id = "content_row_1">
          <div class="grid-col-item">
            <div class="icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                />
              </svg>
            </div>
            <div class="featured_info">
              <span>Easy to use </span>
              <p>
                Looking for a book that will inspire you or from where you can acquire some knowledge? Look no further than this site! This website is easy to use and has a variety of books that will make you see life in a new light.
              </p>
            </div>
          </div>
          <div class="grid-col-item">
            <div class="icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M17 14v6m-3-3h6M6 10h2a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2zm10 0h2a2 2 0 002-2V6a2 2 0 00-2-2h-2a2 2 0 00-2 2v2a2 2 0 002 2zM6 20h2a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2z"
                />
              </svg>
            </div>
            <div class="featured_info">
              <span>Standard modern design</span>
              <p>
                A standard and modern design makes this application user friendly and gives a better user experience for users who are experienced with tech as well as for those who are not very experienced with tech. 
              </p>
            </div>
          </div>

          <div class="grid-col-item">
            <div class="icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"
                />
              </svg>
            </div>
            <div class="featured_info">
              <span>Great Support</span>
              <p>
                This application provides 24/7 support for any techincal difficulties or feature related issues and maintanance. 
              </p>
            </div>
          </div>
        </div>

        

      </div>


      <div class="container content_2_wrapper" data-aos="fade-left" data-aos-duration="1000">
        <div class="content_grid_row_2">
          <div class="content_grid_row_2_item grid_row_2_custom">
            <div class="icon">
              <svg xmlns="http://www.w3.org/2000/svg" stroke="currentColor" fill="none" viewBox="0 0 24 24" width="36" height="36">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="1" 
                  d="M2 6H0v5h.01L0 20c0 1.1.9 2 2 2h18v-2H2V6zm5 9h14l-3.5-4.5-2.5 3.01L11.5 9zM22 4h-8l-2-2H6c-1.1 0-1.99.9-1.99 2L4 16c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 12H6V4h5.17l1.41 1.41.59.59H22v10z"
                />

              </svg>
            </div>
            <div class="featured_info">
              <span>Features</span>
              <p>
               <b>use anywhere: </b> This application allows the user to use from anywhere from any device be it a mobile or a desktop or in a tablet. .
              </p>
              <p>
                <b>Standard modern design: </b>A standard and modern design makes this application user friendly and gives a better user experience for users who are experienced with tech as well as for those who are not very experienced with tech
              </p>
              <p>
                <b>Resonable price: </b>Our books are priced reasonably and make for great weekend reads. Whether you're into thrillers or romance, we've got you covered..
              </p>
              <p>
                <b>Secure and Convenient Payment System:</b> A convenient and secure system payes the way forward to becoming the best eBook store. Facilitating customers to make payments using various modes like credit/debit card payments, smart cards, e-cash, mobile wallets, QR payments, and many more can help customers buy a subscription in just a few clicks.</b>
              </p>
              
            </div>            
          </div>
          <!-- <div class="content_grid_row_2_item">
            <div class="icon">
              <svg xmlns="http://www.w3.org/2000/svg" stroke="currentColor" fill="none" viewBox="0 0 24 24" width="36" height="36">
                <path 
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="1" 
                  d="M12.414 5H21a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h7.414l2 2zM4 5v14h16V7h-8.414l-2-2H4zm4 13a4 4 0 1 1 8 0H8zm4-5a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5z"
                />
              </svg>
            </div>
            <div class="featured_info">
              <span>Get started as a Teacher</span>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut
                ipsum esse corrupti. Quo, labore debitis!
              </p>
            </div>
          </div> -->
        </div>
      </div>



      <div class="container content_2_wrapper" data-aos="fade-right" data-aos-duration="1000" id = "s_get_started">
        <div class="content_grid_row_2">
          <div class="content_grid_row_2_item">
            <div class="card card-image"
              style="background-image: url(/landing_page/img/get_s_t.webp); border-radius: 5px; border: transparent;">
            
              <!-- Content -->
              <div class="text-white text-center d-flex align-items-center py-5 px-4" style="background-color: rgba(0,0,0,0.5); border-radius: 5px;">
                <div>
                  <h3 class="card-title pt-2"><strong><i class="fas fa-chart-pie"></i> Get started as a user</strong></h3>
                  <p>To get started please register into our platform or login if you have already created an account at this platform. </p>
                  <a class="btn btn-custom" href = "register&login.jsp" style="color: #fff !important; background-color: rgba(0,0,0,0.7); padding: 1 2rem 1 2rem; border-radius: 2.5rem;"><i class="fas fa-clone left"></i> Get started</a>
                </div>
                
              </div>
              
              
            </div>
            <!--hello-->
            
            
            <!-- Card -->



          </div>
          <div class="content_grid_row_2_item">
            <div class="card card-image"
            style="background-image: url(/landing_page/img/get_s_s.webp); background-position:center; background-repeat: no-repeat; background-attachment: fixed; border-radius: 5px; border: transparent;">
          
            <!-- Content -->
            <div class="text-white text-center d-flex align-items-center py-5 px-4" style="background-color: rgba(0,0,0,0.5); border-radius: 5px;">
              <div>
                <h3 class="card-title pt-2"><strong><i class="fa-solid fa-chart-simple"></i> Get started as a admin</strong></h3>
                <p>To get started please register into our platform or login if you have already created an account at this platform. </p>
                <a class="btn btn-custom" href = "register&login.jsp" style="color: #fff !important; background-color: rgba(0,0,0,0.7); padding: 1 2rem 1 2rem; border-radius: 2.5rem;"><i class="fas fa-clone left"></i> Get started</a>
              </div>
            </div>
          
          </div>
          </div>
        </div>
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
            <p class="copyright-text">Develpoment & Design: Samay Sarkar, Sujoy Sen, Sandipan Majumdar, Baisakhi boral
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

    

    <!-- ==== ANIMATE ON SCROLL JS CDN -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- ==== GSAP CDN ==== -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
    <!-- ==== SCRIPT.JS ==== -->
    <script src="../js/script.js" defer></script>
  </body>
</html>
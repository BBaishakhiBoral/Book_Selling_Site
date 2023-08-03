<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/newstyle.css">
    <title>Login Page</title>
</head>
<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
                <form name="forms" action="login_db.jsp" class="sign-in-form" method="post" onsubmit="return validLogin();">
                    <h2 class="title">Sign in</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Username" name="username" value="" required>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" name="password" value="" required>
                        
                    </div>
                    <input type="submit" value="Login" class="btn_solid">
                    <span id="messages" style="color:red;"></span>
                    <p class="social-text">Or Sign With Social Platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </form>
                <form name="form" action="sign_up_db.jsp" class="sign-up-form" method="post" onsubmit="return validRegister();">
                    <h2 class="title">Sign Up</h2>
                    
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Username" name="username" value="" id="user">
                    </div>
                    
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="email" placeholder="Email" name="email" value="" id="email">
                    </div>
                    
                    <div class="input-field">
                        <i class="fas fa-phone"></i>
                        <input type="tel" placeholder="Phone Number" name="phno" value="" id="phno">
                    </div>
                    
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" name="password"  id="pw" value="">
             			<i class="fa-solid fa-eye" aria-hidden="true" id="eye1" onclick="toggle()"></i>
             			<i class="fa-solid fa-eye-slash" aria-hidden="true" id="eye2" onclick="toggle()"></i>
             		</div>
             		
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Confirm-Password" name="confirm_password"  id="cpw" value="">
                    </div>
                    <input type="submit" value="Sign Up" class="btn_solid">
                     <span id="message" style="color:red;"></span>
                    <p class="social-text">Or Sign Up With Social Platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                    
                </form>
            </div>
        </div>
        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h1>New here</h1>
                    <p>If you are new here please Sign Up and enjoy yourself</p>
                    <button class="btn_solid" id="sign-up-btn">Sign up</button>
                </div>
                <img src="../images/undraw_book_lover_re_rwjy.svg " class="image" alt="">
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h1>One of us?</h1>
                    <p>Are you already sign in?. if you are so Sign in and enjoy your self</p>
                    <button class="btn_solid" id="sign-in-btn">Sign In</button>
                </div>
                <img src="../images/undraw_on_the_office_re_cxds.svg " class="image" alt="">
            </div>
        </div>
    </div>
    <script src="../js/move.js"></script>
    <script src="../js/login.js"></script>	
    <script src="../js/register.js"></script>
    <script>
    function toggle(){
    	var x=document.getElementById("pw");
    	var y=document.getElementById("eye1");
    	var z=document.getElementById("eye2");
    	if(x.type === "password"){
    		x.type="text";
    		y.style.display="block";
    		z.style.display="none";
    	}
    	else{
    		x.type="password";
    		y.style.display="none";
    		z.style.display="block";
    	}
    }
    </script>
 </body>  
</html>
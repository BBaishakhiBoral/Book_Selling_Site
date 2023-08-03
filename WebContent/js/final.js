searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
  searchForm.classList.toggle('active');
}

let loginForm = document.querySelector('.login-form-container');

document.querySelector('#login-btn').onclick = () =>{
  loginForm.classList.toggle('active');
}

document.querySelector('#close-login-btn').onclick = () =>{
  loginForm.classList.remove('active');
}

let loginForm1 = document.querySelector('.logout-form-container');

document.querySelector('#login-btn1').onclick = () =>{
  loginForm1.classList.toggle('active');
}

document.querySelector('#close-logout-btn').onclick = () =>{
  loginForm1.classList.remove('active');
}
let book1 = document.querySelector('.book1-container');

document.querySelector('#eye-button1').onclick = () =>{
  book1.classList.toggle('active');
}

document.querySelector('#close-book1-btn').onclick = () =>{
  book1.classList.remove('active');
}
let book2 = document.querySelector('.book2-container');

document.querySelector('#eye-button2').onclick = () =>{
  book2.classList.toggle('active');
}

document.querySelector('#close-book2-btn').onclick = () =>{
  book2.classList.remove('active');
}
let book3 = document.querySelector('.book3-container');

document.querySelector('#eye-button3').onclick = () =>{
  book3.classList.toggle('active');
}

document.querySelector('#close-book3-btn').onclick = () =>{
  book3.classList.remove('active');
}
let book4 = document.querySelector('.book4-container');

document.querySelector('#eye-button4').onclick = () =>{
  book4.classList.toggle('active');
}

document.querySelector('#close-book4-btn').onclick = () =>{
  book4.classList.remove('active');
}

let book5 = document.querySelector('.book5-container');

document.querySelector('#eye-button5').onclick = () =>{
  book5.classList.toggle('active');
}

document.querySelector('#close-book5-btn').onclick = () =>{
  book5.classList.remove('active');
}
let book6 = document.querySelector('.book6-container');

document.querySelector('#eye-button6').onclick = () =>{
  book6.classList.toggle('active');
}

document.querySelector('#close-book6-btn').onclick = () =>{
  book6.classList.remove('active');
}
let book7 = document.querySelector('.book7-container');

document.querySelector('#eye-button7').onclick = () =>{
  book7.classList.toggle('active');
}

document.querySelector('#close-book7-btn').onclick = () =>{
  book7.classList.remove('active');
}
let book8 = document.querySelector('.book8-container');

document.querySelector('#eye-button8').onclick = () =>{
  book8.classList.toggle('active');
}

document.querySelector('#close-book8-btn').onclick = () =>{
  book8.classList.remove('active');
}
let book9 = document.querySelector('.book9-container');

document.querySelector('#eye-button9').onclick = () =>{
  book9.classList.toggle('active');
}

document.querySelector('#close-book9-btn').onclick = () =>{
  book9.classList.remove('active');
}

let book10 = document.querySelector('.book10-container');

document.querySelector('#eye-button10').onclick = () =>{
  book10.classList.toggle('active');
}

document.querySelector('#close-book10-btn').onclick = () =>{
  book10.classList.remove('active');
}

let book11 = document.querySelector('.book11-container');

document.querySelector('#eye-button11').onclick = () =>{
  book11.classList.toggle('active');
}

document.querySelector('#close-book11-btn').onclick = () =>{
  book11.classList.remove('active');
}
let book14 = document.querySelector('.book14-container');

document.querySelector('#eye-button14').onclick = () =>{
  book14.classList.toggle('active');
}

document.querySelector('#close-book14-btn').onclick = () =>{
  book14.classList.remove('active');
}


window.onscroll = () =>{

  searchForm.classList.remove('active');

  if(window.scrollY > 80){
    document.querySelector('.header .header-2').classList.add('active');
  }else{
    document.querySelector('.header .header-2').classList.remove('active');
  }

}

window.onload = () =>{

  if(window.scrollY > 80){
    document.querySelector('.header .header-2').classList.add('active');
  }else{
    document.querySelector('.header .header-2').classList.remove('active');
  }

  fadeOut();

}

/*function loader(){
  document.querySelector('.loader-container').classList.add('active');
}

function fadeOut(){
  setTimeout(loader, 4000);
}*/

var swiper = new Swiper(".books-slider", {
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".featured-slider", {
  spaceBetween: 10,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    450: {
      slidesPerView: 2,
    },
    768: {
      slidesPerView: 3,
    },
    1024: {
      slidesPerView: 4,
    },
  },
});

var swiper = new Swiper(".arrivals-slider", {
  spaceBetween: 10,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".reviews-slider", {
  spaceBetween: 10,
  grabCursor:true,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".blogs-slider", {
  spaceBetween: 10,
  grabCursor:true,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    
    1024: {
      slidesPerView: 3,
    },
  },
});

function valid(){
  const password = document.getElementById("password").value
  const c_password = document.getElementById("c_password").value
  var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
  if(document.getElementById("password").value=""){
    alert("Please Enter the Password");
    document.getElementById("password").focus();
    return false;
}
if(!(password.match(pass))){
  alert(" the password should be8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character");
  document.getElementById("password").focus();
  document.getElementById("password").value="";
  document.getElementById("c_password").value="";
  return false;
}
if(document.getElementById("c_password").value="" ){
  alert("Please Enter the new Password");
  document.getElementById("C_password").focus();
  return false;
}

if(!(c_password.match(pass))){
  alert("8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character");
  document.getElementById("c_password").focus();
  document.getElementById("c_password").value="";
  return false;
}

}
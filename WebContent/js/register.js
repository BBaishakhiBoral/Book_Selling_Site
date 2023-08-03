function validRegister(){
    	if (form.username.value == ""){
        	alert ( "Please enter your username." );
        	form.username.focus();
        	return false;
        }
    	if (form.email.value == ""){
	    	alert ( "Please enter your email." );
	    	form.email.focus();
	    	return false;
    	}
    	if (form.phno.value == ""){
    	alert ( "Please enter your phone number." );
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
    	if (form.password.value == ""){
    	alert ( "Please enter password." );
    	form.password.focus();
    	return false;
    	}
    	if (form.confirm_password.value == ""){
        	alert ( "Please enter confirm password." );
        	form.confirm_password.focus();
        	return false;
        }
    	if(form.password.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.password.focus();
        return false;
        }
    	re = /[0-9]/;
        if(!re.test(form.password.value)) {
          alert("Error: password must contain at least one number (0-9)!");
          form.password.focus();
          return false;
        }
        re = /[a-z]/;
        if(!re.test(form.password.value)) {
          alert("Error: password must contain at least one lowercase letter (a-z)!");
          form.password.focus();
          return false;
        }
        re = /[A-Z]/;
        if(!re.test(form.password.value)) {
          alert("Error: password must contain at least one uppercase letter (A-Z)!");
          form.password.focus();
          return false;
        }
        if(form.password.value!=form.confirm_password.value){
        	alert("Error: password and confirm password doesn't match!");
        	form.confirm_password.value="";
            form.confirm_password.focus();
            return false;
        }
    	alert ( "Successfully Registered" );
    	return true;
    	}